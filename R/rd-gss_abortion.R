#' @importFrom tibble tibble
NULL

#' Abortion Opinions in the General Social Survey
#'
#' This is a toy data set derived from the General Social Survey that I intend
#'  to use for several purposes. First, the battery of abortion items can serve as
#'  toy data to illustrate mixed effects modeling as equivalent to a
#'  one-parameter (Rasch) model. Second, I include some covariates to also do some
#'  basic regressions. I think abortion opinions are useful learning tools for
#'  statistical inference for college students. Third, there's a time-series component
#'  as well for understanding how abortion attitudes have changed over time.
#'
#' @format A data frame with 64,814 observations on the following 18 variables.
#' \describe{
#' \item{\code{id}}{a unique respondent identifier}
#' \item{\code{year}}{the survey year}
#' \item{\code{age}}{the respondent's age in years}
#' \item{\code{race}}{the respondent's race, as character variable}
#' \item{\code{sex}}{the respondent's gender, as character variable}
#' \item{\code{hispaniccat}}{the respondent's Hispanic ethnicity, as character variable}
#' \item{\code{educ}}{how many years the respondent spent in school}
#' \item{\code{partyid}}{the respondent's party identification, as character variable}
#' \item{\code{relactiv}}{the self-reported religious activity of the respondent on a 1:11 scale}
#' \item{\code{abany}}{a binary variable that equals 1 if the respondent thinks abortion
#' should be legal for any reason. 0 indicates no support for abortion for any reason.}
#' \item{\code{abdefect}}{a numeric vector that equals 1 if the respondent thinks
#'  abortion should be legal if there is a serious defect in the fetus.
#'  0 indicates no support for abortion in this circumstance.}
#' \item{\code{abnomore}}{a numeric vector that equals 1 if the respondent
#' thinks abortion should be legal if a woman is pregnant but wants no
#'  more children. 0 indicates no support for abortion in this circumstance.}
#' \item{\code{abhlth}}{a numeric vector that equals 1 if the respondent
#' thinks abortion should be legal if a pregnant woman's health is in danger.
#'  0 indicates no support for abortion in this circumstance.}
#' \item{\code{abpoor}}{a numeric vector that equals 1 if the respondent
#' thinks abortion should be legal if a pregnant woman is poor and cannot afford
#' more children. 0 indicates no support for abortion in this circumstance.}
#' \item{\code{abrape}}{a numeric vector that equals 1 if the respondent thinks
#' abortion should be legal if the woman became pregnant because of a rape.
#' 0 indicates no support for abortion in this circumstance.}
#' \item{\code{absingle}}{a numeric vector that equals 1 if the respondent thinks
#' abortion should be legal if a pregnant woman is single and does not want to
#' marry the man who impregnated her. 0 indicates no support for abortion
#' in this circumstance.}
#' \item{\code{pid}}{\code{partyid} recoded so that 7 = NA}
#' \item{\code{hispanic}}{a dummy variable that equals 1 if the respondent is any way Hispanic}
#' }
#'
#' @details Data include all General Social Survey observations from 1972 to 2018 for
#' these variables. Be mindful of missing data.
#'
"gss_abortion"
