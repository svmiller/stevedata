#' @importFrom tibble tibble
NULL

#' "How Solid is Mass Support for Democracy---And How Can We Measure It?"
#'
#' A data set based on summary information provided in Inglehart's (2003)
#'  article in *PS: Political Science & Politics*. These data would be from
#'  the article itself and only indirectly from the raw World or European
#'  Values Survey.
#'
#' @format A data frame with 77 observations on the following 4 variables.
#' \describe{
#' \item{\code{state_year}}{the state year and survey year, as provided in the article}
#' \item{\code{havedem}}{the percentage of respondents saying having a democratic political system is "very good" or "good"}
#' \item{\code{strongleader}}{the percentage of respondents saying having a strong leader unencumbered by elections or parliaments is "very good" or "good"}
#' \item{\code{muslim}}{a dummy variable that equals 1 if Inglehart codes the state as being a "predominantly Islamic society"}
#' }
#'
#' @details Data manually entered based on Table 1 and Table 2 in Inglehart's (2003) article.
#'
#' @references Inglehart, Ronald. 2003. "How Solid is Mass Support for Democracy---And How Can We Measure It?" *PS: Political Science & Politics* 36(1): 51--57.
#'
"inglehart03"
