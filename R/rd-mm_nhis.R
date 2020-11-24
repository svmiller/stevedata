#' @importFrom tibble tibble
NULL

#' Data from the 2009 National Health Interview Survey (NHIS)
#'
#' These are data from the 2009 NHIS survey. People who have read
#'  \emph{Mastering 'Metrics} should recognize these data. They're
#'  featured prominently in that book and the authors' discussion of
#'  random assignment and experiments.
#'
#' @format A data frame with 18790 observations on the following 10 variables.
#' \describe{
#' \item{\code{fml}}{is the respondent a woman?}
#' \item{\code{hi}}{a numeric vector for whether respondent has at least some health insurance}
#' \item{\code{hlth}}{a numeric vector for a health index, broadly understood}
#' \item{\code{nwhite}}{is the respondent not white?}
#' \item{\code{age}}{the respondent's age in years}
#' \item{\code{yedu}}{the respondent's total years of education}
#' \item{\code{famsize}}{the size of the respondent's family}
#' \item{\code{empl}}{is the respondent employed}
#' \item{\code{inc}}{the respondent's household/family income}
#' \item{\code{perweight}}{a numeric vector for weight}
#' }
#'
#' @details Data are already cleaned in a way that facilitates an easy
#' replication of Table 1.1 in \emph{Mastering 'Metrics}. Check
#' \url{http://www.masteringmetrics.com} for more information.
#'
#' @source National Health Interview Survey (2009).
#'
"mm_nhis"
