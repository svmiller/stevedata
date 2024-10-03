#' @importFrom tibble tibble
NULL

#' Voting Intentions in the 1988 Chilean Plebiscite
#'
#' A data set on voting intentions in the 1988 Chilean plebiscite, which
#'  ultimately ended the military junta rule of Augusto Pinochet.
#'
#' @format A data frame with 2700 observations on the following 8 variables.
#' \describe{
#' \item{\code{region}}{a character vector for the region of Chile in which the respondent lives}
#' \item{\code{population}}{the population size of the respondent's community}
#' \item{\code{sex}}{a numeric vector that equals 1 if the respondent is a woman}
#' \item{\code{age}}{a numeric vector for the age of the respondent}
#' \item{\code{education}}{a character vector indicating whether the respondent has a primary (P), secondary (S), or post-secondary (PS) education}
#' \item{\code{income}}{a numeric vector for respondent's monthly income (in pesos)}
#' \item{\code{sq}}{a numeric vector for the scale of support for the status quo in Chile}
#' \item{\code{vote}}{a character vector for the vote intention of the respondent (see details)}
#' }
#'
#' @details Data were manually downloaded from John Fox's website. You will see
#' his version of these data as \code{Chile} in the \pkg{carData} package. I
#' changed a few things that are ultimately cosmetic. It's basically this data
#' set.
#'
#' The vote variable communicates vote intentions, whether to vote "Yes" (Y) to
#' continue the Pinochet regime, to vote "No" (N) to end the Pinochet regime, to
#' abstain (A) from a vote, or whether the respondent is undecided (U). 168
#' respondents did not answer the question.
#'
#' Fox (2008, 336) does not say much about the status quo variable, and on what
#' scale it is. It can only be easily inferred that higher values = more support
#' for the status quo.
#'
#' @references
#'
#' Fox, John. 2008. *Applied Regression Analysis and Generalized Linear Models*
#' (2nd ed.). Los Angeles, CA: Sage.
#'
"chile88"
