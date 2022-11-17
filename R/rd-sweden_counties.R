#' @importFrom tibble tibble
NULL

#' The Counties of Sweden
#'
#' A simple data set on Sweden's counties.
#'
#' @format A data frame with 21 observations on the following 6 variables.
#' \describe{
#' \item{\code{iso}}{the ISO 3166-2 code for the county}
#' \item{\code{nuts}}{the Nomenclature of Territorial Units for Statistics (NUTS) code for the county}
#' \item{\code{county}}{the name of the county, in Swedish}
#' \item{\code{centre}}{the administrative centre, or centres, of the county}
#' \item{\code{area}}{the size of the county in square kilometers}
#' \item{\code{pop2019}}{the size of the county in 2019}
#' }
#'
#' @details This is a simple Wikipedia scrape job from 7 November 2022.
#'
"sweden_counties"
