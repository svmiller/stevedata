#' @importFrom tibble tibble
NULL

#' Penn World Table (9.1) Macroeconomic Data for Select Countries, 1950-2017
#'
#' These are some macroeconomic data for 21 select (rich) countries. I've used
#'  these data before to discuss issues of grouping and skew in cross-sectional data.
#'
#' @format A data frame with 1428 observations on the following 7 variables.
#' \describe{
#' \item{\code{country}}{the country name}
#' \item{\code{isocode}}{The country's ISO code}
#' \item{\code{year}}{a numeric vector for the year}
#' \item{\code{pop}}{Population in millions}
#' \item{\code{hc}}{Index of human capital per person, based on years of schooling and returns to education}
#' \item{\code{rgdpna}}{Real GDP at constant 2011 national prices (in million 2011 USD)}
#' \item{\code{labsh}}{Share of labor compensation in GDP at current national prices}
#' }
#'
#' @source Taken from the \code{pwt9} package. See: \url{http://www.ggdc.net/pwt/}
#'
"pwt_sample"
