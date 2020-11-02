#' @importFrom tibble tibble
NULL

#' Fake Data for a Logistic Regression
#'
#' This is a simple fake data set to illustrate a logistic regression.
#'
#' @format A data frame with 10000 observations on the following 2 variables.
#' \describe{
#' \item{\code{x}}{a five-item functionally ordered categorical variable}
#' \item{\code{y}}{a binary variable that is either 0 or 1}
#' }
#'
#' @details The data are generated such that the outcome \code{y} is a logistic
#' function of the \code{x} variable and come from a \code{rbinom()} call. The
#' estimated natural logged odds of \code{y} when \code{x} is 0 is -2.8. Each
#' unit increase in \code{x} is simulated to increase the natural logged odds of
#' \code{y} by 1.4. This example is very much patterned off a similar fake data
#' set that Pollock (2012) uses to teach about logistic regression. In his case,
#' \code{x} is a stand-in for hypothetical education categories and \code{y} is
#' whether this fake person voted or not.
#'
"fakeLogit"
