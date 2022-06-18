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

and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-and.4027.14&entityid=5b18ded1cd996f5e8d361a9275a600cf"
and_download <- download_d1_data(data_url = and_url, path = tempdir(), dir_name = "and")

#' ### Data cleaning

#+ data sampling, eval=FALSE
# Read in data
and_files <- read_d1_files(and_download)
and_data <- and_files$data

# Basic cleaning

and_vertebrates <- and_data %>%
  janitor::clean_names() %>%
  rename(length_1_mm = length1,
         length_2_mm = length2,
         weight_g = weight) %>%
  select(-dbcode, -entity) %>%
  mutate(species = case_when(
    species == "ONCL" ~ "Cutthroat trout",
    species == "DITE" ~ "Coastal giant salamander",
    species == "RHOL" ~ "Cascade torrent salamander",
    TRUE ~ species
  ))

#+ save data, include=FALSE, eval=FALSE
usethis::use_data(and_vertebrates, overwrite = TRUE)
