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

arc_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-arc.1489.4&entityid=280f9818386cc1abaaa95b638ed079ca"
arc_weather_path <- download_d1_data(data_url = arc_url, path = tempdir())

#' ### Data cleaning

#+ data sampling, eval=FALSE
# Read that data
# View(stream_chem$attribute_metadata)
arc_weather <- read_d1_files(arc_weather_path, na = c("", "#N/A"))
arc_weather <- arc_weather$data

# Simplify to convert date to class 'date', reduce variables to date, station, mean_airtemp, daily_precip, mean_windspeed:

arc_weather <- arc_weather %>%
  janitor::clean_names() %>%
  dplyr::select(date, station, daily_air_temp_mean_c, daily_precip_total_mm, daily_windsp_mean_msec) %>%
  rename(mean_airtemp = daily_air_temp_mean_c,
         daily_precip = daily_precip_total_mm,
         mean_windspeed = daily_windsp_mean_msec) %>%
  mutate(date = ymd(date)) %>%
  mutate(station = tolower(station)) %>%
  mutate(station = case_when(
    station == "tlkmain" ~ "Toolik Field Station"
  ))

#+ save data, include=FALSE, eval = FALSE
## Save sample file
use_data(arc_weather, overwrite = TRUE)

