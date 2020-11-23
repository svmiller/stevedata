#' @importFrom tibble tibble
NULL

#' Global Average Absolute Sea Level Change, 1880–2015
#'
#' These data describe how sea level has changed over time, in both
#'  relative and absolute terms. Absolute sea level change refers to
#'  the height of the ocean surface regardless of whether nearby
#'  land is rising or falling.
#'
#' @format A data frame with 136 observations on the following 5 variables.
#' \describe{
#' \item{\code{year}}{the year}
#' \item{\code{adjlev}}{adjusted sea level (in inches)}
#' \item{\code{lb}}{the lower bound of the estimate (in inches)}
#' \item{\code{ub}}{the upper bound of the estimate (in inches)}
#' \item{\code{adjlev_noaa}}{NOAA's adjusted sea level (in inches)}
#' }
#'
#' @source \url{https://www.epa.gov/climate-indicators/climate-change-indicators-sea-level}
#'
#' @references CSIRO (Commonwealth Scientific and Industrial Research Organisation).
#' 2015 update to data originally published in: Church, J.A., and N.J. White. 2011.
#' Sea-level rise from the late 19th to the early 21st century. Surv. Geophys.
#' 32:585–602. \url{http://www.cmar.csiro.au/sealevel/sl_data_cmar.html}.
#'
#' NOAA (National Oceanic and Atmospheric Administration). 2016.
#' Laboratory for Satellite Altimetry: Sea level rise. Accessed June 2016.
#' \url{http://www.star.nesdis.noaa.gov/sod/lsa/SeaLevelRise/LSA_SLR_timeseries_global.php}.
#'
#'
"sealevels"
