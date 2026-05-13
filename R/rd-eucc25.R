#' @importFrom tibble tibble
NULL

#' European Union Convergence (Maastricht, SGP) Criteria, 2025
#'
#' A data set on fiscal indicators communicating performance against convergence
#'  criteria outlined in the Maastricht Treaty and Stability and Growth Pact (SGP).
#'
#' @format A data frame with 30 observations on the following 4 variables.
#' \describe{
#' \item{\code{geo}}{a Eurostat code}
#' \item{\code{country}}{an English country name for the Eurostat code, where applicable}
#' \item{\code{debtpgdp}}{general government gross debt as a percent of GDP}
#' \item{\code{bbgdp}}{budget balance as a percent of GDP}
#' }
#'
#' @details
#'
#' Data come from Eurostat. Codes for the debt and fiscal balance measures are
#' `teina225` and `teina200`, respectively.
#'
#' `country` is deliberately missing for aggregate indicators made available in
#' Eurostat. This concerns `geo` values of `EA20`, `EA21`, and `EU27_2020`.
#'
#' Budget balance as a percent of GDP is negative in case of deficits and positive
#' in case of surpluses. For example, Portugal's budget surplus in 2025 was about
#' .7% of GDP. Spain's budget deficit was about 2.4% of its GDP.
#'
#' EU criteria oblige member states to not have a budget balance lower than 3%
#' of GDP (i.e. -3%, in this measure) and to not have debt exceed 60% of GDP.
#'
"eucc25"
