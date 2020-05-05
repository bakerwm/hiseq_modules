## Date: 2019-12-09

## GO analysis

## Species: C.elegans

library(biomaRt)
library(clusterProfiler)
library(tidyverse)

## input
f <- "data/Gene list for GO.xlsx"


## Annotation db
## install: org.Ce.eg.db
## BiocManager::install("org.Ce.eg.db")

## library("org.Ce.eg.db")
## keytypes(org.Ce.eg.db)

## gene <- bitr(df_up$`Wormbase Identifier`, fromType = "ENSEMBL", toType = "SYMBOL", OrgDb = org.Ce.eg.db)

get_go <- function(gene, pdfOut) {
  library(org.Ce.eg.db)
  ego1 <- enrichGO(gene          = gene,
                   keyType       = "WORMBASE",
                   OrgDb         = org.Ce.eg.db,
                   ont           = "BP", 
                   pAdjustMethod = "bonferroni", 
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  ego2 <- enrichGO(gene          = gene,
                   keyType       = "WORMBASE",
                   OrgDb         = org.Ce.eg.db,
                   ont           = "CC",
                   pAdjustMethod = "BH",
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  ego3 <- enrichGO(gene          = gene,
                   keyType       = "WORMBASE",
                   OrgDb         = org.Ce.eg.db,
                   ont           = "MF",
                   pAdjustMethod = "BH",
                   pvalueCutoff  = 0.01,
                   qvalueCutoff  = 0.05,
                   readable      = TRUE)
  
  ## make plot
  p1 <- barplot(ego1, showCategory = 20, title = "BP")
  p2 <- barplot(ego2, showCategory = 20, title = "CC")
  p3 <- barplot(ego3, showCategory = 20, title = "MF")
  
  library(cowplot)
  p <- cowplot::plot_grid(p1, p2, p3, ncol = 1)
  
  pdf(pdfOut, width = 14, height = 16)
  print(p)
  dev.off()
  
  ## save to xlsx
  xlsxFile <- gsub(".pdf", ".xlsx", pdfOut)
  xlsx::write.xlsx(ego1, xlsxFile, "BP")
  xlsx::write.xlsx(ego2, xlsxFile, "CC", append = TRUE)
  xlsx::write.xlsx(ego3, xlsxFile, "MF", append= TRUE)
}


##
f <- "data/Gene list for GO.xlsx"
df_up <- readxl::read_xlsx(f, "UP")
df_down <- readxl::read_xlsx(f, "DOWN")

## up
gene1 <- df_up$`Wormbase Identifier`
gene2 <- df_down$`Wormbase Identifier`

get_go(gene1, "demo-up.pdf")
get_go(gene2, "demo-down.pdf")


## scan, drop-level, remove-redundant
library(org.Ce.eg.db)
gene <- gene2
ego1 <- enrichGO(gene          = gene,
                 keyType       = "WORMBASE",
                 OrgDb         = org.Ce.eg.db,
                 ont           = "BP", 
                 pAdjustMethod = "bonferroni", 
                 pvalueCutoff  = 0.01,
                 qvalueCutoff  = 0.05,
                 readable      = TRUE)

## simplify
ego1x <- simplify(ego1, cutoff = 0.8, by = "p.adjust", select_fun = min)

library(clusterProfiler)

emapplot(ego1x, pie_scale = 1.2, layout = "kk")
dotplot(ego1x)
















