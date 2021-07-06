#' ---
#' title: "Data Preparation"
#' ---

#' ### Download the raw data from EDI.org

#+ download_data, eval=FALSE
library(usethis)
library(metajam)
library(tidyverse)
library(janitor)

# Health and mycorrhizal colonization response of sugar maple (Acer saccharum) seedlings to calcium addition in Watershed 1 at the Hubbard Brook Experimental Forest

# Main URL: https://doi.org/10.6073/pasta/0ade53ede9a916a36962799b2407097e
hbr_url <-
  "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-hbr.157.3&entityid=5c415a399b00430d35d13c31312f1e53"

# Download the data package with metajam
hbr_download <-
  download_d1_data(data_url = hbr_url, path = tempdir())

#' ### Data cleaning
#+ data sampling, eval=FALSE
# Read in data
hbr_files <- read_d1_files(hbr_download)
hbr_maples_raw <- hbr_files$data
hbr_maples <- hbr_maples_raw %>%
  clean_names() %>%
  select(-root_area,-root_length,-root_dry_mass) %>%
  # change values of -999 to NA
  mutate(
    leaf1area = replace(leaf1area, which(leaf1area < 0), NA),
    leaf2area = replace(leaf2area, which(leaf2area < 0), NA),
    corrected_leaf_area = replace(corrected_leaf_area, which(corrected_leaf_area < 0), NA),
    watershed = as.factor(watershed),
    elevation = as.factor(elevation),
    transect = as.factor(transect),
    sample = as.factor(sample)
  )


#+ save data, include=FALSE, eval = FALSE
## Save sample file
use_data(hbr_maples, overwrite = TRUE)
