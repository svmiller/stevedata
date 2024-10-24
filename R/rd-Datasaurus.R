#' @importFrom tibble tibble
NULL

#' The Datasaurus Dozen
#'
#' An illustrative exercise in never trusting the summary statistics without
#'  also visualizing them.
#'
#' @format A data frame with 1,846 observations on the following 3 variables.
#' \describe{
#' \item{\code{dataset}}{the particular data set, one of 12}
#' \item{\code{x}}{a random variable}
#' \item{\code{y}}{another random variable}
#' }
#'
#' @details Data were created by Alberto Cairo to illustrate you should always
#' visualize your data beyond the summary statistics. These are 12 data sets,
#' in long form, each with a mean of \code{x} about 54.26, a mean of \code{y}
#' about 47.83. The standard deviation for \code{x} is about 16.76 and the
#' standard deviation of \code{y} is about 26.93. \code{x} and \code{y} will
#' correlate weakly, about -.06.
#'
#' @author Alberto Cairo, Justin Matejka, George Fitzmaurice
#'
#' @references
#'
#' Matejka, Justin and George Fitzmaurice. 2017. ``Same Stats, Different Graphs:
#' Generating Datasets with Varied Appearance and Identical Statistics
#' through Simulated Annealing.''
#' \emph{ACM SIGCHI Conference on Human Factors in Computing Systems}.

"Datasaurus"
