#' @importFrom tibble tibble
NULL

#' Military Conflict or War Involvement, 1960-1980 (Weede, 1984)
#'
#' A data set on military conflict/war involvement and democracy.
#'
#' @format A data frame with 101 observations on the following 3 variables.
#' \describe{
#' \item{\code{ccode}}{a Correlates of War state code}
#' \item{\code{country}}{a slightly more informative identifier for the Correlates of War state code}
#' \item{\code{dem}}{a binary indicator for whether Weede (1984, Table 3) identifies the state as a democracy}
#' \item{\code{butter}}{a count(?) variable of conflicts with over 100 casualties}
#' \item{\code{kende}}{a count(?) variable of wars, according to Kende (1982)}
#' \item{\code{ssiw}}{a count of involvement in Singer and Small (1972) inter-state wars}
#' \item{\code{ssiw_id}}{an identifier of years in inter-state war, where applicable}
#' \item{\code{ssew}}{a count of involvement in Singer and Small (1972) extra-state wars}
#' \item{\code{ssew_id}}{an identifier of years in extra-state war, where applicable}
#' }
#'
#' @details
#'
#' Data come from the appendix. The `_id` inputs were the parentheses in the
#' table. Weede (1984) identifies the democracies in Table 3 (p. 658) of his
#' article.
#'
#' Butterworth's temporal domain is 1960-1974. Kende and Singer and Small cover
#' 1960-1980.
#'
#' I'll admit I have never seen the Kende (1982) data before, and I like to think
#' I'm well-versed in this stuff.
#'
#' @references
#'
#' Weede, Erich. 1984. "Democracy and War Involvement." *Journal of Conflict
#' Resolution* 28(4): 649--664.
#'
"Weede84"
