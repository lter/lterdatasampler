#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
library(tidyverse)
library(lubridate)
library(usethis)
library(metajam)
library(janitor)


# Chemistry of stream water from the Luquillo Mountains
# McDowell, W. 2021. Chemistry of stream water from the Luquillo Mountains ver 4923053.
# Environmental Data Initiative. https://doi.org/10.6073/pasta/c6c35d45f7b25baac164acf42a40e95e (Accessed 2021-09-24).
luq_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-luq.20.4923053&entityid=a05bda0a0af888cc037ff5dd00dafd7e"
stream_chem_path <- download_d1_data(data_url = luq_url, path = tempdir())


#' ### Filter the Data

#' We want to analyze the effect of hurricane Hugo which made landfall in September 1989. We are going to use the period from 1985 to 1994.

#+ data sampling, eval=FALSE
# Read that data
# View(stream_chem$attribute_metadata)
# -9999 is stated a no value in the metadata
stream_chem <- read_d1_files(stream_chem_path)
luq_stream_chem_data <- stream_chem$data

# Filter from 1987 to 1992
luq_streamchem <- luq_stream_chem_data %>%
  filter(year(Sample_Date) > 1986 & year(Sample_Date) < 1993) %>%
  select(-Sample_Time, -ends_with("Code")) %>% # remove unwated columns
  clean_names()


#+ save data, include=FALSE, eval = FALSE
## Save sample file
use_data(luq_streamchem, overwrite = TRUE)

