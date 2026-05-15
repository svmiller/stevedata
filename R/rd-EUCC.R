#' @importFrom tibble tibble
NULL

#' European Union Convergence (Maastricht, SGP) Criteria
#'
#' A data set on fiscal indicators communicating performance against convergence
#'  criteria outlined in the Maastricht Treaty and Stability and Growth Pact (SGP).
#'
#' @format A data frame with 30 observations on the following 6 variables.
#' \describe{
#' \item{\code{geo}}{a Eurostat code}
#' \item{\code{geoname}}{an English country name or other identifier for the Eurostat code}
#' \item{\code{agg}}{a dummy variable indicating whether the \code{geo} entry is some kind of aggregate of countries}
#' \item{\code{gdp}}{GDP in millions of Euros}
#' \item{\code{debt}}{general government gross debt, nominal, in millions of Euros}
#' \item{\code{bb}}{budget balance (i.e. deficit/surplus), nominal, in millions of Euros}
#' }
#'
#' @details
#'
#'
#'
#' Data come from Eurostat. Codes for GDP, debt, fiscal balance measures are
#' `nama_10_gdp`, `teina225` and `teina200`, respectively.  `na_item` for the GDP
#' observations is `B1GQ`. Observations are for 2025. Some GDP numbers are
#' provisional but ultimately fine for this purpose.
#'
#' EU criteria oblige member states to not have a budget balance lower than 3%
#' of GDP (i.e. -3%, in this measure) and to not have debt exceed 60% of GDP.
#'
"EUCC"
