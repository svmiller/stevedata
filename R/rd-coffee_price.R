#' @importFrom tibble tibble
NULL

#' The Primary Commodity Price for Coffee (Arabica, Robustas)
#'
#' This is primary commodity price data for coffee (Arabica, Robustas)
#'  from 1980 to the present. I manually update these data since FRED's
#'  coverage since 2017 has been spotty.
#'
#' @format A data frame with 489 observations on the following 3 variables.
#' \describe{
#' \item{\code{date}}{the date (year-month)}
#' \item{\code{arabica}}{the price (monthly average) of mild Arabica, via
#' International Coffee Organization data, in nominal US cents per pound}
#' \item{\code{robustas}}{the price (monthly average) of Robustas,
#' via International Coffee Organization data, in nominal US cents per pound}
#' }
#'
#' @details Data come from International Monetary Fund (Primary Commodity Prices) and
#' International Coffee Organization. The IMF adds these prices are global and the
#' New York cash price, ex-dock
#'
"coffee_price"
