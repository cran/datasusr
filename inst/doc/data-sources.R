## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(datasusr)
# 
# datasus_sources()

## -----------------------------------------------------------------------------
# # Reduced Hospital Admission Records
# df <- datasus_fetch(
#   source = "SIHSUS", file_type = "RD",
#   year = 2024, month = 1, uf = "PE",
#   select = c("uf_zi", "ano_cmpt", "munic_res", "val_tot")
# )
# 
# # Rejected admissions
# df <- datasus_fetch(
#   source = "SIHSUS", file_type = "RJ",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Professional services
# df <- datasus_fetch(
#   source = "SIHSUS", file_type = "SP",
#   year = 2024, month = 1, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Outpatient production
# df <- datasus_fetch(
#   source = "SIASUS", file_type = "PA",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Medication authorisations (APAC)
# df <- datasus_fetch(
#   source = "SIASUS", file_type = "AM",
#   year = 2024, month = 1, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Death records by state (4-digit year in file name)
# df <- datasus_fetch(
#   source = "SIM", file_type = "DO",
#   year = 2022, uf = "PE"
# )
# 
# # Foetal deaths
# df <- datasus_fetch(
#   source = "SIM", file_type = "DOFET",
#   year = 2022
# )
# 
# # Deaths from external causes
# df <- datasus_fetch(
#   source = "SIM", file_type = "DOEXT",
#   year = 2022
# )
# 
# # Infant deaths
# df <- datasus_fetch(
#   source = "SIM", file_type = "DOINF",
#   year = 2022
# )
# 
# # Maternal deaths
# df <- datasus_fetch(
#   source = "SIM", file_type = "DOMAT",
#   year = 2022
# )

## -----------------------------------------------------------------------------
# df <- datasus_fetch(
#   source = "SINASC", file_type = "DN",
#   year = 2022, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Facilities
# df <- datasus_fetch(
#   source = "CNES", file_type = "ST",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Hospital beds
# df <- datasus_fetch(
#   source = "CNES", file_type = "LT",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Professionals
# df <- datasus_fetch(
#   source = "CNES", file_type = "PF",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Equipment
# df <- datasus_fetch(
#   source = "CNES", file_type = "EQ",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # Specialised services
# df <- datasus_fetch(
#   source = "CNES", file_type = "SR",
#   year = 2024, month = 1, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # CIHA (2011 onwards)
# df <- datasus_fetch(
#   source = "CIHA", file_type = "CIHA",
#   year = 2024, month = 1, uf = "PE"
# )
# 
# # CIH (historical, 2008-2011)
# df <- datasus_fetch(
#   source = "CIH", file_type = "CR",
#   year = 2010, month = 1, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Dengue
# df <- datasus_fetch(
#   source = "SINAN", file_type = "DENG",
#   year = 2023
# )
# 
# # Chikungunya
# df <- datasus_fetch(
#   source = "SINAN", file_type = "CHIK",
#   year = 2023
# )
# 
# # Zika
# df <- datasus_fetch(
#   source = "SINAN", file_type = "ZIKA",
#   year = 2023
# )
# 
# # Malaria
# df <- datasus_fetch(
#   source = "SINAN", file_type = "MALA",
#   year = 2023
# )

## -----------------------------------------------------------------------------
# # e-SUS Notifica (chronic Chagas disease)
# df <- datasus_fetch(
#   source = "ESUSNOTIFICA", file_type = "DCCR",
#   year = 2023
# )
# 
# # Suspected congenital Zika syndrome (RESP)
# df <- datasus_fetch(
#   source = "RESP", file_type = "RESP",
#   year = 2022, uf = "PE"
# )

## -----------------------------------------------------------------------------
# df <- datasus_fetch(
#   source = "PO", file_type = "PO",
#   year = 2022
# )

## -----------------------------------------------------------------------------
# df <- datasus_fetch(
#   source = "PCE", file_type = "PCE",
#   year = 2022, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Prenatal monitoring (historical)
# df <- datasus_fetch(
#   source = "SISPRENATAL", file_type = "PN",
#   year = 2014, month = 1, uf = "PE"
# )

## -----------------------------------------------------------------------------
# # Municipality table (defaults to current year)
# municipalities <- datasus_get_territory("tb_municip")
# municipalities
# 
# # Specific year
# municipalities_2023 <- datasus_get_territory("tb_municip", year = 2023)
# 
# # Browse available years and tables
# datasus_ftp_ls("ftp://ftp.datasus.gov.br/territorio/tabelas/")

## -----------------------------------------------------------------------------
# # All known documentation paths
# datasus_docs_url()
# 
# # List documentation files for a specific system
# datasus_ftp_ls(datasus_docs_url("CNES")$docs_url[[1]])

## -----------------------------------------------------------------------------
# library(dplyr)
# 
# sources_dbc <- datasus_sources() |>
#   filter(access == "fetch")
# 
# results <- purrr::map(seq_len(nrow(sources_dbc)), \(i) {
#   src <- sources_dbc$source[[i]]
#   fts <- datasus_file_types(source = src)
# 
#   purrr::map(seq_len(nrow(fts)), \(j) {
#     ft <- fts$file_type[[j]]
#     ok <- tryCatch({
#       datasus_build_path(source = src, file_type = ft, year = 2023, month = 1)
#       TRUE
#     }, error = function(e) FALSE)
#     tibble::tibble(source = src, file_type = ft, has_path = ok)
#   }) |> purrr::list_rbind()
# }) |> purrr::list_rbind()
# 
# results |> print(n = Inf)

## -----------------------------------------------------------------------------
# datasus_cache_info()
# datasus_cache_clear()

