#' @importFrom tibble tibble
NULL

#' IMF Primary Commodity Price Data for Sugar
#'
#' This is primary commodity price data for sugar globally,
#'  in the United States, and in Europe for every month from 1980 to (roughly)
#'  the present. Prices are nominal U.S. cents per pound and are
#'  not seasonally adjusted ("NSA").
#'
#' @format A data frame with 1,298 observations on the following 3 variables.
#' \describe{
#' \item{\code{date}}{a date}
#' \item{\code{category}}{the category (either the U.S., global, or Europe)}
#' \item{\code{value}}{the price of sugar in U.S. cents per pound (NSA, nominal)}
#' }
#'
#' @details The price data for Europe do not appear to be updated as regularly as the
#' global and U.S. prices. Thus, the last month in the data for Europe are June 2017.
#' For that reason, I elected to make a data set of these data for posterity's sake.
#'
#' @source International Monetary Fund
#'
"sugar_price"
