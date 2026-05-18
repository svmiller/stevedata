#' @importFrom tibble tibble
NULL

#' Defence Expenditure of NATO Countries (2014-2025)
#'
#' A data set on military ("defense") expenditures for NATO members from 2014
#' to 2025.
#'
#' @format A data frame with 384 observations on the following 6 variables.
#' \describe{
#' \item{\code{state}}{an English country name for the state}
#' \item{\code{iso3c}}{a three-character ISO code for the state}
#' \item{\code{joined}}{the year the state joined NATO}
#' \item{\code{year}}{the observation year}
#' \item{\code{defexp}}{defense expenditures in millions constant (2021) USD}
#' \item{\code{gdp}}{gross domestic product (GDP) in millions constant (2021) USD}
#' }
#'
#' @details
#'
#' Observations for 2024 and 2025 are considered estimates based on information
#' made available prior to 3 June 2025.
#'
#' Iceland has no armed forces and is thus NA for defense expenditures. Its NATO
#' contributions have been more about its location and strategic use of its
#' territory for European (and, thus, Icelandic) security. It also makes
#' financial contributions and contributions of civilian personnel to the
#' organization, but those do not reflect in traditional measures of defense
#' spending (at least as reported by NATO).
#'
#' In cases where a fiscal year spans two calendar years, the calendar year with
#' the most months is considered the referent year. For example, the 2021-22
#' Canadian fiscal year ran from 1 April 2021 to 31 March 2022. Most of those
#' months were in 2021 and thus the Canadian fiscal year would count toward 2021.
#' The American 2021-22 fiscal year ran from 1 October 2021 to 30 September 2022.
#' More months of the fiscal year were in 2022 and, thus, observations collected
#' from the U.S. for that fiscal year would count toward 2022.
#'
#' @references
#'
#' \url{https://www.nato.int/en/news-and-events/articles/news/2025/08/28/defence-expenditure-of-nato-countries-2014-2025}
#'
"natodefspend"
