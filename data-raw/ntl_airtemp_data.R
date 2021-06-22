#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data_temps, eval=FALSE
library(usethis)
library(metajam)
library(tidyverse)
library(janitor)

# Madison Wisconsin Daily Meteorological Data 1869 - current
# Main URL: https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-ntl.20.32
ntl_temps_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-ntl.20.32&entityid=3c7ddd692d3ac8e90bf2954a16b39e89"

# Download the data package with metajam
ntl_temps_download <-
  download_d1_data(data_url = ntl_temps_url, path = tempdir())


#' ### Data Cleaning
#+ data sampling temps, eval=FALSE
# Read in data
ntl_temps_files <- read_d1_files(ntl_temps_download)
ntl_temps_raw <- ntl_temps_files$data

# Basic cleaning
ntl_airtemp <- ntl_temps_raw %>%
  select(sampledate, year4, ave_air_temp_adjusted) %>%
  rename(year = year4) %>%
  clean_names()

#+ save data temps, include = FALSE, eval = FALSE
# Save sample file
usethis::use_data(ntl_airtemp, overwrite = TRUE)
