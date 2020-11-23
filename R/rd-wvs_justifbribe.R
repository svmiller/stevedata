#' @importFrom tibble tibble
NULL

#' Attitudes about the Justifiability of Bribe-Taking in the World Values Survey
#'
#' A data set on attitudes about the justifiability of bribe-taking for all
#'  observations in the third to sixth wave of the World Values Survey. I use these
#'  data for in-class illustration about seemingly interval-level, but information-poor
#'  measurements.
#'
#' @format A data frame with 348532 observations on the following 6 variables.
#' \describe{
#' \item{\code{s002}}{the World Values Survey wave}
#' \item{\code{s003}}{the World Values Survey country code}
#' \item{\code{country}}{the country name}
#' \item{\code{s020}}{the survey year}
#' \item{\code{uid}}{a unique identifier for the survey respondent}
#' \item{\code{f117}}{an attitude about the justifiability of bribe-taking in the World Values Survey}
#' }
#'
#' @details 1 = "never justifiable". 10 = "always justifiable". Increasing values on this
#' 1-10 scale imply increasing permissiveness for the respondent toward this
#' particular/blatant form of corruption.
#'
"wvs_justifbribe"
