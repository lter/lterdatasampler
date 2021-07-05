#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
library(tidyverse)
library(lubridate)
library(janitor)
library(usethis)
library(metajam)

pie_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pie.540.1&entityid=bab5a4d6df7dce829a222f281cca55a5" # Save link location for the data package:
pie_download <- download_d1_data(data_url = pie_url, path = tempdir(), dir_name="pie") # Download the data package with metajam

#' ### Data cleaning

#+ data sampling, eval=FALSE
# Read in data
pie_files <- read_d1_files(pie_download)
pie_data <- pie_files$data

# Basic cleaning

pie_crab <- pie_data %>%
  janitor::clean_names() %>%
  select(-replicate) %>%
  left_join(pie_files$factor_metadata[, 0:2], by = c("site" = "code")) %>%
  rename("name" = "definition",
         "size" = "carapace_width",
         "air_temp" = "mata",
         "water_temp" = "matw",
         "air_temp_sd" = "sata",
         "water_temp_sd" = "satw")

#+ save data, include=FALSE, eval=FALSE
usethis::use_data(pie_crab, overwrite = TRUE)
