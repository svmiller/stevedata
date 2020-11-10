#' @importFrom tibble tibble
NULL

#' United States Recessions, 1855-present
#'
#' Data on U.S. recessions, past to present. Data include information on contraction,
#'  expansion, and cycle.
#'
#' @format A data frame with 35 observations on the following 8 variables.
#' \describe{
#' \item{\code{peak}}{the year-month of the peak, as a date}
#' \item{\code{trough}}{the year-month of the trough, as a date}
#' \item{\code{peakq}}{the peak quarter}
#' \item{\code{troughq}}{the trough quarter}
#' \item{\code{p2t}}{peak to trough (in months)}
#' \item{\code{prev_t2p}}{previous trough to this peak (in months)}
#' \item{\code{tfpt}}{trough from previous trough (in months)}
#' \item{\code{pfpp}}{peak from previous peak (in months)}
#' }
#'
#' @details Data come from via scraping job of \url{https://www.nber.org/research/data/us-business-cycle-expansions-and-contractions}
#'
#' @source National Bureau of Economic Research (NBER)
#'
"recessions"
