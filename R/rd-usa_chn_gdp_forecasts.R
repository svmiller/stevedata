#' @importFrom tibble tibble
NULL

#' United States-China GDP and GDP Forecasts, 1960-2050
#'
#' This is a toy data set to examine the time in which we should expect China
#'  to overtake the United States in total gross domestic product (GDP),
#'  given current trends. It includes an OECD long-term GDP forecast from 2014,
#'  and forecasts from the \code{forecast} and \code{prophet} packages in R.
#'
#' @format A data frame with 182 observations on the following 12 variables.
#' \describe{
#' \item{\code{country}}{a character vector (United States, China)}
#' \item{\code{year}}{a numeric vector for the year}
#' \item{\code{p_gdp}}{y-hats (forecasted GDP) from a \code{prophet} forecast}
#' \item{\code{p_lo80}}{lower bound (80%) of y-hats (forecasted GDP) from a \code{prophet} forecast}
#' \item{\code{p_hi80}}{upper bound (80%) of y-hats (forecasted GDP) from a \code{prophet} forecast}
#' \item{\code{gdp}}{observed GDP, made available to the World Bank and OECD national accounts data. Available from 1960 to 2019.}
#' \item{\code{f_gdp}}{forecasted GDP from 2020 to 2050, from the \code{forecast} package}
#' \item{\code{f_lo80}}{lower bound (80%) forecasted GDP from 2018 to 2050, from the \code{forecast} package}
#' \item{\code{f_hi80}}{upper bound (80%) forecasted GDP from 2018 to 2050, from the \code{forecast} package}
#' \item{\code{f_lo95}}{lower bound (95%) forecasted GDP from 2018 to 2050, from the \code{forecast} package}
#' \item{\code{f_hi95}}{upper bound (95%) forecasted GDP from 2018 to 2050, from the \code{forecast} package}
#' \item{\code{oecd_ltgdpf}}{long-term GDP forecast from the OECD via the OECD Outlook No 95 - May 2014}
#' }
#'
#' @details Forecasts from the \code{forecast} package and \code{prophet}
#' package are rudimentary and bare minimum forecasts based on previous values
#' to that point. Notice the \code{forecast} forecasts have a prefix of
#' \code{f_} and the \code{prophet} forecasts have a prefix of
#' \code{p_}. Forecasts are not meant to be exhaustive (clearly), only
#' illustrative for in-class discussion about the "Rise of China." Forecasts
#' made in R on Nov. 20, 2020.
#'
#' @source OECD Outlook No 95 - May 2014 - Long-term baseline projections provided
#' by Organisation for Economic Co-operation and Development (OECD)
#'
"usa_chn_gdp_forecasts"
