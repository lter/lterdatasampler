#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
library(usethis)
library(metajam)
library(tidyverse)
library(janitor)

# Physiological stress of American pika (Ochotona princeps) and associated habitat characteristics for Niwot Ridge, 2018 - 2019
# Main URL: https://doi.org/10.6073/pasta/9f95baf55f98732f47a8844821ff690d
nwt_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-nwt.268.1&entityid=43270add3532c7f3716404576cfb3f2c"

elevation_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-nwt.268.1&entityid=6a10b35988119d0462837f9bfa31dd2f"

# Download the data package with metajam
nwt_download <-
  download_d1_data(data_url = nwt_url, path = tempdir())

elevation_download <-
  download_d1_data(data_url = elevation_url, path = tempdir())

#' ### Data cleaning
#+ data sampling, eval=FALSE
# Read in data
nwt_files <- read_d1_files(nwt_download)

elevation_files <- read_d1_files(elevation_download)

nwt_pikas_raw <- nwt_files$data

elevation_raw <- elevation_files$data

nwt_pikas <- nwt_pikas_raw %>%
  select(-Notes,-Vial,-Plate,-Biweek) %>%
  mutate(
    Station = as.factor(Station),
    Site = as.factor(Site),
    Sex = as.factor(Sex),
    Date = as.Date(Date),
    Site = recode(
      Site,
      "WK" = "West Knoll",
      "LL" = "Long Lake",
      "ML" = "Mitchell Lake",
      "CG" = "Cable Gate"
    ),
    Sex = recode(Sex,
                 "U" = NA_character_,
                 "M" = "male"),
    Station = recode(
      Station,
      "CG1" = "Cable Gate 1",
      "CG2" = "Cable Gate 2",
      "CG3" = "Cable Gate 3",
      "CG4" = "Cable Gate 4",
      "LL1" = "Long Lake 1",
      "LL2" = "Long Lake 2",
      "LL3" = "Long Lake 3",
      "WK1" = "West Knoll 1",
      "WK2" = "West Knoll 2",
      "WK3" = "West Knoll 3",
      "WK4" = "West Knoll 4",
      "WK5" = "West Knoll 5",
      "WK6" = "West Knoll 6",
      "WK7" = "West Knoll 7",
      "WK8" = "West Knoll 8",
      "WK9" = "West Knoll 9",
      "WK10" = "West Knoll 10",
      "WK11" = "West Knoll 11",
      "WK12" = "West Knoll 12",
      "WK13" = "West Knoll 13"
    )
  ) %>%
  relocate(Site, .before = Station) %>%
  relocate(Sex, .before = Concentration_pg_g) %>%
  clean_names()



elevation <- elevation_raw %>%
  select(Station, Elev_M) %>%
  mutate(
    Station = recode(
      Station,
      "CG1" = "Cable Gate 1",
      "CG2" = "Cable Gate 2",
      "CG3" = "Cable Gate 3",
      "CG4" = "Cable Gate 4",
      "LL1" = "Long Lake 1",
      "LL2" = "Long Lake 2",
      "LL3" = "Long Lake 3",
      "WK1" = "West Knoll 1",
      "WK2" = "West Knoll 2",
      "WK3" = "West Knoll 3",
      "WK4" = "West Knoll 4",
      "WK5" = "West Knoll 5",
      "WK6" = "West Knoll 6",
      "WK7" = "West Knoll 7",
      "WK8" = "West Knoll 8",
      "WK9" = "West Knoll 9",
      "WK10" = "West Knoll 10",
      "WK11" = "West Knoll 11",
      "WK12" = "West Knoll 12",
      "WK13" = "West Knoll 13"
    ),
    Station = as.factor(Station)
  ) %>%
  clean_names()

nwt_pikas <- nwt_pikas %>% full_join(elevation, by = "station")

#+ save data, include=FALSE, eval = FALSE
## Save sample file
use_data(nwt_pikas, overwrite = TRUE)
