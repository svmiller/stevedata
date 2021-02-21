#' @importFrom tibble tibble
NULL

#' The Gender Pay Gap in the General Social Survey
#'
#' Wage data from the General Social Survey (1974-2018) to illustrate
#'  wage discrepancies by gender (while also considering respondent occupation, age, and education).
#'
#' @format A data frame with 11 variables:
#' \describe{
#' \item{\code{year}}{the survey year}
#' \item{\code{realrinc}}{the respondent's base income (in constant 1986 USD)}
#' \item{\code{age}}{the respondent's age in years}
#' \item{\code{occ10}}{respondent's occupation code (2010)}
#' \item{\code{occrecode}}{recode of the occupation code into one of 11 main categories}
#' \item{\code{prestg10}}{respondent's occupational prestige score (2010)}
#' \item{\code{childs}}{number of children (0-8)}
#' \item{\code{wrkstat}}{the work status of the respondent (full-time, part-time, temporarily not working, unemployed (laid off), retired, school, housekeeper, other)}
#' \item{\code{gender}}{respondent's gender (male or female)}
#' \item{\code{educcat}}{respondent's degree level (Less Than High School, High School, Junior College, Bachelor, or Graduate)}
#' \item{\code{maritalcat}}{respondent's marital status (Married, Widowed, Divorced, Separated, Never Married)}
#' }
#'
#' @details For further details, see \url{https://gssdataexplorer.norc.org}. Consult \url{https://census.gov} for more information about occupation codes.
#'
"gss_wages"
