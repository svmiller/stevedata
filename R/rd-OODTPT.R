#' @importFrom tibble tibble
NULL

#' Data for "Optimal Obfuscation: Democracy and Trade Policy Transparency"
#'
#' A data set for replicating an argument about the relationship between democracy
#' and tariffs/non-tariff trade barriers.
#'
#' @format A data frame with 75 observations on the following 16 variables.
#' \describe{
#' \item{\code{country}}{a character vector for the country}
#' \item{\code{isocode}}{a character vector for the three-character ISO code of the country}
#' \item{\code{tariff}}{the mean statutory most favored nation tariff rate}
#' \item{\code{corecov}}{the core non-tariff barrier coverage ratio}
#' \item{\code{qualcov}}{the quality non-tariff barrier coverate ratio}
#' \item{\code{polity}}{the familiar [-10,10] Polity measure of democracy}
#' \item{\code{iec}}{the index of electorcal competitiveness from the World Bank}
#' \item{\code{lngdppc}}{real GDP per capita in 1995 dollars}
#' \item{\code{lngdp}}{real GDP in 1995 dollars}
#' \item{\code{lnexpgdp}}{export dependence (i.e. export/GDP ratio)}
#' \item{\code{reer}}{real effective exchange rate}
#' \item{\code{growth}}{GDP per capita growth rate}
#' \item{\code{dimpgdp}}{the change in the import/GDP ratio over the past three years}
#' \item{\code{lngovcons}}{the log of country's government consumption spending as a percentage of GDP}
#' \item{\code{gatt}}{a dummy variable for GATT membership}
#' \item{\code{avgtar}}{the country's average most favored nation tariff rate}
#' }
#'
#' @details Data downloaded Joshua Alley's Github repository on simple cross-sectional
#' OLS models. These were originally two separate Stata files that I merged into one.
#' Please read the Kono (2006) article for more information.
#'
#' @references Kono, Daniel. 2006. "Optimal Obfuscation: Democracy and Trade Policy Transparency"
#' *American Political Science Review* 100(3): 369-384.
#'
"OODTPT"
