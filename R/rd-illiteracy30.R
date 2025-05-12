#' @importFrom tibble tibble
NULL

#' Illiteracy in the Population 10 Years Old and Over, 1930
#'
#' This is perhaps the canonical data set for illustrating the ecological fallacy.
#'
#' @format A data frame with 40 observations on the following 11 variables.
#' \describe{
#' \item{\code{state}}{a character for the state}
#' \item{\code{pop}}{a numeric vector for the total population}
#' \item{\code{pop_il}}{a numeric vector for the total population that is illiterate}
#' \item{\code{nwhite}}{a numeric vector for the total native white population}
#' \item{\code{nwhite_il}}{a numeric vector for the total native white population that is illiterate}
#' \item{\code{fpwhite}}{a numeric vector for the total white population with "foreign or mixed parentage"}
#' \item{\code{fpwhite_il}}{a numeric vector for the total white population with "foreign or mixed parentage" that is illiterate}
#' \item{\code{fbwhite}}{a numeric vector for the total foreign-born white population}
#' \item{\code{fbwhite_il}}{a numeric vector for the total foreign-born white population that is illiterate}
#' \item{\code{black}}{a numeric vector for the total black population.}
#' \item{\code{black_il}}{a numeric vector for the total black population that is illiterate}
#' }
#'
#' @source U.S. Census Bureau (1933). Fifteenth Census of the United States: 1930. Population, Volume II.
#'
#' @details All population totals reflect those 10 years or older. The 1930 Census (along with Robinson (1950))
#' uses "negro" in lieu of black, but the variable names here eschew that older label. Note that some states
#' are not yet states in the 1930 Census.
#'
#' @references Grotenhuis, Manfred Te, Rob Eisinga, and SV Subramanian. 2011. "Robinson's Ecological Correlations and the Behavior of Individuals: methodological corrections." \emph{International Journal of Epidemiology} 40(4): 1123-25.
#'
#' Robinson, WS. 1950. "Ecological Correlations and the Behavior of Individuals." \emph{American Sociological Review} 15(3): 351--57.
#'
"illiteracy30"
