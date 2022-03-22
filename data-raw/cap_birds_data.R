#' ---
#' title: "Data Preparation"
#' ---
#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
library(metajam)
library(tidyverse)

# Point-count bird censusing: long-term monitoring of bird abundance and diversity in central Arizona-Phoenix, ongoing since 2000
# Main URL: https://doi.org/10.6073/pasta/4fca7c8a6cd56a6abed9834aca72e764

# Location Data
locations_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-cap.46.19&entityid=86856afb2e6779f5acb261a2b04d1e13"


# Sighting data
cap_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-cap.46.19&entityid=832065765ce5a9a8238a0b25cb549722"

# Download the data packages with metajam
locations_download <-
  download_d1_data(data_url = locations_url, path = tempdir())

cap_download <-
  download_d1_data(data_url = cap_url, path = tempdir())

#' ### Data cleaning
#+ data sampling, eval=FALSE

# Read in location data
locations_files <-
  read_d1_files(locations_download)
locations_raw <- locations_files$data

# Discard repeated site locations. Some sites were moved over the course of the study, but the changes in location were very small
locations <- locations_raw %>%
  select(
    -begin_date,
    -begin_date_month,
    -begin_date_year,
    -end_date,
    -end_date_month,
    -end_date_year,
  ) %>%
  mutate(
    location_type = recode(
      location_type,
      "ESCA" = "Ecological Survey of Central Arizona",
      "NDV" = "North Desert Village",
      "riparian" = "Riparian",
      "SRBP" = "Salt River Biodiversity Project",
      "PASS" = "Phoenix Area Social Survey",
      "desert_fertilization" = "Desert Fertilization"
    )
  ) %>%
  group_by(site_code) %>%
  slice_tail() %>%
  ungroup()

# Read in count data
cap_files <- read_d1_files(cap_download)
cap_birds_raw <- cap_files$data

# Select needed variables, spell out abbreviations
cap_birds <-
  cap_birds_raw %>%
  mutate(survey_date = as.Date(survey_date)) %>%
  select(-observer, -code, -observation_notes, -qccomment) %>%
  mutate(distance = recode(distance, "FT" = "Flying Through"))

# Combine location data with count data
cap_birds <-
  cap_birds %>% full_join(locations, by = "site_code")

#+ save data, include=FALSE, EVAL=FALSE
## Save sample file
usethis::use_data(cap_birds, overwrite = TRUE)
