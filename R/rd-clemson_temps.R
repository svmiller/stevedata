#' @importFrom tibble tibble
NULL

#' Daily Clemson Temperature Data
#'
#' This data set contains daily temperatures (highs) for Clemson, South Carolina
#'  from Jan. 1, 1930 to the end of the most recent calendar year.
#'  The goal is to update this periodically with new data for
#'  as long as I live in this town.
#'
#' @format A data frame with 32,777 observations on the following 8 variables.
#' \describe{
#' \item{\code{date}}{the date}
#' \item{\code{year}}{the year}
#' \item{\code{month}}{the month}
#' \item{\code{day}}{the day of the month}
#' \item{\code{yd}}{the day of the year}
#' \item{\code{value}}{the daily high in Celsius*10. I don't know why NOAA does it this way, but there you go.}
#' \item{\code{tmax}}{the daily high, adjusted to Fahrenheit}
#' }
#'
#' @details Data obtained from NOAA, via the \pkg{rnoaa} package. The station identifier is \code{GHCND:USC00381770} for added context.
#'
"clemson_temps"
