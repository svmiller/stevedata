#' @importFrom tibble tibble
NULL

#' Economic Determinants of Political Unrest (Parvin, 1973)
#'
#' A data set on the economic determinants of political unrest, for replicating
#'  a publication from 1973.
#'
#' @format A data frame with 26 observations on the following 9 variables.
#' \describe{
#' \item{\code{country}}{a character vector for a country name}
#' \item{\code{levviol}}{a numeric vector for the level of violence}
#' \item{\code{pci}}{a numeric vector for per capita income}
#' \item{\code{incdist}}{a numeric vector for income distribution}
#' \item{\code{d_pci}}{a numeric vector for per capita income growth}
#' \item{\code{sem}}{a numeric vector for socioeconomic mobility}
#' \item{\code{comint}}{a numeric vector for communication intensity}
#' \item{\code{concfac}}{a numeric vector for concentration factor}
#' \item{\code{pop}}{a numeric vector for population size}
#' }
#'
#' @details The bulk of these data come from Russett's (1964) *World Handbook
#' of Political and Social Indicators*. The data themselves are transcribed from
#' the appendix of the article, which allows a replication of the results that
#' Parvin (1973) reports. You should read that article for more information as
#' to what's happening and for what purpose.
#'
#' I did not catch Parvin (1973) mentioning this in the article, but there must
#' be some kind of additive constant in the level of  violence variable because
#' the logarithmic transformations he reports would be undefined for the
#' observations (like Denmark) where the level of violence is zero. The easiest
#' way to approximate whatever Parvin (1973) did is to add .001 to the level of
#' violence variable before taking its logarithmic transformation. That would
#' allow a near perfect replication of Table 1.
#'
#' It should go without saying that the population reported for Belgium, in the
#' appendix, is likely a transcription error. Belgium's population is reported
#' here as 9184, not "91.84.00".
#'
#' The United Arab Republic was the short-lived union of Egypt and Syria, if you
#' were curious what that is in the data.
#'
#' @references
#'
#' Parvin, Manoucher. 1973. "Economic Determinants of Political Unrest: An
#' Econometric Approach". *Journal of Conflict Resolution* 17(2): 271--96.
#'
"Parvin73"
