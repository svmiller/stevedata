#' @importFrom tibble tibble
NULL

#' Syncing Word Values Survey Country Codes with CoW Codes
#'
#' A simple data set that syncs World Values Survey country codes (\code{s003})
#'  with corresponding country codes from the Correlates of War state system
#'  membership data.
#'
#' @format A data frame with 112 observations on the following 3 variables.
#' \describe{
#' \item{\code{s003}}{the World Values Survey country code}
#' \item{\code{country}}{a character vector for the corresponding country name}
#' \item{\code{ccode}}{the equivalent country code from the Correlates of War state system membership data}
#' }
#'
#' @details \url{http://svmiller.com/blog/2015/06/syncing-word-values-survey-country-codes-with-cow-codes/}
#'
"wvs_ccodes"
