

# top level
geo_port <- function(x, sup = FALSE, outdir = "", recursive = FALSE,
                     sqlfile =  "/data/biosoft/SRAdb/SRAmetadb.sqlite") {
  ## mission
  ##
  ## GSE: download sup, get GSM, recursive => GSM
  ## GSM: download sup, get table
  
  ## top level: GSE, GSM
  if(all(startsWith(x, "GSE"))) {
    out <- lapply(x, function(i) read_gse(i, sup, outdir, recursive))
  } else if(all(startsWith(x, "GSM"))) {
    ## if supp, download
    y <- lapply(x, function(i) read_gsm(i, sup, outdir, sqlfile))
    if(isTRUE(sup)) {
      out <- unlist(y) # files
    } else {
      ## if not, save table
      out <- dplyr::bind_rows(y) # table
    }
  } else {
    hits <- x[startsWith(x, "GSE") | startsWith(x, "GSM")]
    out  <- x[! x %in% hits]
    if(length(out) > 0) {
      out <- paste(out, collapse = ",")
      stop(paste0("unknown format detected: ", out))
    }
  }
  
  return(out)
}


read_gse <- function(x, sup = FALSE, outdir = "", recursive = FALSE, 
                     get_GEOquery = FALSE, 
                     sqlfile =  "/data/biosoft/SRAdb/SRAmetadb.sqlite") {
  # GSE project
  gse <- getGEO(x, GSEMatrix = FALSE)
  
  # only support GSE, for GSM list
  stopifnot(class(gse) %in% c("GSE"))
  
  # all samples (GSM)
  gsm_list <- GSMList(gse)
  
  # sup
  if(isTRUE(sup)){
    s <- unlist(geo_supp(gse))
    s <- s[! s == "NONE"]
    if(inherits(outdir, "character") & dir.exists(outdir)) {
      out <- lapply(s, function(i) download(i, outdir))
    } else {
      out <- s
    }
  } else {
    out <- names(gsm_list)
  }
  
  if(isTRUE(recursive)) {
    out <- read_gsm(gsm_list, sup, outdir, sqlfile)
  }
  
  if(isTRUE(get_GEOquery)) {
    out <- gse
  }
  
  return(out)
}


# input GSM object
read_gsm <- function(x, sup = FALSE, outdir = "",
                     sqlfile = "/data/biosoft/SRAdb/SRAmetadb.sqlite") {
  # GSM project
  if(inherits(x, "GSM")) {
    gsm_list <- list(x)
  } else if(all(mapply(function(i) inherits(i, "GSM"), x))) {
    gsm_list <- x
  } else if(all(inherits(x, "character"))) {
    gsm_list <- lapply(x, function(i) getGEO(i, GSEMatrix = FALSE))
  } else {
    stop("GSM of GEOquery object expected:")
  }
  
  # content
  ids   <- mapply(geo_ids, gsm_list)
  srr   <- mapply(geo_srp, gsm_list)
  title <- mapply(geo_title, gsm_list)
  supp  <- mapply(geo_supp, gsm_list)
  
  if(isTRUE(sup)){
    f_list <- unlist(supp) # supp files
    f_list <- f_list[! f_list == "NONE"] # remove "NONE"
    if(inherits(outdir, "character") & dir.exists(outdir)) {
      out <- lapply(f_list, function(i) download(i, outdir))
    } else {
      out <- f_list
    }
  } else {
    # prepare table
    df1 <- data.frame(gsm = ids,
                      srx = srr,
                      title =  title,
                      stringsAsFactors = FALSE)
    
    # SRAdb
    sra_con <- dbConnect(SQLite(), sqlfile) # main port !!!
    
    ## SRR list
    df2 <- sraConvert( srr, sra_con = sra_con )
    
    # combine
    out <- merge(df1, df2, by.y = "experiment", by.x = "srx")
  }
  return(out)
}



# g1@header$geo_accession
geo_ids <- function(x){
  stopifnot(class(x) %in% c("GSE", "GSM", "GDS"))
  return(x@header$geo_accession)
}


# gse@header$relation
geo_srp <- function(x){
  stopifnot(class(x) %in% c("GSE", "GSM", "GDS"))
  a <- x@header$relation
  a <- a[grep("S[A-Z]{2}[0-9]{1,9}", a)]
  srr <- stringr::str_extract(a, "S[A-Z]{2}[0-9]{1,9}")
  return(srr)
}


# gse@header$title
geo_title <- function(x){
  stopifnot(class(x) %in% c("GSE", "GSM", "GDS"))
  return(x@header$title)
}


# gse@header$supplementary_file...
geo_supp <- function(x) {
  stopifnot(class(x) %in% c("GSE", "GSM"))
  a <- x@header
  a_hits <- grep("supplementary", names(a))
  f_list <- sapply(a_hits, function(i) a[[i]])
  return(as.character(f_list))
}


download <- function(x, outdir) {
  # download files
  xname <- basename(x)
  xfile <- file.path(outdir, xname)
  
  # method
  download.file(x, xfile, method = "curl")
  
  return(xfile)
}



# 
# read_gsm2 <- function(x, sup = FALSE, outdir = "", get_GEOquery = FALSE,
#                      sqlfile = "/data/biosoft/SRAdb/SRAmetadb.sqlite") {
#   # GSM project
#   if(all(startsWith(x, "GSM"))){
#     gsm <- lapply(x, function(i) getGEO(i, GSEMatrix = FALSE))
#   } else {
#     stop(paste0("unknown ids: ", x))
#   }
#   
#   # only support GSM, for GSM list
#   stopifnot(inherits(gsm, "GSM"))
#   
#   # attr
#   srr   <- geo_srp(gsm)
#   title <- geo_title(gsm)
#   supp  <- geo_supp(gsm)
#   
#   if(isTRUE(sup)){
#     f_list <- supp # supp files
#     if(inherits(outdir, "character") & dir.exists(outdir)) {
#       out <- lapply(f_list, function(i) download(i, outdir))
#     } else {
#       out <- unlist(f_list)
#     }
#   } else {
#     # prepare table
#     df1 <- data.frame(gsm = x,
#                       srx = srr,
#                       title =  title,
#                       stringsAsFactors = FALSE)
#     
#     # SRAdb
#     sra_con <- dbConnect(SQLite(), sqlfile) # main port !!!
#     
#     ## SRR list
#     df2 <- sraConvert( srr, sra_con = sra_con )
#     
#     # combine
#     out <- merge(df1, df2, by.x = "srx", by.y = "experiment")
#   }
#   return(out)
# }

