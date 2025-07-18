#' @importFrom tibble tibble
NULL

#' British Attitudes Toward Immigration (2018-19)
#'
#' This is a replication data originally set to accompany a blog post and
#'  presentation to students at the University of Nottingham in March 2020.
#'  However, COVID-19 led to the cancellation of the talk.
#'
#' @format A data frame with 1,905 observations on the following 19 variables.
#' \describe{
#' \item{\code{name}}{a character for the name of the survey}
#' \item{\code{essround}}{a numeric for the ESS round}
#' \item{\code{edition}}{a character for the particular edition of the ESS round}
#' \item{\code{idno}}{a numeric/unique identifier}
#' \item{\code{cntry}}{a character vector for the country (i.e. the UK)}
#' \item{\code{region}}{a character vector for the region of the UK the respondent lives}
#' \item{\code{brncntr}}{a numeric vector for if the respondent was born in the UK}
#' \item{\code{stintrvw}}{a Date for the interview start date}
#' \item{\code{endintrvw}}{a Date for the interview end date}
#' \item{\code{imbgeco}}{a numeric vector for if respondent thinks immigrants are generally good or bad for UK's economy. Higher values = good}
#' \item{\code{imueclt}}{a numeric vector for if respondent thinks immigrants enrich or undermine UK's culture. Higher values = enrich more than undermine}
#' \item{\code{imwbcnt}}{a numeric vector for if respondent thinks immigrants make UK a better place to live. Higher values = better place to live}
#' \item{\code{immigsent}}{a numeric vector for immigration sentiment (i.e. \code{imbgeco} +
#' \code{imueclt} + \code{imwbcnt}). Higher values = more pro-immigration sentiment}
#' \item{\code{agea}}{a numeric vector for the respondent's age in years}
#' \item{\code{female}}{a numeric vector for whether the respondent is a woman}
#' \item{\code{eduyrs}}{a numeric vector for total years of education for the respondent}
#' \item{\code{uempla}}{a numeric vector for whether the respondent is currently unemployed but seeking work}
#' \item{\code{hinctnta}}{a numeric vector for household income in deciles}
#' \item{\code{lrscale}}{a numeric vector for the ideology of the respondent on an 11-point scale, from 0 to 10}
#' }
#'
#' @details See accompanying blog post at \url{https://svmiller.com/blog/2020/03/what-explains-british-attitudes-toward-immigration-a-pedagogical-example/}.
#'
#' @source European Social Survey, Round 9
#'
"ESS9GB"
