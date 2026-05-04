## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----eval = FALSE-------------------------------------------------------------
# library(datasusr)
# 
# # Slow: reads all ~100+ columns
# x <- read_datasus_dbc("RDPE2401.dbc")
# 
# # Fast: reads only 4 columns
# x <- read_datasus_dbc(
#   "RDPE2401.dbc",
#   select = c("uf_zi", "ano_cmpt", "munic_res", "val_tot")
# )

## ----eval = FALSE-------------------------------------------------------------
# x <- read_datasus_dbc("RDPE2401.dbc", guess_types = FALSE)

## ----eval = FALSE-------------------------------------------------------------
# x <- read_datasus_dbc(
#   "RDPE2401.dbc",
#   select      = c("uf_zi", "dt_inter", "val_tot"),
#   col_types   = c(uf_zi = "character", dt_inter = "date", val_tot = "double"),
#   parse_dates = TRUE,
#   guess_types = FALSE
# )

## ----eval = FALSE-------------------------------------------------------------
# library(bench)
# 
# file <- "RDPE2401.dbc"
# 
# bench::mark(
#   default    = read_datasus_dbc(file),
#   no_guess   = read_datasus_dbc(file, guess_types = FALSE),
#   selected   = read_datasus_dbc(file, select = c("uf_zi", "val_tot")),
#   typed      = read_datasus_dbc(
#     file,
#     select      = c("uf_zi", "dt_inter", "val_tot"),
#     col_types   = c(uf_zi = "character", dt_inter = "date", val_tot = "double"),
#     parse_dates = TRUE,
#     guess_types = FALSE
#   ),
#   check      = FALSE,
#   iterations = 5
# )

