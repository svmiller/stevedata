#' @importFrom tibble tibble
NULL

#' U.S. Presidents and Their Terms in Office
#'
#' This should be self-evident. Here are all U.S. presidents who have completed
#'  their terms in office (i.e. excluding the current one).
#'
#' @format A data frame with 44 observations on the following 3 variables.
#' \describe{
#' \item{\code{president}}{the president}
#' \item{\code{statename}}{the start date of the term, as a date}
#' \item{\code{sales}}{the end date of the term, as a date}
#' }
#'
#' @details I scraped this from \url{https://www.presidentsusa.net/presvplist.html}
#'
"presidents"
