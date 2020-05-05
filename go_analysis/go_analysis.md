---
title: "GO analysis"
author: "Ming Wang"
date: "2019-12-10"
output:
  html_document:
    highlight: tango
    toc: yes
    toc_float:
      collapsed: no
    keep_md: true
  word_document:
    toc: yes
  pdf_document:
    toc: yes
---

## 1. summary

See GO enrichment analysis in Section `3.1` and `3.2`.


## 2. Materials and Methods

**Genes**: here we use `geneList` dataset from [DOSE](https://www.bioconductor.org/packages/DOSE) package.

**Annotation**: Using a Bioconductor package, `org.Hs.eg.db` (version: `3.8.2`)

**Tools**: [clusterProfiler](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3339379/) (R package, `v3.12.0`)


> **GO analysis**
> 
> GO enrichment analysis was performed with the R package clusterProfiler, with a Bonferroni correction and an adjusted p value of 0.01 and qvalue of 0.05 (Yu et al., 2012).
> 
> **Reference**
> 
> 1. Yu G, Wang L-G, Han Y, He Q-Y. clusterProfiler: an R package for comparing biological themes among gene clusters. OMICS. 2012;16:284–7. https://doi.org/10.1089/omi.2011.0118.


## 3. Results


> The geneList contains three features:
> 
> numeric vector: fold change or other type of numerical variable
named vector: every number was named by the corresponding gene ID
sorted vector: number should be sorted in decreasing order
> 
> The dataset `geneList` contains three features: 
> 
> 1. numeric vector, foldchange or other type of numerical >variable   
> 2. named vector, gene ID    
> 3. sorted vector, sorted by decreasing order  


```r
library(clusterProfiler)
```

```
## 
```

```
## Registered S3 method overwritten by 'enrichplot':
##   method               from
##   fortify.enrichResult DOSE
```

```
## clusterProfiler v3.12.0  For help: https://guangchuangyu.github.io/software/clusterProfiler
## 
## If you use clusterProfiler in published research, please cite:
## Guangchuang Yu, Li-Gen Wang, Yanyan Han, Qing-Yu He. clusterProfiler: an R package for comparing biological themes among gene clusters. OMICS: A Journal of Integrative Biology. 2012, 16(5):284-287.
```

```r
library(org.Hs.eg.db)
```

```
## Loading required package: AnnotationDbi
```

```
## Loading required package: stats4
```

```
## Loading required package: BiocGenerics
```

```
## Loading required package: parallel
```

```
## 
## Attaching package: 'BiocGenerics'
```

```
## The following objects are masked from 'package:parallel':
## 
##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
##     clusterExport, clusterMap, parApply, parCapply, parLapply,
##     parLapplyLB, parRapply, parSapply, parSapplyLB
```

```
## The following objects are masked from 'package:stats':
## 
##     IQR, mad, sd, var, xtabs
```

```
## The following objects are masked from 'package:base':
## 
##     anyDuplicated, append, as.data.frame, basename, cbind, colnames,
##     dirname, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
##     grepl, intersect, is.unsorted, lapply, Map, mapply, match, mget,
##     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
##     rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
##     union, unique, unsplit, which, which.max, which.min
```

```
## Loading required package: Biobase
```

```
## Welcome to Bioconductor
## 
##     Vignettes contain introductory material; view with
##     'browseVignettes()'. To cite Bioconductor, see
##     'citation("Biobase")', and for packages 'citation("pkgname")'.
```

```
## Loading required package: IRanges
```

```
## Loading required package: S4Vectors
```

```
## 
## Attaching package: 'S4Vectors'
```

```
## The following object is masked from 'package:base':
## 
##     expand.grid
```

```
## 
```

```r
data(geneList, package = "DOSE")
length(geneList)
```

```
## [1] 12495
```

```r
head(geneList)
```

```
##     4312     8318    10874    55143    55388      991 
## 4.572613 4.514594 4.418218 4.144075 3.876258 3.677857
```

Convert the `ENTREZID` to `SYMBOL`

genes with **foldchange > 2** were selected for further analysis (n=239).


```r
gene <- names(geneList)[abs(geneList) > 2]
gene.df <- bitr(gene, fromType = "ENTREZID",
        toType = c("ENSEMBL", "SYMBOL"),
        OrgDb = org.Hs.eg.db)
```

```
## 'select()' returned 1:many mapping between keys and columns
```

```r
dim(gene.df)
```

```
## [1] 239   3
```

```r
head(gene.df)
```

```
##   ENTREZID         ENSEMBL SYMBOL
## 1     4312 ENSG00000196611   MMP1
## 2     8318 ENSG00000093009  CDC45
## 3    10874 ENSG00000109255    NMU
## 4    55143 ENSG00000134690  CDCA8
## 5    55388 ENSG00000065328  MCM10
## 6      991 ENSG00000117399  CDC20
```


### 3.1 GO classification 


```r
ggo <- groupGO(gene     = gene,
               OrgDb    = org.Hs.eg.db,
               ont      = "CC",
               level    = 3,
               readable = TRUE)
```

```
## Loading required package: DOSE
```

```
## DOSE v3.10.2  For help: https://guangchuangyu.github.io/DOSE
## 
## If you use DOSE in published research, please cite:
## Guangchuang Yu, Li-Gen Wang, Guang-Rong Yan, Qing-Yu He. DOSE: an R/Bioconductor package for Disease Ontology Semantic and Enrichment analysis. Bioinformatics 2015, 31(4):608-609
```

```r
head(ggo)
```

```
##                    ID                    Description Count GeneRatio
## GO:0005886 GO:0005886                plasma membrane    52    52/207
## GO:0005628 GO:0005628              prospore membrane     0     0/207
## GO:0005789 GO:0005789 endoplasmic reticulum membrane     8     8/207
## GO:0019867 GO:0019867                 outer membrane     2     2/207
## GO:0031090 GO:0031090             organelle membrane    13    13/207
## GO:0034357 GO:0034357        photosynthetic membrane     0     0/207
##                                                                                                                                                                                                                                                                                                                                  geneID
## GO:0005886 S100A9/MELK/S100A8/MARCO/ASPM/CXCL10/LAMP3/CEP55/UGT8/UBE2C/SLC7A5/CXCL9/FADS2/MSLN/IL1R2/KIF18A/S100P/GZMB/TRAT1/GABRP/AQP9/GPR19/SLC2A6/KIF20A/LAG3/NUDT1/CACNA1D/VSTM4/CORIN/KCNK15/CA12/KCNE4/HLA-DQA1/ADH1B/PDZK1/C7/ACKR1/COL17A1/PSD3/EMCN/SLC44A4/LRP2/NLGN4X/MAPT/ERBB4/CX3CR1/LAMP5/ABCA8/STEAP4/PTPRT/TMC5/CYBRD1
## GO:0005628                                                                                                                                                                                                                                                                                                                             
## GO:0005789                                                                                                                                                                                                                                                                           FADS2/CDK1/CHODL/ITPR1/HLA-DQA1/CYP4F8/CYP4B1/FMO5
## GO:0019867                                                                                                                                                                                                                                                                                                                     MAOB/PGR
## GO:0031090                                                                                                                                                                                                                                                 MARCO/LAMP3/DUSP2/DTL/NUDT1/MAOB/ITPR1/GASK1B/HLA-DQA1/LRP2/LAMP5/STEAP4/PGR
## GO:0034357
```


### 3.2 GO over-representation test

Over-representation test(Boyle et al. 2004) were implemented in clusterProfiler. For calculation details and explanation of paramters, please refer to the vignette of DOSE.


```r
ego <- enrichGO(gene          = gene,
                universe      = names(geneList),
                OrgDb         = org.Hs.eg.db,
                ont           = "BP",
                pAdjustMethod = "BH",
                pvalueCutoff  = 0.01,
                qvalueCutoff  = 0.05,
                readable      = TRUE)

head(ego)
```

```
##                    ID                          Description GeneRatio   BgRatio
## GO:0140014 GO:0140014             mitotic nuclear division    29/189 201/11248
## GO:0000280 GO:0000280                     nuclear division    31/189 274/11248
## GO:0048285 GO:0048285                    organelle fission    32/189 303/11248
## GO:0000070 GO:0000070 mitotic sister chromatid segregation    21/189 109/11248
## GO:0051301 GO:0051301                        cell division    37/189 442/11248
## GO:0007059 GO:0007059               chromosome segregation    26/189 200/11248
##                  pvalue     p.adjust       qvalue
## GO:0140014 2.813076e-19 8.475799e-16 7.684140e-16
## GO:0000280 1.996472e-17 3.007685e-14 2.726761e-14
## GO:0048285 4.437103e-17 4.456330e-14 4.040099e-14
## GO:0000070 7.446719e-17 5.609241e-14 5.085325e-14
## GO:0051301 2.627553e-16 1.583363e-13 1.435474e-13
## GO:0007059 3.181389e-16 1.597588e-13 1.448369e-13
##                                                                                                                                                                                                                               geneID
## GO:0140014                                               CDCA8/CDC20/KIF23/CENPE/MYBL2/NDC80/NCAPH/DLGAP5/UBE2C/NUSAP1/TPX2/TACC3/NEK2/UBE2S/MAD2L1/KIF18A/CDT1/KIF11/TTK/NCAPG/AURKB/CHEK1/TRIP13/PRC1/KIFC1/AURKA/CCNB1/KIF4A/BMP4
## GO:0000280                                    CDCA8/CDC20/KIF23/CENPE/MYBL2/NDC80/TOP2A/NCAPH/ASPM/DLGAP5/UBE2C/NUSAP1/TPX2/TACC3/NEK2/UBE2S/MAD2L1/KIF18A/CDT1/KIF11/TTK/NCAPG/AURKB/CHEK1/TRIP13/PRC1/KIFC1/AURKA/CCNB1/KIF4A/BMP4
## GO:0048285                               CDCA8/CDC20/KIF23/CENPE/MYBL2/NDC80/TOP2A/NCAPH/ASPM/DLGAP5/UBE2C/NUSAP1/TPX2/TACC3/NEK2/UBE2S/MAD2L1/KIF18A/CDT1/KIF11/TTK/NCAPG/AURKB/CHEK1/TRIP13/PRC1/KIFC1/AURKA/CCNB1/KIF4A/BMP4/MAPT
## GO:0000070                                                                                             CDCA8/CDC20/KIF23/CENPE/NDC80/NCAPH/DLGAP5/NUSAP1/TACC3/NEK2/MAD2L1/KIF18A/CDT1/TTK/NCAPG/AURKB/TRIP13/PRC1/KIFC1/CCNB1/KIF4A
## GO:0051301 CDCA8/CDC20/KIF23/CENPE/CCNB2/NDC80/TOP2A/NCAPH/E2F8/ASPM/CEP55/UBE2C/SKA1/NUSAP1/CDCA3/TPX2/TACC3/NEK2/UBE2S/CCNA2/CDK1/ERCC6L/MAD2L1/PAX6/CDT1/BIRC5/KIF11/NCAPG/AURKB/PRC1/KIFC1/KIF18B/KIF20A/AURKA/CCNB1/KIF4A/PTTG1
## GO:0007059                                                                CDCA8/CDC20/KIF23/CENPE/NDC80/TOP2A/NCAPH/DLGAP5/HJURP/SKA1/NUSAP1/TACC3/NEK2/CENPN/MAD2L1/KIF18A/CDT1/BIRC5/TTK/NCAPG/AURKB/TRIP13/PRC1/KIFC1/CCNB1/KIF4A
##            Count
## GO:0140014    29
## GO:0000280    31
## GO:0048285    32
## GO:0000070    21
## GO:0051301    37
## GO:0007059    26
```

### 3.3 drop specific GO terms or level

Use the function `dropGO()` function to remove specific GO terms or GO level from results of `enrichGO` and `compareCluster`.


```r
dropGO(ego, level = 4)
dropGO(ego, term = "GO:0140014") # drop the first GO term.
```

### 3.4 test GO at specific level

Use the function `gofilter` to get results at specific GO level from results of `enrichGO` and `compareCluster`.

example: 


```r
gofilter(ego, level = 4)
```


### 3.5 reduce redundancy of enriched GO terms

Use the function `simplify()` method to calculate semantic similarity among GO terms and remove highly similar terms. Set the cutooff of similarity `cutoff=0.7` and `by=`, `fun=` to decide which column and method to choose between similar temrs.

example: 

Choose the term with minimum `p.adjust` value within the similar GO terms, with cutoff 0.7.


```r
ego3 <- simplify(ego, cutoff = 0.7, by = "p.adjust", select_fun = min)
```






