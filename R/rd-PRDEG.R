#' @importFrom tibble tibble
NULL

#' Property Rights, Democracy, and Economic Growth
#'
#' A data set for replicating David Leblang's (1996) analysis on property rights,
#' democracy, and economic growth.
#'
#' @format A data frame with 147 observations on the following 10 variables.
#' \describe{
#' \item{\code{levine}}{a numeric vector that serves as a cross-section identifier}
#' \item{\code{country}}{a character vector for the country}
#' \item{\code{decade}}{a numeric vector for a decade}
#' \item{\code{private}}{a numeric vector for credit allocated to private enterprise}
#' \item{\code{rgdp}}{a numeric vector for the initial level of real per capita GDP}
#' \item{\code{democ}}{a numeric vector for the level of democracy}
#' \item{\code{pri}}{a numeric vector for primary school attainment}
#' \item{\code{sec}}{a numeric vector for secondary school attainment}
#' \item{\code{grow}}{a numeric vector for per capita growth rate}
#' \item{\code{xcontrol}}{a numeric vector for exchange controls}
#' }
#'
#' @details Data come Joshua Alley's Github repository on cross-sectional OLS
#' regressions. Please read David Leblang's (1996) article for some more detail
#' about the variables included in the model.
#'
#' @references Leblang, David. 1996. "Property Rights, Democracy, and Economic Growth." 49(1): 5-26.
#'
"PRDEG"
