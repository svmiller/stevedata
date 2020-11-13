#' @importFrom tibble tibble
NULL

#' Long-Term Price Trends for Computers, TVs, and Related Items
#'
#' These data are a monthly time-series of changes in the consumer price index
#'  relative to a Dec. 1997 starting date for televisions, computers, and related
#'  items. I use this as in-class illustration that globalization has made
#'  consumer electronics cheaper across the board for Americans.
#'
#' @format A data frame with 1,704 observations on the following 3 variables.
#' \describe{
#' \item{\code{date}}{a date}
#' \item{\code{category}}{the particular category (e.g. all items, televisions, etc.)}
#' \item{\code{value}}{the consumer price index (Dec. 1997 = 100)}
#' }
#'
#' @details This is a web-scraping job from the U.S. Bureau of Labor Statistics. Check the source entry.
#'
#' @source \url{https://www.bls.gov/opub/ted/2015/long-term-price-trends-for-computers-tvs-and-related-items.htm}
#'
"LTPT"
