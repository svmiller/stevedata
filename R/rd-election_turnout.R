#' @importFrom tibble tibble
NULL

#' State-Level Education and Voter Turnout in 2016
#'
#' A simple data set on education and state-level (+ DC) turnout in the 2016
#'  presidential election. This is inspired by what Pollock (2012) does in his book.
#'
#' @format A data frame with 51 observations on the following 13 variables.
#' \describe{
#' \item{\code{year}}{the year of the presidential election (2016)}
#' \item{\code{state}}{the state abbreviation}
#' \item{\code{region}}{the state's Census region}
#' \item{\code{division}}{the state's Census division}
#' \item{\code{turnoutho}}{voter turnout for the highest office as percent of voting-eligible population (VEP)}
#' \item{\code{perhsed}}{the percentage of the state that completed high school}
#' \item{\code{percoled}}{the percentage of the state that completed college}
#' \item{\code{gdppercap}}{an estimate of the state's GDP per capita}
#' \item{\code{ss}}{is it a ``swing state?''}
#' \item{\code{trumpw}}{did Trump win the state?}
#' \item{\code{trumpshare}}{the share of the vote Trump received}
#' \item{\code{sunempr}}{the state-level unemployment rate entering Nov. 2016}
#' \item{\code{sunempr12md}}{the state-level unemployment rate (12-month difference) entering Nov. 2016}
#' \item{\code{gdp}}{an estimate of the state's GDP}
#' }
#'
#' @details Data were created in early 2017 for an upper-division course on
#' quantitative methods. Educational attainment and division/region data come from the
#' Census. Voter turnout/share data come from the Elections Project at George Mason University.
#' GDP per capita estimates come from Bureau of Economic Analysis. Unemployment data come from
#' the Bureau of Labor Statistics and code to generate it was derived from a forthcoming publication of mine.
#'
"election_turnout"
