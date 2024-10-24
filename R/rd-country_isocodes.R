#' @importFrom tibble tibble
NULL

#' ISO 3166 Country Codes (Two-Character, Three-Character, Numeric)
#'
#' A data set of country ISO codes, for my ease and for the ease of my students.
#'
#' @format A data frame with 249 observations on the following 4 variables.
#' \describe{
#' \item{\code{iso2c}}{a two-character ISO code}
#' \item{\code{iso3c}}{a three-character ISO code}
#' \item{\code{iso3n}}{a three-digit numeric ISO code}
#' \item{\code{name}}{an English country name}
#' }
#'
#' @details This is a simple, abbreviated port and rename of the
#' \code{ISO3_166_1} data in the \pkg{ISOcodes} package.
#'
"country_isocodes"
