#' @importFrom tibble tibble
NULL

#' Odds for 2024-25 English Premier League Clubs
#'
#' A data set on the odds for relegation and winning the table for English
#'  Premier League clubs for the 2024-25 season. Data are useful for
#'  illustrating what exactly odds are.
#'
#' @format A data frame with 20 observations on the following 7 variables.
#' \describe{
#' \item{\code{club}}{a character communicating the name of the club in the Premier League}
#' \item{\code{bet365_r}}{a numeric vector for the odds against relegation, by way of Bet365}
#' \item{\code{betfair_r}}{a numeric vector for the odds against relegation, by way of Betfair}
#' \item{\code{unibet_r}}{a numeric vector for the odds against relegation, by way of Unibet}
#' \item{\code{bet365_w}}{a numeric vector for the odds against winning the table, by way of Bet365}
#' \item{\code{betfair_w}}{a numeric vector for the odds against winning the table, by way of Betfair}
#' \item{\code{unibet_w}}{a numeric vector for the odds against winning the table, by way of Unibet}
#' }
#'
#' @details Data come \code{oddschecker.com} as of Oct. 20, 2024, assuming these
#' are preseason odds. Raw data are available on the project's website for your
#' consideration. Don't bet on sports, unless you've been visited by Biff Tannen
#' from the future.
#'
#' Fractions have been converted into decimals for ease of maintaining the data.
#' Raw odds (in fraction form) for those clubs most likely to be relegated are
#' available in the raw data files on the project's Github.
#'
#' Odds are typically(?) communicated as "odds against" in the sports betting
#' world. It's why the highest odds for relegation and lowest odds for winning
#' coincide with the biggest, most successful clubs. Context clues help, and are
#' useful for understanding what these odds are saying.
#'
#' It's possible that the language "win outright" is doing some heavy-lifting in
#' how Bet365 lets you place wagers on winning the table.
#'
#' I'm also aware of the reason these odds do not sum to 1, and in fact exceed
#' 1. If anything, I think "overrounding" is its own pedagogical tool for why
#' odds can be wonky things to learn in relation to its use in the statistical
#' modeling context.
#'
"epl_odds"
