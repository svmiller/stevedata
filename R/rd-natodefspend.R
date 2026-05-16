#' @importFrom tibble tibble
NULL

#' Defense Expenditures for NATO States
#'
#' A data set on military ("defense") expenditures for NATO members in 2015 and
#'  2024.
#'
#' @format A data frame with 32 observations on the following 7 variables.
#' \describe{
#' \item{\code{state}}{an English country name for the state}
#' \item{\code{iso3c}}{a three-character ISO code for the state}
#' \item{\code{joined}}{the year the state joined NATO}
#' \item{\code{milexp15}}{military expenditures (current USD) in 2015}
#' \item{\code{gdp15}}{gross domestic product (current USD) in 2015}
#' \item{\code{milexp24}}{military expenditures (current USD) in 2024}
#' \item{\code{gdp24}}{gross domestic product (current USD) in 2024}
#' }
#'
#' @details
#'
#' Data come by way of a \code{WDI()} call from the \pkg{WDI} package. Military
#' expenditures originally reported by the Stockholm International Peace
#' Research Institute. Gross domestic product comes from various sources as
#' disseminated by the World Bank.
#'
"natodefspend"
