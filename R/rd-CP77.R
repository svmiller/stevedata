#' @importFrom tibble tibble
NULL

#' Education Expenditure Data (Chatterjee and Price, 1977)
#'
#' This is a simple data set provided by Chatterjee and Price (1977, p. 108)
#'  that serves as a known example of heteroscedasticity.
#'
#' @format A data frame with 50 observations on the following 6 variables.
#' \describe{
#'  \item{\code{state}}{a character vector for the state}
#'  \item{\code{region}}{a character vector for the Census region}
#'  \item{\code{urbanpop}}{a numeric vector for the number of residents (per thousand) living in urban areas in 1970}
#'  \item{\code{incpc}}{a numeric vector for income per capita in 1973}
#'  \item{\code{pop}}{a numeric vector for residents (per thousand) under 18 years of age in 1974}
#'  \item{\code{edexppc}}{a numeric vector for per capita public school expenditures in a state, projected for 1975.}
#' }
#'
#' @details I copied these data from the \code{robustbase} package.
#' I just didn't want to make my students install it.
#' Note: I'm pretty sure "NB" was suppose to be "NE" and that
#' "DY" is supposed to be "KY". I made those changes.
#'
#' @references P. J. Rousseeuw and A. M. Leroy (1987) Robust Regression and Outlier Detection; Wiley, p.110, table 16.
#'
"CP77"
