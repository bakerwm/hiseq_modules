
args <- commandArgs(trailingOnly = TRUE)

if (length(args) < 1){
  print("Usage: Rscript AID_report.R <prj_dir>")
  print("")
  print("Option:")
  print(" prj.dir :    The directory of call snp project dir")
  stop("arguments failed")
}

# prj_dir <- args[1]
prj_dir <- normalizePath(args[1])

x <- commandArgs() # arguments
cmd <- x[grepl("--file=", x)]
cmd <- gsub("--file=", "", cmd)
cmd_dir <- dirname(normalizePath(cmd))

rmd_file <- file.path(cmd_dir, "AID_report.Rmd")
html <- file.path(prj_dir, "results", "report", "AID_report.html")

rmarkdown::render(input       = rmd_file,
                  output_file = html,
                  params      = list(prj_dir = prj_dir))
