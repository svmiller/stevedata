#' @importFrom tibble tibble
NULL

#' Region Categories for the United States in the World Values Survey
#'
#' This is a simple data set that summarizes what the region codes are in the World Values Survey for the United States.
#'
#'
#' @format A data frame with 63 observations the following 6 variables.
#' \describe{
#' \item{\code{x048wvs}}{the numeric code for supposedly the region in which the interview was conducted}
#' \item{\code{x048wvsmeaning}}{the meaning behind the unique \code{x048wvs} code}
#' \item{\code{stateabb}}{the corresponding state abbreviation (if available) for the unique \code{x048wvs} code}
#' \item{\code{statename}}{the corresponding state abbreviation (if available) for the unique \code{x048wvs} code}
#' \item{\code{division}}{the corresponding division for the unique \code{x048wvs} code}
#' \item{\code{region}}{the corresponding region for the unique \code{x048wvs} code}
#' }
#'
#' @details The region codes are a mess. Some of these are informed guesses. For example, I assume "Northwest" means
#' "Pacific" and that Idaho was not included in that category. I make a similar assumption that "Rocky Mountain state"
#' means "Mountain".
#'
"wvs_usa_regions"
