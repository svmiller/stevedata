#' @importFrom tibble tibble
NULL

#' NYSE Arca Steel Index data, 2017–present
#'
#' Daily data on the NYSE Arca Steel Index. These data are useful for me in
#'  teaching how Trump's 2018 steel tariffs didn't do much good for the steel industry.
#'
#' @format A data frame with 966 observations on the following 6 variables.
#' \describe{
#' \item{\code{date}}{the date}
#' \item{\code{close}}{the closing price}
#' \item{\code{open}}{the opening price}
#' \item{\code{high}}{the daily high in that day's trading}
#' \item{\code{low}}{the daily low in that day's trading}
#' }
#'
#' @details These data are taken from \code{investing.com}.
#' See: \url{https://www.investing.com/indices/arca-steel-historical-data}
#'

"Arca"
