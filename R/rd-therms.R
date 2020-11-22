#' @importFrom tibble tibble
NULL

#' Thermometer Ratings for Donald Trump and Barack Obama
#'
#' A data set on thermometer ratings for Donald Trump and Barack Obama in 2020.
#'  I use these data for in-class illustration of
#'  central limit theorem. Basically: the sampling distribution of a
#'  population is normal, even if the underlying population is decidedly
#'  not.
#'
#' @format A data frame with 3080 observations on the following 2 variables.
#' \describe{
#' \item{\code{fttrump1}}{a thermometer rating for Donald Trump [0:100]}
#' \item{\code{ftobama1}}{a thermometer rating for Barack Obama [0:100]}
#' }
#'
#' @source American National Election Studies (ANES) Exploratory Testing Survey (ETS)
#'
#' @details The survey period was April 10-18, 2020 and was done entirely online.
#'
"therms"
