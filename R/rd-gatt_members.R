#' @importFrom tibble tibble
NULL

#' The 128 Countries That Had Signed GATT by 1994
#'
#' A data set on GATT membership.
#'
#' @format A data frame with 128 observations on the following 3 variables.
#' \describe{
#' \item{\code{country}}{a character vector for a country name}
#' \item{\code{iso3c}}{a three-character ISO code}
#' \item{\code{date}}{the date the country joined GATT}
#' }
#'
#' @details
#'
#' Data come from the World Trade Organization. Three-character ISO codes should
#' be used with some caution as they mostly match what these states are now, if
#' not what they were when they signed GATT (see: Benin, Democratic Republic of
#' Congo). The conspicuous exception here is Yugoslavia, which has Yugoslavia's
#' three-character ISO code of \code{YUG}
#'
"gatt_members"
