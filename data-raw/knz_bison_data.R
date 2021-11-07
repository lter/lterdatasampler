#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
# Attach packages
library(usethis)
library(metajam)
library(dplyr)

# Save link location for the data package:
knz_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-knz.78.12&entityid=0921d9c31d67badeb940f7352886134e"

# Download the data package with metajam
knz_download <- download_d1_data(data_url = knz_url, path = tempdir(), dir_name="knz_bison")

# Read in data
knz_files <- read_d1_files(knz_download)

#' ### Data preparation

#+ data_prep, eval = FALSE
knz_bison <- knz_files$data %>%
  janitor::clean_names() %>%
  select(-rec_type)

#+ save_bison_data, include = FALSE, eval = FALSE
# Save sample file
usethis::use_data(knz_bison, overwrite = TRUE)
