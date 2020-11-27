#' @importFrom tibble tibble
NULL

#' U.S. Trade and GDP, 1790-2018
#'
#' A yearly data set on U.S. trade and GDP from 1790 to 2018. Data also include
#'  a population variable to facilitate per capita adjustments, if the user
#'  sees it useful.
#'
#' @format A data frame with 229 observations on the following 5 variables.
#' \describe{
#' \item{\code{year}}{the year}
#' \item{\code{gdpb}}{U.S. GDP (nominal, in billions)}
#' \item{\code{pop}}{Population of the U.S. (in thousands)}
#' \item{\code{impo}}{The value of U.S. imports (in billions)}
#' \item{\code{expo}}{The value of U.S. exports (in billions)}
#' }
#'
#' @details Data come from various sources (see, especially: \url{http://econdataus.com/tradeall.html}). Post-1989
#' data come from the U.S. Census Bureau. 2018 GDP comes from the IMF. 2018 population estimate comes from
#' the U.S. Census Bureau.
#'
"usa_tradegdp"
