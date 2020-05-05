

suppressPackageStartupMessages(library(clusterProfiler))
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(org.Ce.eg.db))

##

## combine three groups
group_go <- function(gene, orgdb, keytype = "ENTREZID", top = 10) {
  # 
  # gene = g_down
  # orgdb = org.Ce.eg.db
  # keytype = "ENTREZID" 
  # group = "BP"

  # BP
  group <- "BP"
  ggo1 <- groupGO(gene     = gene,
                  OrgDb    = orgdb,
                  keyType  = keytype,
                  ont      = group,  
                  level    = 3,
                  readable = TRUE)
  
  # convert to data.frame
  df1 <- data.frame(ggo1) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::arrange(desc(Count)) %>%
    dplyr::mutate(group = group,
                  des = as.character(Description)) %>%
    dplyr::select(name, Count, group, des) %>%
    head(top)
  
  # CC
  group <- "CC"
  ggo2 <- groupGO(gene     = gene,
                  OrgDb    = orgdb,
                  keyType  = keytype,
                  ont      = group,  
                  level    = 3,
                  readable = TRUE)
  
  # convert to data.frame
  df2 <- data.frame(ggo2) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::arrange(desc(Count)) %>%
    dplyr::mutate(group = group,
                  des = as.character(Description)) %>%
    dplyr::select(name, Count, group, des) %>%
    head(top)
  
  # MF
  group <- "MF"
  ggo3 <- groupGO(gene     = gene,
                  OrgDb    = orgdb,
                  keyType  = keytype,
                  ont      = group,  
                  level    = 3,
                  readable = TRUE)
  
  # convert to data.frame
  df3 <- data.frame(ggo2) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::arrange(desc(Count)) %>%
    dplyr::mutate(group = group,
                  des = as.character(Description)) %>%
    dplyr::select(name, Count, group, des) %>%
    head(top)
  
  ## combine 3 plots/data
  df <- bind_rows(df1, df2, df3) %>%
    tibble::rowid_to_column("x")
  
  # plot
  ggplotColours <- function(n = 6, h = c(0, 360) + 15){
    if ((diff(h) %% 360) < 1) h[2] <- h[2] - 360/n
    hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
  }
  
  colors <- ggplotColours(n = 3)
  colors_axis <- rep(colors, each = top)
  
  p <- ggplot(df, aes(x, Count, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO classification") +
    xlab(NULL) + ylab("Number of genes") +
    scale_x_continuous(breaks = df$x, labels = df$des) + 
    scale_fill_manual(values = colors)+
    theme_bw() +
    theme(
      plot.margin = margin(1, 1, 1, 3, "cm"),
      axis.text.x = element_text(angle = 60, hjust = 1, colour = colors_axis),
      legend.position = "top"
    )
  
  return(list(p, df))
}


enrich_go <- function(gene, orgdb, 
                      keytyp = "ENTREZID", 
                      top = 10, 
                      method = "BH", 
                      semsim = TRUE) {
  ## BP
  group <- "BP"
  ego1 <- enrichGO(gene          = gene,
                   OrgDb         = orgdb,
                   ont           = group,
                   pAdjustMethod = method, 
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  if(isTRUE(semsim)) {
    ego1 <- clusterProfiler::simplify(ego1, cutoff = 0.7, by = "p.adjust", select_fun = min)
  }
  
  df1 <- data.frame(ego1, stringsAsFactors = FALSE) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::mutate(des = Description,
                  group = group,
                  plog10 = -log10(p.adjust),
                  qlog10 = -log10(qvalue)) %>%
    dplyr::arrange(p.adjust) %>%
    dplyr::select(des, name, Count, plog10, qlog10, group) %>%
    head(top)
    
  ## CC
  group <- "CC"
  ego2 <- enrichGO(gene          = gene,
                   OrgDb         = orgdb,
                   ont           = group,
                   pAdjustMethod = method, 
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  if(isTRUE(semsim)) {
    ego2 <- clusterProfiler::simplify(ego2, cutoff = 0.7, by = "p.adjust", select_fun = min)
  }
  
  df2 <- data.frame(ego2, stringsAsFactors = FALSE) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::mutate(des = Description,
                  group = group,
                  group = group,
                  plog10 = -log10(p.adjust),
                  qlog10 = -log10(qvalue)) %>%
    dplyr::arrange(p.adjust) %>%
    dplyr::select(des, name, Count, plog10, qlog10, group) %>%
    head(top)  

  ## MF
  group <- "MF"
  ego3 <- enrichGO(gene          = gene,
                   OrgDb         = orgdb,
                   ont           = group,
                   pAdjustMethod = method, # bonferroni
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  if(isTRUE(semsim)) {
    ego3 <- clusterProfiler::simplify(ego3, cutoff = 0.7, by = "p.adjust", select_fun = min)
  }
  
  df3 <- data.frame(ego3, stringsAsFactors = FALSE) %>%
    tidyr::unite("name", c("Description", "ID"), sep = "-", remove = FALSE) %>%
    dplyr::mutate(des = Description,
                  group = group,
                  plog10 = -log10(p.adjust),
                  qlog10 = -log10(qvalue)) %>%
    dplyr::arrange(p.adjust) %>%
    dplyr::select(des, name, Count, plog10, qlog10, group) %>%
    head(top)
  
  ## combine 3 plots/data
  df <- bind_rows(df1, df2, df3) %>%
    tibble::rowid_to_column("x")
  
  # plot
  ggplotColours <- function(n = 6, h = c(0, 360) + 15){
    if ((diff(h) %% 360) < 1) h[2] <- h[2] - 360/n
    hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
  }
  
  colors <- ggplotColours(n = 3)
  colors_axis <- rep(colors, each = top)
  
  p1 <- ggplot(df, aes(x, plog10, fill = group)) +
    geom_bar(stat = "identity") + 
    ggtitle("GO Enrichment") +
    xlab(NULL) + ylab("-log10(P-value)") +
    scale_x_continuous(breaks = df$x, labels = df$des) + 
    scale_fill_manual(values = colors)+
    theme_bw() +
    theme(
      plot.margin = margin(1, 1, 1, 3, "cm"),
      axis.text.x = element_text(angle = 60, hjust = 1, colour = colors_axis),
      legend.position = "top"
    )
  
  
  labels=function(x) str_wrap(x, width=text_width)
  
  ##
  p2 <- ggplot(df, aes(x, plog10, fill = group)) +
    geom_bar(stat = "identity") + 
    coord_flip() + 
    ggtitle("GO Enrichment") +
    xlab(NULL) + ylab("-log10(P-value)") +
    scale_x_reverse(breaks = df$x, 
                    labels = function(x) stringr::str_wrap(df$des, 40)) + 
    # scale_x_continuous(breaks = rev(df$x), labels = rev(df$des)) + 
    scale_fill_manual(values = colors) +
    theme_bw() +
    theme(
      plot.margin = margin(1, 1, 1, 3, "cm"),
      axis.text.y = element_text(angle = 0, hjust = 1, colour = colors_axis),
      legend.position = "right"
    )
  
  ## output
  pdata <- list(p1, p2, df)
  ego  <- list(ego1, ego2, ego3)
  
  return(list(pdata, ego))
}



