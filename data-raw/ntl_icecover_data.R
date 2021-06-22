#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data_ice, eval=FALSE
library(usethis)
library(metajam)
library(tidyverse)
library(janitor)

# North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current
# Main URL: https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-ntl&identifier=33&revision=35
# Save link location for the data package:
ntl_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-ntl.33.35&entityid=f5bc02452cafcd461c49bd7429d8b40c"

# Download the data package with metajam
ntl_download <-
  download_d1_data(data_url = ntl_url, path = tempdir())

#' ### Data Cleaning
#+ data sampling ice, eval=FALSE
# Read in data
ntl_files <- read_d1_files(ntl_download)
ntl_ice_raw <- ntl_files$data

# Basic cleaning
ntl_icecover <- ntl_ice_raw %>%
  select(-iceon, -iceoff, -season) %>%
  rename(year = year4) %>%
  mutate(
    lakeid = recode(
      lakeid,
      "ME" = "Lake Mendota",
      "MO" = "Lake Monona",
      "WI" = "Lake Wingra"
    ),
    year = as.numeric(year),
    ice_duration = as.numeric(ice_duration),
    ice_on = as.Date(ice_on),
    ice_off = as.Date(ice_off),
    lakeid = as.factor(lakeid),
    ice_duration = replace(ice_duration, which(ice_duration < 0), NA) # change values of -999 to NA
  ) %>%
  clean_names() # makes headers formatting more consistent

#+ save data ice, include = FALSE, eval = FALSE
# Save sample file
usethis::use_data(ntl_icecover, overwrite = TRUE)
