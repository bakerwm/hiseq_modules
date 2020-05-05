

## RNA unpair posibility
#
# Computational analysis of target accessibility.
# To first analyse target accessibility,
# top guides from the tiling screen were analysed to determine whether they
# grouped closer together than expected under the assumption that if there were
# regions of accessibility, multiple guides in that region would be expected to be
# highly active. Top guides were defined as the top 20% of performing guides for
# the Gluc tiling screen and top 30% of performing guides for the Cluc, KRAS, and
# PPIB tiling screens. A null probability distribution was generated for pairwise
# distances between guides by randomly simulating 10,000 guide positions and then
# comparing with experimentally determined top guide pairwise distances.
#
# Accessibility was predicted using the RNAplfold algorithm in the Vienna RNA
# software suite. The default window size of 70 nt was used and the probability
# of a target region being unpaired was calculated as the average of the 28 single
# nucleotide unpaired probabilities across the target region. These accessibility
# curves were smoothed and compared with smoothed knockdown curves across
# each of the four transcripts, and correlations between the two factors and their
# significance were computed using Pearson’s correlation coefficient with the SciPy
# Python package (pearsonr function). The probability space of these two factors was
# also visualized by performing two-dimensional kernel density estimation across
# the two variables.
#
# Abudayyeh et al. Nature, 2017
# https://www.nature.com/articles/nature24049
# https://doi.org/10.1038/nature24049

# command-line
# $ cat in.fa | RNAplfold -W 70 -u 28

# lunp matrix
#
# The output is a plain text matrix containing on each line a position i
# followed by the probability that i is unpaired, [i-1..i] is unpaired
# [i-2..i] is unpaired and so on to the probability that [i-x+1..i] is unpaired.
#
# source: https://www.tbi.univie.ac.at/RNA/RNAplfold.1.html#

# Interpretation of RNAplfold: lunp
# for command: -W 60 -u 11
#
# The 11th row contains the probability that i-11:I is unpaired,
# first 10 rows are invalid.
#
# source: https://www.biostars.org/p/207271/#207273


# Ref: Abudayyeh et al., 2017 Nature


###################
## Core function ##
###################

# unpair probability
# x, lunp file of RNAplfold output
#
parseLunp <- function(x, ulength = 28, pair = FALSE) {
  # the average of the 28 single nucleotide unpaired probabilities across the
  # target region.
  df <- readr::read_delim(x, "\t", col_names = FALSE, col_types = cols(),
                          comment = "#") %>%
    tibble::column_to_rownames("X1")
  colnames(df) <- paste0("X", seq_len(ncol(df)))
  
  # df <- df[complete.cases(df), ] # remove NA rows
  df[is.na(df)] <- 0 # replace NA by 0
  
  # ulength = 28
  # mean unpair probability
  # single nucleotide unpair probability
  p1 <- df$X1
  names(p1) <- rownames(df)
  
  # scan windows
  p1_window <- mapply(function(i){
    # start
    s <- ifelse(i > 28, i - ulength + 1, 1)
    # mean of window
    mean(p1[s:i], na.rm = TRUE)
  }, seq_len(length(p1)))
  
  p1_df <- p1_window %>%
    as.data.frame() %>%
    dplyr::rename(value = '.') %>%
    dplyr::mutate(position = seq_len(length(p1_window))) %>%
    dplyr::select(position, value)
  
  # lunp calculate the unpair probability
  if(isTRUE(pair)){
    p1_df$value <- 1 - p1_df$value
  }
  
  return(p1_df)
}



readNarrowPeak <- function(x) {
  # read peak
  extraCols_narrowPeak <- c(signalValue = "numeric",
                            pValue = "numeric",
                            qValue = "numeric",
                            peak = "integer")
  gr <- rtracklayer::import.bed(x, extraCols = extraCols_narrowPeak)
  return(gr)
}


readBed <- function(x) {
  # read BED3, BED6, BED12, ...
  gr <- rtracklayer::import.bed(x)
  return(gr)
}


# Extract fasta using BED
#
# x, annotation in BED format
# dir, directory to save files
#
getFa <- function(x, reference = NULL, dir = "./", 
                  species = BSgenome.Dmelanogaster.UCSC.dm3) {
  if(! dir.exists(dir)) {
    dir.create(dir, recursive = TRUE, showWarnings = FALSE)
  }
  # filename
  fa_out <- file.path(dir, gsub(".bed$|.narrowPeak$", ".fa", basename(x)))
  
  # read BED
  if(endsWith(x, ".bed")) {
    gr <- readBed(x)
  } else if(endsWith(x, ".narrowPeak")) {
    gr <- readNarrowPeak(x)
  } else {
    stop(paste0("Unknown file extension: ", basename(x)))
  }

  # reference fasta
  if(is.character(reference)){
    ref_fa <- rtracklayer::import(rtracklayer::FastaFile(reference))
    names(ref_fa) <- sapply(strsplit(names(ref_fa), " "), "[[", 1)
    seq <- BSgenome::getSeq(ref_fa, gr)
  } else {
    seq <- BSgenome::getSeq(species, gr)
  }
  
  # save to fasta file
  names(seq) <- gr$name
  Biostrings::writeXStringSet(seq, fa_out, format = "fasta")
  
  return(fa_out)
}


getFaSize <- function(x) {
  # fa index
  fai <- paste0(x, ".fai")
  if (! file.exists(fai)) {
    fai <- Rsamtools::indexFa(fa)
  }
  
  # read fai
  dfsize <- readr::read_delim(fai, "\t",
                              col_names = c("chr", "end", "a", "b", "c"),
                              col_types = readr::cols()) %>%
    dplyr::mutate(start = 1, score = 1)
  
  # convert to gr
  gr <- GenomicRanges::makeGRangesFromDataFrame(dfsize)
  
  # return
  return(gr)
}


# run RNAplfold
# x, fasta file
# compute RNA pair probability
# output: lunp file
runRnaplfold <- function(x, dir, winsize = 70, ulength = 28) {
  # example: cd dir && RNAplfold -W 70 -u 28 < in.fa
  if(! dir.exists(dir)) {
    dir.create(dir, recursive = TRUE, showWarnings = FALSE)
  }
  # absolute path of fasta
  x <- normalizePath(x)
  
  # check command exists
  cmd1 <- "RNAplfold -V"
  a <- tryCatch(
    {suppressMessages(system(cmd1, intern = TRUE, ignore.stderr = TRUE))},
    error = function(cond) {return(NA)},
    warning = function(cond) {return(NA)} #,
    # finally={}
  )
  
  if(is.na(a)) {
    stop("RNAplfold not found in your $PATH")
  } else {
    print(a)
  }
  
  # run cmd
  # cmd2 <- paste("cd", dir, "&& RNAplfold -W", winsize, "-u", ulength, "<", x, sep = " ")
  cmd2 <- glue::glue("cd {dir} && RNAplfold -W {winsize} -u {ulength} < {x}")
  system(cmd2)
  
  # name of the fasta file
  n <- readLines(x)
  n <- n[grepl(">", n)]
  n <- gsub("^>[ ]*", "", n, perl = TRUE)
  
  # prefix of fasta
  prefix <- stringr::str_split(n, " ", simplify = TRUE) %>%
    as.data.frame(stringsAsFactors = FALSE) %>%
    dplyr::pull(V1)

  ## lunp files
  lunp_files <- file.path(dir, paste0(prefix, "_lunp"))
  return(lunp_files)
}



# x, ps file of RNAplfold output
parsePs <- function(x) {
  lines <- readLines(x)
  lines <- lines[grepl("\\d+ \\d+ \\d\\.\\d+ ubox", lines, perl = TRUE)]
  
  df <- stringr::str_split(lines, " ", simplify = TRUE) %>%
    as.data.frame(stringsAsFactors = FALSE) %>%
    dplyr::select(1:3) %>%
    apply(2, as.numeric)
  colnames(df) <- c("start", "end", "value")
  return(df)
}


# data, data.frame of lunp
# x, colname on x-axis, position
# y, colname on y-axis, probability
rnaplfoldPlot <- function(data, x, y, title = NULL, n = -1) {
  # format data.frame
  df <- dplyr::select(data, x, y)
  colnames(df) <- c("x", "y")
  df$y <- 1 - df$y
  
  # x-max
  xmax <- dplyr::pull(data, x) %>% max()
  xmax <- 1e3 * ceiling(xmax / 1e3)
  xbreaks <- seq(0, xmax, length.out = 5)
  
  ymax <- dplyr::pull(data, y) %>% max()
  
  # plot for sample size
  if(n > 0) {
    df <- df %>% dplyr::sample_n(n)
  }
  
  df %>%
    ggplot(aes(x, y)) +
    geom_line(color = "orange") +
    xlab("position (nt)") +
    ylab("probability paired") +
    scale_x_continuous(breaks = xbreaks,
                       labels = xbreaks,
                       limits = c(1, xmax),
                       expand = c(0, 0, 0, 0)) +
    scale_y_continuous(limits = c(0, ymax),
                       expand = c(0, 0, 0, 0)) +
    ggtitle(title) +
    theme_classic() +
    theme(plot.title = element_text(hjust = .5, size = 14))
}


# convert to bedgraph
# annotation in bed format: chr2L:1-300
#
# input: x lunp file
# input: position chr:start-end (or GRanges object)
# output: .bg file
acc2bg <- function(x, gr, savetofile = FALSE){
  # read Lunp file
  df <- parseLunp(x, ulength = 28, pair = FALSE) #
  
  # input GRanges object
  stopifnot(length(gr) == 1)
  if(nrow(df) != width(gr)) {
    warning("data.frame and chr:start-end are not in the same length")
    return(NULL)
  }
  # coordinates of gene
  chr   <- as.character(seqnames(gr))
  start <- start(gr) - 1
  end   <- end(gr) - 1
  # make sure the length consistent
  if(as.character(strand(gr)) == "+"){
    prob <- df$value
  } else {
    prob <- rev(df$value)
  }
  bg <- data.frame(chr   = chr,
                   start = seq(start, end),
                   end   = seq(start + 1, end + 1),
                   value = prob,
                   stringsAsFactors = FALSE)
  
  ## save to file
  if(isTRUE(savetofile)) {
    bg_file <- gsub("_lunp", ".bedGraph", x)
    print(paste0("save to: ", bg_file))
    readr::write_delim(bg, bg_file, "\t", col_names = FALSE)
    return(bg_file)
  } else {
    return(bg)
  }
}


# accessibility plot
# average of the single nucleotide unpaired probabilities
#
# x, lunp file
acc2plot <- function(x, title = NULL) {
  # return pair probability
  df <- parseLunp(x, ulength = 28, pair = TRUE)
  
  # pair line plot
  rnaplfoldPlot(df, x = "position", y = "value", title = title)
}


pair2access <- function(x, dir = "./"){
  # convert pair probability to accessibility
  # 1 - pair
  fname <- gsub(".bg|.bedGraph", ".rna_access.bedGraph", basename(x))
  ffile <- file.path(dir, fname)
  
  df <- rtracklayer::import.bedGraph(x)
  df2 <- df
  df2$score <- 1 - df2$score
  rtracklayer::export.bedGraph(df2, ffile)
  return(ffile)
}


bg2peaks <- function(x, dir = "./") {
  # call peaks using MACS2
  fname <- gsub(".bg|.bedGraph", ".narrowPeak", basename(x))
  peak  <- file.path(dir, fname)
  # mean score
  df <- rtracklayer::import.bedGraph(x)
  bg_mean <- mean(df$score)
  # run macs2
  cmd_macs2 <- glue::glue("macs2 bdgpeakcall -i {x} -c {bg_mean} -l 20 -g 0 -o {peak}")
  system(cmd_macs2)
  
  return(peak)
}


# input a fasta file
# RNA pair probability in bg format
acc_all <- function(fa, dir) {
  # chrom size
  gr_fasize <- getFaSize(fa)
  
  # run RNAplfold
  lunp_files <- runRnaplfold(fa, dir, winsize = 70, ulength = 28)
  
  # convert lunp to bedGraph file
  pdf_out <- file.path(dir, gsub(".fa|.fasta", ".probability_paired.RNAplfold.pdf", basename(fa)))
  pdf(pdf_out, width = 8, height = 4, paper = "a4")
  
  # parse each lunp file
  tmp <- lapply(lunp_files, function(i){
    # convert lunp to bedgraph
    bg_file <- acc2bg(x = i, gr = gr_fasize, savetofile = TRUE)
    
    # # pair to accessibility
    # acc_file <- pair2access(bg_file, dir)
    
    # access to peak
    peak_file <- bg2peaks(bg_file, dir = dir)
    
    # extrac peak fasta
    peak_fa <- getFa(peak_file, fa, dir = dir)
    
    # save to plot
    p <- acc2plot(i, title = basename(i))
    print(p)
  })
  dev.off()
  
  # return
  return(lunp_files)
}


##################################################
## 1. convert RNA pair probability to Accessibility
## 2. extract RNA access regions (Macs2)
## 3. extract 28-nt probes from access regions 
## 4. position "-1" on target is not "G"
## 5. show sgRNA list (text, average score)
## 6. summary

library(dplyr)
library(readr)
library(ggplot2)
library(BSgenome.Dmelanogaster.UCSC.dm3)


# outdir <- "results/2019-nCoV"
# fa <- "data/NC_045512.2.fasta"
outdir <- "results/2019-nCoV-demo2"
fa <- "2019-nCoV.fa"
acc_all(fa, outdir)



 
# peak2fa <- function(x, fa, dir = "./") {
#   # Read *.narrowPeak, 
#   peak_fa <- file.path(dir, paste0(basename(x), ".fa"))
#   
#   # read peak
#   gr <- readNarrowPeak(x)
# 
#   # prepare fasta
#   fa_2bit <- gsub(".fa$|.fasta$", ".2bit", fa)
#   dna <- rtracklayer::import(fa)
#   rtracklayer::export(dna, fa_2bit)
#   twob <- rtracklayer::TwoBitFile(fa_2bit)
#   
#   # extract sequence
#   s <- Biostrings::getSeq(twob, gr)
#   names(s) <- gr$name
#   
#   # save to file
#   rtracklayer::export(s, peak_fa, format = "fasta")
#   
#   # combine
#   gr$sequence <- as.character(s)
#   
#   return(gr)
# }
# 

# RNAplfold
#
# pack in one function
#
# x, annotation in BED format
# dir, directory to save files
# species,
# acc_all <- function(x, dir, species = BSgenome.Dmelanogaster.UCSC.dm3) {
#   # read BED file
#   gr <- rtracklayer::import(x, format = "bed")
#   
#   # get fasta file
#   fa_file <- get_fa(x, dir, species)
#   
#   # run RNAplfold
#   # return lunp file
#   lunp_files <- runRnaplfold(fa_file, dir, winsize = 70, ulength = 28)
#   names(lunp_files) <- gr$name
#   
#   # convert lunp to bedGraph file
#   pdf_out <- file.path(dir, gsub(".bed", ".probability_paired.RNAplfold.pdf", basename(x)))
#   pdf(pdf_out, width = 8, height = 4, paper = "a4")
#   tmp <- lapply(seq_len(length(gr)), function(i){
#     acc2bg(x = lunp_files[i], gr = gr[i], savetofile = TRUE)
#     # make plots
#     p <- acc2plot(lunp_files[i], title = gr$name[i])
#     print(p) 
#   })
#   dev.off()
#   
#   # return
#   return(lunp_files)
# }
