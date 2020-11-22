#' @importFrom tibble tibble
NULL

#' Attitudes about Immigration in the World Values Survey
#'
#' A data set on attitudes about immigration for all observations in
#'  the third to sixth wave of the World Values Survey. I use these
#'  data for in-class illustration.
#'
#' @format A data frame with 310,388 observations on the following 6 variables.
#' \describe{
#' \item{\code{s002}}{the World Values Survey wave}
#' \item{\code{s003}}{the World Values Survey country code}
#' \item{\code{country}}{the country name}
#' \item{\code{s020}}{the survey year}
#' \item{\code{uid}}{a unique identifier for the survey respondent}
#' \item{\code{e143}}{an attitude about immigration policy in the World Values Survey}
#' }
#'
#' @details 1 = "let anyone come". 2 = "as long as jobs are available". 3 = "strict limits".
#' 4 = "Prohibit people from coming" for the \code{e143} variable. See \code{?wvs_ccodes} for
#' more information about naming/identifying countries.
#'
"wvs_immig"
