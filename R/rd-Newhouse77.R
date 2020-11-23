#' @importFrom tibble tibble
NULL

#' Medical-Care Expenditure: A Cross-National Survey (Newhouse, 1977)
#'
#' These are the data in Newhouse's (1977) simple OLS model from 1977. In
#'  his case, he's trying to explain medical care expenditures as a function of GDP
#'  per capita for these countries. It's probably the easiest OLS model I can find
#'  in print because Newhouse helpfully provides all the data in one simple table.
#'
#' @format A data frame with 13 observations on the following 5 variables.
#' \describe{
#' \item{\code{country}}{a character vector for the country}
#' \item{\code{year}}{a numeric vector for the year}
#' \item{\code{gdppc}}{a numeric vector for the per capita GDP in USD}
#' \item{\code{medsharegdp}}{a numeric vector for the medical care share as percentage of GDP}
#' \item{\code{medexppc}}{a numeric vector for per capita medical care expenditure (in USD)}
#' }
#'
#' @details Table 1 in Newhouse (1977) is well-annotated with background information.
#'
#' @references Newhouse, Joseph P. 1977. "Medical-Care Expenditure: A Cross-National Survey." \emph{Journal of Human Resources} 12(1): 115-125.
#'
"Newhouse77"
