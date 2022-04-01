#' @importFrom tibble tibble
NULL

#' Land-Ocean Temperature Index, 1880-2020
#'
#' These data contain monthly mean temperature anomalies expressed as deviations
#'  from the corresponding 1951-1980 means. They are useful for showing
#'  how we can measure climate change.
#'
#' @format A data frame with 1,692 observations on the following 2 variables.
#' \describe{
#'  \item{\code{date}}{a date, mostly to contain information for the year and month}
#'  \item{\code{value}}{the mean temperature anomaly as deviation from corresponding 1951-1980 mean}
#' }
#'
#' @details Data are updated through most recent month, at least for last time I updated it.
#' Data represent combined land-surface air and sea-surface water temperature anomalies.
#' Of note: the day value in the \code{date} column has no real value.
#' It was just a way of combining data that are aggregated by year and month.
#'
#' @source National Aeronautics and Space Administration's Goddard Institute for Space Studies.
#'
"LOTI"
