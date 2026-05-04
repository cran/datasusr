## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----eval = FALSE-------------------------------------------------------------
# library(datasusr)
# 
# downloads <- datasus_fetch(
#   source    = "SIHSUS",
#   file_type = c("RD", "SP"),
#   year      = 2024,
#   month     = 1,
#   uf        = c("PE", "PB")
# )

## ----eval = FALSE-------------------------------------------------------------
# options(datasusr.cache_dir = "/path/to/my/cache")

## ----eval = FALSE-------------------------------------------------------------
# # Quick summary
# datasus_cache_info(verbose = TRUE)
# 
# # Detailed listing of all cached files
# datasus_cache_list()

## ----eval = FALSE-------------------------------------------------------------
# datasus_download(files, refresh = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# # Remove files older than 90 days
# datasus_cache_prune(older_than_days = 90)
# 
# # Keep the total cache under 5 GB
# datasus_cache_prune(max_size_bytes = 5 * 1024^3)
# 
# # Remove everything
# datasus_cache_clear()

