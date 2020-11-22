#' @importFrom tibble tibble
NULL

#' Anscombe's (1973) Quartets
#'
#' These are four x-y data sets, combined into a long format, which have the
#'  same traditional statistical properties (mean, variance, correlation,
#'  regression line, etc.). However, they look quite different.
#'
#' @format A data frame with 44 observations on the following 3 variables.
#' \describe{
#' \item{\code{group}}{a categorical identifier for the quartet}
#' \item{\code{x}}{a continuous variable}
#' \item{\code{y}}{a continuous variable}
#' }
#'
#' @details Data come default in R, but I elected to change the format to be
#' a bit more accessible.
#'
#' @references Anscombe, Francis J. (1973). "Graphs in Statistical Analysis." \emph{The American Statistician} 27: 17–21.
#'
"quartets"
