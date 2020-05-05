
library(tidyverse)
library(clusterProfiler)
library(org.Hs.eg.db)

## load functions
source("go_functions.R")

## Drosophila program
library(org.Dm.eg.db)
# x <- "/data/yulab/wangming/work/yu_2019/projects/20190615_lxh_RNAseq/results/hipipe_align/DaGal4XshWhite_3h.vs.DaGal4XshPiwi_3h/gene/de_analysis_sense/transcripts_deseq2.csv"

x <- "/data/yulab/wangming/work/yu_2019/projects/20190615_lxh_RNAseq/results/hipipe_align/DaGal4XshWhite_L2.vs.DaGal4XshPiwi_L2/gene/de_analysis_sense/transcripts_deseq2.csv"

outdir <- "temp"

deseq2_go_analysis(x, organism = "fly", outdir, keytype = "ENSEMBL")



##
# source(system.file('extdata', 'Run.GSEA.R', package = 'GSEA'))



