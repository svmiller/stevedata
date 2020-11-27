#' @importFrom tibble tibble
NULL

#' United Kingdom Effective Exchange Rate Index Data, 1990-2019
#'
#' This is a (near) daily data set on the effective exchange rate index for
#'  the United Kingdom's pound sterling from 1990 to 2018. The data are
#'  indexed, such that 100 equals the monthly average in January 2005. This
#'  is useful for illustrating devaluations of the pound after Black Wednesday,
#'  the financial crisis, and, more recently, the UK's efforts to leave the
#'  European Union.
#'
#' @format A data frame with 7583 observations on the following 2 variables.
#' \describe{
#' \item{\code{date}}{a date}
#' \item{\code{value}}{a numeric vector for the effective exchange rate index (Jan. 2005 = 100)}
#' }
#'
#' @source Bank of England
#'
#' @details Credit to the Bank of England for making these data readily available and
#' accessible. The Bank of England's website (\url{https://www.bankofengland.co.uk/}) has
#' these data with a code of \code{XUDLBK67}.
#'
"ukg_eeri"
