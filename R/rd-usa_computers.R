#' @importFrom tibble tibble
NULL

#' Percentage of U.S. Households with Computer Access, by Year
#'
#' This is a simple and regrettably incomplete time-series on the percentage
#'  of U.S. households with access to a computer, by year.
#'
#' @format A data frame with 19 observations on the following 2 variables.
#' \describe{
#'  \item{\code{year}}{the year}
#'  \item{\code{value}}{the estimated percentage of households with access to a computer}
#' }
#'
#' @details Data are spotty and regrettably this is not a perfect time-series.
#' However, it is useful for an in-class exercise to show that the proliferation of
#' household computers (over time) in the United States comes in part because of
#' globalization. Use it for that purpose. The data are reasonably faithful, but don't
#' treat it as gospel. Exact sourcing available upon request.
#'
#' @source Various: U.S. Census Bureau, Current Population Survey, and
#' American Community Survey
#'
"usa_computers"
