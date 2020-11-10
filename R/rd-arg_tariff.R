#' @importFrom tibble tibble
NULL

#' Simple Mean Tariff Rate for Argentina
#'
#' Simple mean tariff rate for Argentina, starting in 1980.
#'  The goal is to keep these data current.
#'
#' @format A data frame with three variables:
#' \describe{
#' \item{\code{country}}{country name (Argentina)}
#' \item{\code{year}}{the year}
#' \item{\code{tariffrate}}{the simple mean tariff rate for Argentina on all products (as a percentage)}
#' }
#'
#' @details Data come from various sources. World Bank estimates are used for
#' 1980-1984 and 2010-2018, but see also Lora's (2012) report for the Inter-American
#' Development Bank. The 1980-1984 estimates are actually means for 1980-1 and 1982-4 via
#' Laird and Nogues' (1989) article in the World Bank Economic Review.
#'
"arg_tariff"
