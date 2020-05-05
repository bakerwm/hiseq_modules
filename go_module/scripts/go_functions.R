

## Functions for go analysis


#' deseq2_go_analysis
#' 
#' @param x path to the csv file of DESeq2 output, genes in ENSEMBL by default
#' @param organism string, fly, mouse, human, ...
#' @param outdir string, directory to save all results
#' @param keytype string, default ENSEMBL, ... use keytypes\(org.Hs.eg.db\)
#' 
#' @import clusterProfiler
#' @import dplyr
#' @import ggplot2
#' 
#' @export
deseq2_go_analysis <- function(x, organism = "fly", outdir, 
                               keytype = "ENSEMBL") {
  
  # read data
  df <- readr::read_csv(x, col_types = readr::cols()) %>%
    dplyr::select(Gene, log2FoldChange, padj) %>%
    dplyr::mutate(sig = ifelse(padj < 0.05 & log2FoldChange >= 1, "up",
                               ifelse(padj < 0.05 & log2FoldChange <= -1, 
                                      "down", "not")))
  ## full-data
  geneList <- df$log2FoldChange
  names(geneList) <- df$Gene
  geneList <- sort(geneList, decreasing = TRUE)
  
  ##--------------------------------------------------------------------------##
  ## up
  subdir1 <- file.path(outdir, "gene_up")
  g_up <- df %>% dplyr::filter(sig == "up") %>% pull(Gene)
  go_analysis(g_up, organism, subdir1, keytype, x.data = geneList)
  
  ##--------------------------------------------------------------------------##
  ## downs
  subdir2 <- file.path(outdir, "gene_down")
  g_down <- df %>% dplyr::filter(sig == "down") %>% pull(Gene)
  go_analysis(g_down, organism, subdir2, keytype, x.data = geneList)
  
}





#' go_analysis
#' 
#' @param x vector, genes for GO analysis
#' @param organism string, fly, mouse, human, ...
#' @param outdir string, directory to save all results
#' @param keytype string, default ENSEMBL, ... use keytypes\(org.Hs.eg.db\)
#' @param x.data numeric, reverse sorted expression data, foldchange
#' 
#' @import clusterProfiler
#' @import dplyr
#' @import ggplot2
#' 
#' @export
go_analysis <- function(x, organism = "fly", outdir,
                        keytype = "ENSEMBL", x.data = NULL) {
  # prepare data
  k <- get_keytype(organism)
  orgdb <- k["orgdb"]
  keytype_go <- k["keytype_go"] # ENTREZID, REFSEQ, 
  keytype_kegg <- k["keytype_kegg"] # kegg, ncbi-proteinid
  organism_kegg <- k["organism"]
  
  # convert x data
  dx <- bitr(x, keytype, keytype_go, orgdb)
  x_new <- dx[, keytype_go]
  
  # convert all ids
  dt <- bitr(names(x.data), keytype, keytype_go, orgdb)
  dt$exp <- x.data[dt[, keytype]]
  
  # update x.data
  dt2 <- dplyr::select(dt, exp, keytype_go) %>% unique()
  geneList <- dt2$exp
  names(geneList) <- dt2$keytype_go
  
  ## run program  
  ## go-group
  tmp <- group_go(x_new, orgdb, outdir, keytype_go, top = 10)
  
  ## go-enrich
  tmp <- enrich_go(x_new, orgdb, outdir, keytype_go, 
                   pvalueCutoff = 0.99,  # 
                   qvalueCutoff = 0.99,  #
                   top = 10, 
                   method = "BH", 
                   semsim = TRUE,
                   gene.data = geneList)
  
  # ## kegg-enrich
  # tmp <- enrich_kegg(x_new, organism_kegg, outdir, keytype_kegg,
  #                    method = "BH",
  #                    pvalueCutoff = 0.99,
  #                    qvalueCutoff = 0.99,
  #                    gene.data = geneList)
  
}


#' get_keytype
#' 
#' @param x string, the name of organism, dme, fly ...
#' 
#' @export
get_keytype <- function(x) {
  df <- data.frame(
    name = c("fruitfly", "mouse", "human", "celegans"),
    organism = c("dme", "mmu", "hsa", "cel"),
    keytype_go = c("REFSEQ", "ENTREZID", "ENTREZID", "REFSEQ"),
    keytype_kegg = c("ncbi-proteinid", "kegg", "kegg", "ncbi-proteinid"),
    orgdb = c("org.Dm.eg.db", "org.Mm.eg.db", "org.Hs.eg.db", "org.Ce.eg.db"),
    stringsAsFactors = FALSE)
  
  # search all
  a <- apply(df, 2, function(i) grepl(x, i))
  row_pick <- apply(a, 1, any)
  
  
  if(! sum(row_pick) == 1){
    stop("unknown organism, or multiple hits detected, expect: fly, human, mouse, celegans")
  }
  
  # return vector, named
  key <- unlist(df[row_pick, ], use.names = TRUE)
  
  return(key)
}



#' group_go
#' 
#' @param gene vector, gene names
#' @param orgdb, the annotation db for organism
#' @param outdir, the directory to save results
#' @param keytype the name type of the input genes, default ENTREZID
#' @param top Top genes/categories to show
#' 
#' @export
#' 
#' @import clusterProfiler
#' @import tidyverse
#' @import scales
#' 
#' 
group_go <- function(gene, orgdb, outdir, keytype = "ENTREZID", top = 10) {
  # outdir
  if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)
  
  # convert gene to ENTREZID
  ont <- c("BP", "CC", "MF")
  
  # 1. GO group for all genes
  glist <- lapply(ont, function(i){
    print(paste0("GO characterization: ", i))
    ggo <- groupGO(gene     = gene, 
                   OrgDb    = orgdb,
                   keyType  = keytype,
                   ont      = i,
                   level    = 4,
                   readable = TRUE)
  })
  
  # 2. customize the dataframe
  # create data.frame for barplot
  dlist <- lapply(glist, function(i){
    group <- i@ontology
    i@result %>%
      mutate(des = as.character(Description),
             group = i@ontology,
             ID = as.character(ID)) %>%
      dplyr::select(group, ID, des, Count) %>%
      dplyr::arrange(desc(Count)) %>%
      tibble::rowid_to_column("y")
  })
  
  # 3. combine all ontology
  df <- bind_rows(dlist)
  
  # 4. plots
  plist <- group_go_barplot(df, top)
  
  # 5. save to files
  xlsxFile <- file.path(outdir, "go_group.xlsx")
  pdfFile  <- file.path(outdir, "go_group.pdf")
  
  # # combine two plots
  # p <- cowplot::plot_grid(
  #   plotlist = plist, ncol = 1, rel_heights = c(1, 1.3), 
  #   rel_widths = c(1.5, 1), labels = "AUTO")
  
  if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)
  pdf(pdfFile, width = 8, height = 8)
  print(plist[[1]])
  print(plist[[2]])
  dev.off()
  
  # save xlsx
  if(nrow(glist[[1]]@result) > 0) xlsx::write.xlsx(glist[[1]], xlsxFile, "BP")
  if(nrow(glist[[2]]@result) > 0) xlsx::write.xlsx(glist[[2]], xlsxFile, "CC", append = TRUE)
  if(nrow(glist[[3]]@result) > 0) xlsx::write.xlsx(glist[[3]], xlsxFile, "MF", append= TRUE)
  
  return(list(plist, glist))
}



#' enrich_go
#' 
#' @description perform GO over-representaion analysis using clusterProfiler
#' basic: enrichGO\(\), simplify\(\). 
#' adv: gseGO\(\), 
#' plots:
#' basic: barplot\(\), dotplot\(\) 
#' adv: cnetplot\(\), emapplot\(\), heatplot\(\), 
#' adv: gseaplot\(\), gseaplot2\(\), gsearank\(\), ridgeplot\(\) 
#' 
#' @param gene vector, gene names, entrezid,
#' @param orgdb, the annotation db for organism 
#' @param outdir the directory to save results 
#' @param keytype the type of the genes, default: ENTREZID, using keytypes\(\)
#' could check the available ketypes.
#' @param top integer, top categories to show in plots 
#' @param method p-value ajust method, default: BH
#' @param semsim boolen, whether remove similar terms, using function simplify\(\)
#' @param gene.data vector, foldchange of the genes, names by the all genes
#' 
#' @import clusterProfiler
#' @import tidyverse
#' @import scales
#' 
#' @export
enrich_go <- function(gene, orgdb, outdir, keytype = "ENTREZID", 
                      pvalueCutoff = 0.5, qvalueCutoff = 0.5, top = 10, 
                      method = "BH", semsim = TRUE, gene.data = NULL) {
  # output
  if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)
  
  # ontology
  ont <- c("BP", "CC", "MF")
  
  # 1. for all genes
  elist <- lapply(ont, function(i){
    print(paste0("GO enrichment: ", i))
    ego <- enrichGO(gene          = gene, 
                    keyType       = keytype,
                    OrgDb         = orgdb,
                    ont           = i,
                    pAdjustMethod = method, 
                    pvalueCutoff  = pvalueCutoff,
                    qvalueCutoff  = qvalueCutoff,
                    readable      = TRUE)
    
    if(isTRUE(semsim) & ! is.null(ego)) {
      ego <- clusterProfiler::simplify(ego, cutoff = 0.7, 
                                       by = "p.adjust", 
                                       select_fun = min)
    }
    return(ego)
  })
  
  # 2. custom data.frame for barplot
  dlist <- lapply(elist, function(i){
    group <- i@ontology
    i@result %>%
      mutate(des = as.character(Description),
             ID  = as.character(ID),
             group = i@ontology,
             plog10 = -log10(p.adjust),
             qlog10 = -log10(qvalue)) %>%
      dplyr::select(group, ID, des, Count, p.adjust, qvalue, plog10, qlog10) %>%
      dplyr::arrange(p.adjust)
  })
  
  # 3. combine all ontology
  df <- bind_rows(dlist)
  
  # 4. bar plots
  plist1 <- enrich_go_barplot(df, top)
  
  pdfFile1  <- file.path(outdir, "go_enrich.barplot.pdf")
  pdf(pdfFile1, width = 8, height = 8)
  print(plist1[[1]])
  print(plist1[[2]])
  dev.off()
  
  # 5. enrichment plots
  plist2 <- lapply(elist, function(ego){
    plist <- enrich_go_dotplot(ego, top, x.data = gene.data)
    pdfFile2 <- file.path(outdir, paste0("go_enrich.dotplot.", ego@ontology, ".pdf"))
    pdf(pdfFile2, width = 8, height = 8)
    print(plist[[1]])
    print(plist[[2]])
    print(plist[[3]])
    print(plist[[4]])
    dev.off()
    return(plist)
  })
  
  # 6. save GO enrichment to files
  xlsxFile <- file.path(outdir, "go_enrich.xlsx")
  if(nrow(elist[[1]]@result) > 0) xlsx::write.xlsx(elist[[1]], xlsxFile, "BP", append = FALSE)
  if(nrow(elist[[2]]@result) > 0) xlsx::write.xlsx(elist[[2]], xlsxFile, "CC", append = TRUE)
  if(nrow(elist[[3]]@result) > 0) xlsx::write.xlsx(elist[[3]], xlsxFile, "MF", append= TRUE)
  
  ##------------------------------##
  # 6. GSEA analysis + plot
  # ranked genes:
  if(! inherits(gene.data, "numeric")) {
    print("GSEA GO analysis skipped, gene.data= missing")
  } else {
    gene.data   <- sort(gene.data, decreasing = TRUE) # sort
    # gene.ranked <- names(gene.data[gene])
    
    ## 6.1 GSEA GO enrichment
    glist <- enrich_go_gsea(geneList = gene.data, 
                            orgdb    = orgdb,
                            keytype  = keytype, 
                            method   = method, 
                            semsim   = semsim)
    
    ## 6.2 GSEA GO plots
    if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)
    
    pdfFile3 <- file.path(outdir, "go_GSEA_enrich.basic.pdf")
    pdf(pdfFile3, width = 12, height = 12)
    tmp1 <- lapply(glist, function(ego){
      p <- enrich_go_gsea_plot(ego, top)
      print(p)
    })
    dev.off()
  }
}



#' enrich_kegg
#' 
#' @description perform KEGG over-representaion analysis using clusterProfiler
#' basic: enrichKEGG\(\), simplify\(\). 
#' adv: gseKEGG\(\), 
#' plots:
#' basic: barplot\(\), dotplot\(\) 
#' adv: cnetplot\(\), emapplot\(\), heatplot\(\), 
#' adv: gseaplot\(\), gseaplot2\(\), gsearank\(\), ridgeplot\(\) 
#' 
#' @param gene vector, gene names, entrezid,
#' @param organism string, for full version of list, see the following list:
#' http://www.genome.jp/kegg/catalog/org_list.html
#' @param outdir the directory to save results 
#' @param keytype the type of the genes, default: kegg, ncbi-proteinid, uniprot
#' @param method p-value ajust method, default: BH
#' @param pvalueCutoff float for enrichment analysis, default: 0.5
#' @param qvalueCutoff floag for enrichment analysis, default: 0.5
#' @param gene.data vector, foldchange of the genes, names by the all genes
#' 
#' @import clusterProfiler
#' @import tidyverse
#' @import scales
#' 
#' @export
enrich_kegg <- function(gene, organism, outdir, keytype,  method = "BH",
                        pvalueCutoff = 0.5, qvalueCutoff = 0.5, 
                        gene.data = NULL) {
  # ENTREZID supported: hsa, mmu, 
  # not-suppoted: dme, sce, spo, ...
  # KEGG, support uniprot, ncbi.proteinid
  # ncbi.proteinid, uniprot
  
  # output
  if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)

  # keytypes detect
  k <- get_keytype(organism)
  
  keytype_kegg <- k["keytype_kegg"]
  ##--------------------------------------------------------------------------##
  ## sub-1
  kk <- enrichKEGG(gene          = gene,
                   keyType       = keytype_kegg,
                   organism      = organism,
                   pAdjustMethod = method, 
                   pvalueCutoff  = pvalueCutoff,
                   qvalueCutoff  = qvalueCutoff)
  
  pdfFile1 <- file.path(outdir, "kegg_enrich.dotplot.pdf")
  plist1 <- enrich_go_dotplot(kk, top = 10, x.data = gene.data)
  pdf(pdfFile1, width = 8, height = 8)
  tmp <- lapply(plist1, print)
  dev.off()
  
  ##--------------------------------------------------------------------------##
  ## sub-2
  kk2 <- gseKEGG(geneList     = gene.data,
                 organism     = organism,
                 keyType      = keytype_kegg,
                 nPerm        = 1000,
                 minGSSize    = 120,
                 pvalueCutoff = 0.9,
                 verbose      = FALSE)
  
  ## convert names
  kk2 <- setReadable(kk2, 
                     OrgDb = k["orgdb"], 
                     keyType = k["keytype_go"])
  
  pdfFile2 <- file.path(outdir, "kegg_enrich.dotplot2.pdf")
  plist2 <- enrich_go_dotplot(kk2, top = 10, x.data = gene.data)
  pdf(pdfFile2, width = 8, height = 8)
  tmp <- lapply(plist2, print)
  dev.off()
  
  # ##------------------------------------------------##
  # ## sub-3: extra
  # mkk <- enrichMKEGG(gene          = gene,
  #                    keyType       = keytype,
  #                    pvalueCutoff  = 0.5, 
  #                    pAdjustMethod = "BH",  
  #                    organism      = organism)
  # 
  # mkk2 <- gseMKEGG(geneList      = gene.data, 
  #                  organism      = organism,
  #                  keyType       = keytype, 
  #                  pvalueCutoff  = 0.5, 
  #                  pAdjustMethod = "BH", 
  #                  verbose       = FALSE)
  
  ##------------------------------------------------##
  ## sub-4: pathway views
  subdir4 <- file.path(outdir, "kegg_enrich_pathway_views")
  tmp <- enrich_kegg_pathview(kk,
                              gene.data, 
                              organism, 
                              keytype_kegg,
                              subdir4,
                              out_suffix = NULL)
  
  ##------------------------------------------------##
  ## sub-5: pathway views
  subdir4 <- file.path(outdir, "kegg_enrich_pathway_views")
  tmp <- enrich_kegg_pathview(kk2,
                              gene.data, 
                              organism, 
                              keytype_kegg,
                              subdir4,
                              out_suffix = NULL)
  
  return(list(kk, mkk, kk2, mkk2))
}






#' enrich_go_gsea
#' 
#' @param gene vector, gene names, entrezid,
#' @param orgdb, the annotation db for organism 
#' @param keytype the type of the genes, default: ENTREZID, using keytypes\(\)
#' could check the available ketypes.
#' @param method p-value ajust method, default: BH
#' @param semsim boolen, whether remove similar terms, using function simplify\(\)
#'
#' @import clusterProfiler
#' @import enrichplot
#' @import tidyverse
#' 
#' @export
enrich_go_gsea <- function(geneList, 
                           orgdb,
                           keytype = "ENTREZID", 
                           method = "BH", 
                           semsim = TRUE){
  # 1. enrichment
  ont <- c("BP", "CC", "MF")
  
  elist <- lapply(ont, function(i){
    print(paste0("GO GSEA analysis: ", i))
    ego <- gseGO(geneList      = geneList,
                 ont           = i, 
                 OrgDb         = orgdb,
                 keyType       = keytype,
                 nPerm         = 1000, 
                 minGSSize     = 100, 
                 maxGSSize     = 500,
                 pvalueCutoff  = 0.05, 
                 pAdjustMethod = method,
                 verbose       = FALSE)
    
    if(isTRUE(semsim) & ! is.null(ego)) {
      ego <- clusterProfiler::simplify(ego, cutoff = 0.7, 
                                       by = "p.adjust", 
                                       select_fun = min)
    }
  })
  
  return(elist)
}



#' enrich_go_gsea_plot
#' 
#' @param x gseaEnrich object
#' @param top integer, top categories to show in plots 
#'
#' @import clusterProfiler
#' @import enrichplot
#' @import tidyverse
#' 
#' @export
enrich_go_gsea_plot <- function(x, top = 10){
  # check data.frames
  if(! inherits(x, "gseaResult")) {
    return(NULL) # blank
  }
  
  plist <- lapply(seq_len(top), function(i){
    title <- paste(i, x@setType, x@result$Description[i], sep = "_")
    
    # p1: ranked + enrichment
    p1 <- gseaplot(x, geneSetID = i, title = title)
    
    # p2: another version
    p2 <- enrichplot::gseaplot2(x, geneSetID = i, title = title)
    
    # merge:
    p <- cowplot::plot_grid(p1, p2, ncol = 1, labels = "AUTO")
    
    return(p)
  })
  
  return(plist)
}


# ggplot2
ggplotColours <- function(n = 6, h = c(0, 360) + 15){
  if ((diff(h) %% 360) < 1) h[2] <- h[2] - 360/n
  hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
}


#' enrich_go_barplot
#' 
#' @param df data.frame 
#' @param top integer number of categories to show 
#' @param axis_text_width integer the width for text on axis
#' 
#' @import ggplot2
#' @import dplyr
#' @import stringr
#' 
#' @export
group_go_barplot <- function(df, top = 10, axis_text_width = 40) {
  # check data.frames
  if(inherits(df, "data.frame") & 
     all(c("group", "ID", "des", "Count") %in% names(df))) {
    #pass
    n <- 1 # 
  } else {
    return(NULL) # blank
  }
  # stopifnot(inherits(df, "data.frame"))
  # stopifnot(all(c("group", "ID", "des", "Count") %in% names(df)))
  
  # choose the top N category for each ontology
  # by Count
  df2 <- df %>%
    group_by(group) %>%
    top_n(-top, y) %>% # min_rank()
    tibble::rowid_to_column("x") %>%
    filter(Count > 0)
  
  # colors for three ontology
  colors      <- ggplotColours(n = length(unique(df2$group)))
  colors_axis <- rep(colors, as.numeric(table(df2$group)))
  
  # make barplot
  p1 <- df2 %>%
    ggplot(aes(x, Count, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO classification") +
    xlab(NULL) + ylab("Number of genes") +
    scale_x_continuous(breaks = df2$x, labels = df2$des) + 
    scale_fill_manual(values = colors)+
    theme_bw() +
    theme(
      panel.grid.minor = element_blank(),
      plot.margin      = margin(1, 1, 1, 3, "cm"),
      axis.text.x      = element_text(angle = 60, hjust = 1, 
                                      colour = colors_axis),
      legend.position  = "top"
    )
  
  # make barplot
  p2 <- df2 %>%
    ggplot(aes(x, Count, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO classification") +
    xlab(NULL) + ylab("Number of genes") +
    scale_x_reverse(
      breaks = df2$x, 
      labels = function(x) stringr::str_wrap(df2$des, axis_text_width)) + 
    scale_y_continuous(
      position = "right"
    ) +
    scale_fill_manual(values = colors) +
    coord_flip() + 
    theme_bw() +
    theme(
      panel.grid.minor = element_blank(),
      plot.margin      = margin(1, 1, 1, 3, "cm"),
      axis.text.y      = element_text(angle = 0, hjust = 1, 
                                      colour = colors_axis),
      legend.position  = "right"
    )
  
  return(list(p1, p2))
}




#' enrich_go_barplot
#' 
#' @param df data.frame 
#' @param top integer number of categories to show 
#' @param axis_text_width integer the width for text on axis
#' 
#' @import ggplot2
#' @import dplyr
#' @import stringr
#' 
#' @export
enrich_go_barplot <- function(df, top = 10, axis_text_width = 40) {
  # check data.frames
  if(inherits(df, "data.frame") & 
     all(c("group", "ID", "des", "Count", "p.adjust", "plog10", "qlog10") %in% names(df))) {
    #pass
    n <- 1 # 
  } else {
    return(NULL) # blank
  }
  
  # choose the top N category for each ontology
  # by Count
  df <- df %>%
    group_by(group) %>%
    top_n(top, plog10) %>%
    tibble::rowid_to_column("x") 
  
  # colors for three ontology
  colors      <- ggplotColours(n = length(unique(df$group)))
  colors_axis <- rep(colors, as.numeric(table(df$group)))
  
  # make barplot
  p1 <- df %>%
    ggplot(aes(x, plog10, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO Enrichment") +
    xlab(NULL) + ylab("-log10(P-value)") +
    scale_x_continuous(breaks = df$x, labels = df$des) + 
    scale_fill_manual(values = colors)+
    theme_bw() +
    theme(
      panel.grid.minor = element_blank(),
      plot.margin      = margin(1, 1, 1, 3, "cm"),
      axis.text.x      = element_text(angle = 60, hjust = 1, 
                                      colour = colors_axis),
      legend.position  = "top"
    )
  
  # make barplot
  p2 <- df %>%
    ggplot(aes(x, plog10, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO Enrichment") +
    xlab(NULL) + ylab("-log10(P-value)") +
    scale_x_reverse(
      breaks = df$x, 
      labels = function(x) stringr::str_wrap(df$des, axis_text_width)) + 
    scale_y_continuous(
      position = "right"
    ) +
    scale_fill_manual(values = colors) +
    coord_flip() + 
    theme_bw() +
    theme(
      panel.grid.minor = element_blank(),
      plot.margin      = margin(1, 1, 1, 3, "cm"),
      axis.text.y      = element_text(angle = 0, hjust = 1, 
                                      colour = colors_axis),
      legend.position  = "right"
    )
  
  return(list(p1, p2))
}




#' enrich_kegg_pathview
#' 
#' @param x enrichResult or gseaResult
#' @param top integer, number of categories to show
#' @param gene.data numeric vector, reverse sorted expression data 
#' @param organism KEGG supported genome, eg: hsa, mmu, dme, ... 
#' for full version of list, see the following list:
#' http://www.genome.jp/kegg/catalog/org_list.html
#' @param outdir path, saving all results
#' @param out_suffix NULL or string, 
#' 
#' 
#' @import pathview
#' 
#' @export
enrich_go_dotplot <- function(x, top = 10, x.data = NULL) {
  # check data.frames
  if(! inherits(x, "enrichResult") & ! inherits(x, "gseaResult")) {
    return(NULL) # blank
  }
  
  # blank data, enrich
  if(nrow(x@result) == 0) {
    return(NULL)
  }
  
  p1 <- dotplot(x, orderBy = "Count")
  
  p2 <- cnetplot(x, showCategory = 8, layout = "kk")
  
  p3 <- heatplot(x, showCategory = 20, foldChange = x.data)
  
  p4 <- enrichplot::upsetplot(x, showCategory = 20)
  
  return(list(p1, p2, p3, p4))
}


#' enrich_kegg_dotplot
#' 
#' @param kk enrichResult or gseaResult
#' @param gene.data numeric vector, reverse sorted expression data 
#' @param organism KEGG supported genome, eg: hsa, mmu, dme, ... 
#' for full version of list, see the following list:
#' http://www.genome.jp/kegg/catalog/org_list.html
#' @param outdir path, saving all results
#' @param out_suffix NULL or string, 
#' 
#' 
#' @import pathview
#' 
#' @export
enrich_kegg_dotplot <- enrich_go_dotplot # same
# cnetplot
# upsetplot
# heatplot
# dotplot

#' enrich_kegg_pathview
#' 
#' @param kk enrichResult or gseaResult
#' @param gene.data numeric vector, reverse sorted expression data 
#' @param organism KEGG supported genome, eg: hsa, mmu, dme, ... 
#' for full version of list, see the following list:
#' http://www.genome.jp/kegg/catalog/org_list.html
#' @param outdir path, saving all results
#' @param out_suffix NULL or string, 
#' 
#' 
#' @import pathview
#' 
#' @export
#' 
enrich_kegg_pathview <- function(kk, gene.data, 
                                 organism, keytype,
                                 outdir,
                                 out_suffix = NULL) {
  # check data.frames
  if(! inherits(kk, "enrichResult") & ! inherits(kk, "gseaResult")) {
    return(NULL) # blank
  }

  # gene.data, numeric vector
  if(! inherits(gene.data, "numeric")) {
    return(NULL)
  }
  
  # blank data, enrich
  if(nrow(kk@result) == 0) {
    return(NULL)
  }
  
  # pwd
  pre_dir <- getwd()
  
  if(! dir.exists(outdir)) dir.create(outdir, recursive = TRUE)
  
  # top enriched category (pathway)
  # top KEGG pathway
  kk2 <- clusterProfiler.dplyr::filter(kk, p.adjust < 0.05)
  path.ids <- head(kk2@result$ID, 10)
  
  if(length(path.ids) > 0) {
    # go to workdir
    setwd(outdir)
    tmp <- sapply(path.ids, function(pid){
      pv.out <- pathview(gene.data   = gene.data, 
                         gene.idtype = keytype,
                         pathway.id  = pid, 
                         species     = organism,
                         out.suffix  = out_suffix,
                         kegg.native = TRUE,
                         same.layer  = FALSE)
    })
    
    # back
    stwd(pre_dir)
    
  } else {
    return(NULL)
  }
}

