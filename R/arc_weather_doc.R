#' Daily weather data from Toolik Field Station at Toolik Lake, Alaska (1988 - 2018) from Arctic LTER
#'
#' A subset of daily recorded meteorological data, including mean daily air temperature and windspeed, and daily total precipitation, measured at Toolik Field Station, Alaska (Arctic LTER) from 1988 - 2018.
#'
#' @format A tibble with 11,171 rows and 5 variables:
#' \describe{
#'   \item{date}{a date denoting recorded date}
#'   \item{station}{a character denoting the station}
#'   \item{mean_airtemp}{a number denoting mean daily air temperature in degrees Celsius}
#'   \item{daily_precip}{a number denoting total daily precipitation in millimeters}
#'   \item{mean_windspeed}{a number denoting daily mean windspeed in meters per second}
#' }
#' @source {Shaver, G. 2019. A multi-year DAILY weather file for the Toolik Field Station at Toolik Lake, AK starting 1988 to present. ver 4. Environmental Data Initiative.} \url{https://doi.org/10.6073/pasta/ce0f300cdf87ec002909012abefd9c5c}
#' @source {Arctic LTER website:} \url{https://arc-lter.ecosystems.mbl.edu/}
"arc_weather"

