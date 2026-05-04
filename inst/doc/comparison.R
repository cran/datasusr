## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(healthbR)
# 
# obitos    <- sim_data(year = 2022, uf = "AC")
# obitos_cv <- sim_data(year = 2022, uf = "AC", cause = "I")  # ICD-10 prefix
# nascidos  <- sinasc_data(year = 2022, uf = "AC")
# intern    <- sih_data(year = 2022, month = 1:6, uf = c("SP", "RJ"))
# ambul     <- sia_data(year = 2022, month = 1, uf = "AC", type = "AM")
# 
# # Variable metadata and value labels
# sim_variables()
# sim_dictionary("SEXO")

## -----------------------------------------------------------------------------
# library(datasusr)
# 
# # Browse the catalog
# datasus_sources()
# datasus_file_types(source = "SINAN")
# 
# # Validate availability against the FTP
# files <- datasus_list_files(
#   source = "SINAN", file_type = "DENG",
#   year   = 2020:2024
# )
# 
# # Download with caching
# downloads <- datasus_download(files, cache_dir = tempdir())
# 
# # Read with column selection and explicit types
# df <- read_datasus_dbc(
#   downloads$local_file[[1]],
#   select      = c("dt_notific", "id_municip", "classi_fin"),
#   col_types   = c(dt_notific = "date"),
#   parse_dates = TRUE
# )

## -----------------------------------------------------------------------------
# datasus_cache_info()
# datasus_cache_prune(older_than_days = 90)
# datasus_cache_prune(max_size_bytes  = 5 * 1024^3)
# datasus_cache_clear()

## -----------------------------------------------------------------------------
# library(dplyr)
# mun <- datasus_get_territory("tb_municip", cache_dir = tempdir())
# 
# df <- datasus_fetch(
#   source = "SIM", file_type = "DO",
#   year = 2022, uf = "PE",
#   cache_dir = tempdir()
# ) |>
#   left_join(
#     select(mun, co_municip, ds_nome),
#     by = c("codmunocor" = "co_municip")
#   )

