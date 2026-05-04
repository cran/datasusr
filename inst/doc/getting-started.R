## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----eval = FALSE-------------------------------------------------------------
# library(datasusr)
# 
# df <- datasus_fetch(
#   source    = "SIHSUS",
#   file_type = "RD",
#   year      = 2024,
#   month     = 1,
#   uf        = "PE"
# )
# 
# df

## ----eval = FALSE-------------------------------------------------------------
# x <- read_datasus_dbc("RDPE2401.dbc")
# x

## ----eval = FALSE-------------------------------------------------------------
# x <- read_datasus_dbc(
#   "RDPE2401.dbc",
#   select = c("uf_zi", "ano_cmpt", "munic_res", "val_tot")
# )

## ----eval = FALSE-------------------------------------------------------------
# x <- read_datasus_dbc(
#   "SPPE2401.dbc",
#   select     = c("sp_gestor", "sp_naih", "sp_dtinter", "sp_valato"),
#   col_types  = c(
#     sp_gestor  = "character",
#     sp_naih    = "character",
#     sp_dtinter = "date",
#     sp_valato  = "double"
#   ),
#   parse_dates = TRUE,
#   guess_types = FALSE
# )

## ----eval = FALSE-------------------------------------------------------------
# datasus_sources()
# datasus_file_types(source = "SIHSUS")
# datasus_file_types(source = "CNES")

## ----eval = FALSE-------------------------------------------------------------
# # 1. Build the FTP paths
# datasus_build_path(source = "SIHSUS", file_type = "RD", year = 2024, month = 1)
# 
# # 2. List files (validated against FTP)
# files <- datasus_list_files(
#   source    = "SIHSUS",
#   file_type = "RD",
#   year      = 2024,
#   month     = 1:3,
#   uf        = c("PE", "PB")
# )
# 
# # 3. Download with cache
# downloads <- datasus_download(files, use_cache = TRUE)
# 
# # 4. Read
# x <- read_datasus_dbc(downloads$local_file[[1]])

## ----eval = FALSE-------------------------------------------------------------
# # Download municipalities table
# municipios <- datasus_get_territory("tb_municip")
# municipios
# 
# # Other available tables
# datasus_ftp_ls("ftp://ftp.datasus.gov.br/territorio/tabelas/")

## ----eval = FALSE-------------------------------------------------------------
# # See all documentation paths
# datasus_docs_url()
# 
# # List documentation files for a specific system
# datasus_docs_url("CNES")
# datasus_ftp_ls(datasus_docs_url("CNES")$docs_url[[1]])

