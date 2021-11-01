#' American Pika (Ochotona princeps) Stress and Habitat Measurements (2018), Niwot Ridge LTER
#'
#' Niwot Ridge American pika (Ochotona princeps) stress data collected every two weeks from June-September 2018. Stress was measured by observing the amount of glucocorticoid metabolite present in pika feces and sex was determined via genetic analysis of the fecal sample.
#'
#' @format A tibble with 109 rows and 7 variables
#' \describe{
#'   \item{date}{a date denoting the observation date of the fecal sample}
#'   \item{site}{a factor denoting the location where the fecal sample was collected within Niwot Ridge}
#'   \item{station}{a factor denoting the sample station where the fecal sample was collected}
#'   \item{utm_easting}{a number denoting the GPS E-W coordinate of the sampling station as Universal Transverse Mercator easting; NAD83, Zone 13. Measured in meters.}
#'   \item{utm_northing}{a number denoting the GPS N-S coordinate of the sampling stations as Universal Transverse Mercator northing; NAD83, Zone 13. Measured in meters.}
#'   \item{sex}{a factor denoting the sex of the observed pika}
#'   \item{concentration_pg_m}{a number denoting the glucocorticoid metabolite (GCM) concentration in picogram GCM/gram dry pika feces}
#'   \item{elev_m}{a number denoting the elevation in meters of the sampling station where the fecal sample was collected}
#' }
#' @source {Whipple, A. and Niwot Ridge LTER. 2020. Physiological stress of American pika (Ochotona princeps) and associated habitat characteristics for Niwot Ridge, 2018 - 2019 ver 1. Environmental Data Initiative.}
#' \url{https://doi.org/10.6073/pasta/9f95baf55f98732f47a8844821ff690d}

"nwt_pikas"
