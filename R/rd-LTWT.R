#' @importFrom tibble tibble
NULL

#' "Let Them Watch TV"
#'
#' These data contain price indices for various items for the general urban consumer.
#'  Categories include medical services, college tuition, college textbooks,
#'  child care, housing, food and beverages, all items (i.e. general CPI),
#'  new vehicles, apparel, and televisions. The base period in value was originally
#'  the 1982-4 average, but I converted the base period to January 2000. I use these
#'  data for in-class discussion about how liberalized trade has made consumer
#'  electronics (like TVs) fractions of their past prices. Yet, young adults face
#'  mounting costs for college, child-raising, and health care that government
#'  policy has failed to address.
#'
#' @format A data frame with 2377 observations on the following 3 variables.
#' \describe{
#' \item{\code{date}}{a date}
#' \item{\code{category}}{a factor for the particular category}
#' \item{\code{value}}{the price index. Base: January 2000}
#' }
#'
#' @details Inspiration comes from this AEI chart: \url{http://www.aei.org/publication/chart-of-the-day-century-price-changes-1997-to-2017/}
#'
#' @source Bureau of Labor Statistics, via the \code{blscrapeR} package.
#'
"LTWT"
