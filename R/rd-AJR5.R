#' @importFrom tibble tibble
NULL

#' The Colonial Origins of Comparative Development (Table 5)
#'
#' A data set to reproduce Table 5 in Acemoglu et al. (2001).
#'
#' @format A data frame with 163 observations on the following variables.
#' \describe{
#' \item{\code{shortnam}}{a three-character code, ostensibly an ISO code}
#' \item{\code{catho80}}{the percentage of the country that is estimated to be Catholic}
#' \item{\code{muslim80}}{the percentage of the country that is estimated to be Muslim}
#'  \item{\code{lat_abst}}{the latitude of the country (absolute value)}
#'   \item{\code{no_cpm80}}{the percentage of the country that is esimated to be another religion}
#' \item{\code{f_brit}}{a dummy variable indicating whether the observation is a former British colony}
#' \item{\code{f_french}}{a dummy variable indicating whether the observation is a former French colony}
#' \item{\code{avexpr}}{average protection against expropriation risk, 1985-1995}
#' \item{\code{sjlofr}}{a dummy variable for whether the legal origin of the country's commercial code is French}
#' \item{\code{logpgp95}}{log-transformed GDP per capita (PPP) in 1995}
#' \item{\code{logem4}}{log-transformed European settler mortality}
#' \item{\code{baseco}}{a dummy variable indicating whether the observation is in the 'base sample'}
#' }
#'
#' @details
#'
#' Acemoglu et al. (2001) are fairly transparent about what their data are and
#' where you can read more about the sources they're using. La Porta et al.
#' (1999) will feature prominently in some of these variables.
#'
#' @references
#'
#' Acemoglu, Daron, Simon Johnson, and James A. Robinson. 2001. "The Colonial
#' Origins of Comparative Development: An Empirical Investigation". *American
#' Economic Review* 91(5): 1369--1401.
#'
#' La Porta, Rafael, Florencio Lopez-de-Silanes, Andrei Shleifer and Robert W.
#' Vishny. 1999. "The Quality of Government" *Journal of Law, Economics, and
#' Organization* 15(1): 222-79.
#'
"AJR5"
