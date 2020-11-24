#' @importFrom tibble tibble
NULL

#' Sulfur Dioxide Emissions, 1980-2017
#'
#' This data set contains yearly observations by the Environmental Protection Agency
#'  on the concentration of sulfur dioxide in parts per billion, based on 35 sites.
#'  I use this for in-class illustration. Note that the national standard is
#'  75 parts per billion.
#'
#' @format A data frame with 40 observations on the following 4 variables.
#' \describe{
#' \item{\code{year}}{the year}
#' \item{\code{value}}{the mean concentration of sulfur dioxide in the air
#' based on 35 trend sites, in parts per billion}
#' \item{\code{ub}}{the lower bound of the value (10th percentile)}
#' \item{\code{lb}}{the upper bound of the value (90th percentile)}
#' }
#'
#' @source Environmental Protection Agency, 2020. \url{https://www.epa.gov/air-trends/sulfur-dioxide-trends}
#'
#'
"so2concentrations"
