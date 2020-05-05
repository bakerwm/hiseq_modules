

library(readr)
library(dplyr)
library(ggplot2)

## run RNAplfold -W 70 -u <i> < 5S.seq

fa <- "5S.seq"


read_lunp <- function(x, select_column = -1) {
  df <- readr::read_delim(x, "\t", col_names = FALSE, comment = "#", col_types = readr::cols())
  # determine the ulength: ncols - 1
  ulength = ncol(df) - 1
  
  # determine the column
  if(select_column < 1) {
    select_column = 1
  } else if(select_column > ulength) {
    select_column = ulength
  } else {
    select_column = as.integer(select_column)
  }
  
  
  # extract unpaired probabilities
  df2 <- df %>%
    dplyr::select(1, select_column + 1) %>%
    dplyr::rename(position = X1,
                  score = paste0("X", select_column + 1)) %>%
    dplyr::mutate(score = ifelse(is.na(score), 0, score),
                  ulength = ulength)
  
  # 
  # 
  # if(isTRUE(last_column)) {
  #   # extract unpaired probabilities
  #   df2 <- df %>%
  #     dplyr::select(1, ncol(df)) %>%
  #     dplyr::rename(position = X1,
  #                   score = paste0("X", ncol(df))) %>%
  #     dplyr::mutate(score = ifelse(is.na(score), 0, score),
  #                   ulength = ulength)
  # } else {
  #   
  #   # extract unpaired probabilities, 
  #   # the 2nd-column
  #   df2 <- df %>%
  #     dplyr::select(X1, X2) %>%
  #     dplyr::rename(position = X1,
  #                   score = X2) %>%
  #     dplyr::mutate(score = ifelse(is.na(score), 0, score),
  #                   ulength = ulength)
  # }
  
  # return
  return(df2)
}


run_RNAplfold <- function(fa, ulength = 1, winsize = 70, select_column = -1) {
  # in
  fa <- normalizePath(fa)
  
  # RNAplfold
  RNAplfold <- "/data/biosoft/ViennaRNA/bin/RNAplfold"
  
  # sub-folder
  dir <- file.path("scan_ulength", paste0("ulength_", ulength))
  
  if(! dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
  }
  
  cmd <- glue::glue("cd {dir} && {RNAplfold} -W {winsize} -u {ulength} < {fa}")
  system(cmd)
  
  # _lunp file
  lunp <- file.path(dir, "5S_lunp")
  
  if(file.exists(lunp)) {
    return(read_lunp(lunp, select_column))
  } else {
    return(NULL)
  }
}


tmp <- lapply(seq_len(35), function(i){
  print(i)
  run_RNAplfold(fa, i, select_column = 2)
})

# combine data.frame
df <- dplyr::bind_rows(tmp)

df %>%
  # dplyr::filter(ulength == 28) %>%
  ggplot(aes(position, score, color = ulength)) +
  geom_line() +
  xlim(0, 200) +
  ggtitle("RNAplfold -W 70 -u i < 5S.seq [scan i from 1 to 35]") +
  facet_wrap(~ulength, ncol = 5) +
  theme_minimal()

ggsave("scan_ulength.unpaired_probabilities.pdf", width = 10, height = 8)



##---------------------##
f_list <- list.files("scan_ulength", "5S_lunp", T, T, T)

pdf("scan_ulength.full.pdf", width = 10, height = 8)
tmp1 <- lapply(seq_len(40), function(i){
  print(i)
  tmp2 <- lapply(f_list, function(f){
    read_lunp(f, i)
  })
  # plot
  p <- dplyr::bind_rows(tmp2) %>%
    ggplot(aes(position, score, color = ulength)) +
    geom_line() +
    xlim(0, 200) +
    ggtitle("RNAplfold -W 70 -u i < 5S.seq [scan i from 1 to 40]") +
    facet_wrap(~ulength, ncol = 5) +
    theme_minimal()
  # save to pdf
  print(p)
})
dev.off()










wangming@ibp.ac.cn