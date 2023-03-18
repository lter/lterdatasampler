#' Ice Freeze and Thaw Dates for Madison, WI Area Lakes (1853 - 2019), North Temperate Lakes LTER
#'
#' Data includes lake name, dates of freeze-up and thaw, and duration of ice cover of lakes in the Madison, WI area. Ice cover duration is the number of days that a lake is frozen, excluding periods where the lake thaws before refreezing again. Lakes Monona and Wingra are considered to be frozen if they are completely ice covered,
#' while Lake Mendota is considered to be frozen if there is ice from Picnic Point to Maple Bluff and more than 50% of the lake is covered by ice.
#'
#' @format A tibble with 431 rows and 5 variables
#' \describe{
#'   \item{lakeid}{a factor denoting the lake name}
#'   \item{ice_on}{a date denoting the freeze date of each lake}
#'   \item{ice_off}{a date denoting the ice breakup date of each lake}
#'   \item{ice_duration}{a number denoting the number of days between the freeze and breakup dates of each lake}
#'   \item{year}{a number denoting the year of observation}
#'   }
#' @source {Magnuson, J.J., S.R. Carpenter, and E.H. Stanley. 2021. North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current ver 35. Environmental Data Initiative.}
#' \doi{10.6073/pasta/ab31f2489ee436beb73fc8f1d0213d97}
"ntl_icecover"



