#' @importFrom tibble tibble
NULL

#' Civil Wars by Year, Type, Partitions, and Recurrence (Sambanis, 2000)
#'
#' This is Table 1 from Sambanis (2000), critiquing the claims that partition
#' of warring groups after a civil war should be conducive to peace. These data
#' are useful for pedagogical instruction of Chi-squared tests of independence.
#'
#' @format A data frame with 125 observations on the following 7 variables.
#' \describe{
#' \item{\code{place}}{the place (country) of the civil war}
#' \item{\code{start}}{the start year of the civil war}
#' \item{\code{end}}{the end year of the civil war}
#' \item{\code{war2y}}{did the war end for 2 years?}
#' \item{\code{rv2y}}{did residual violence end for 2 years?}
#' \item{\code{partition}}{was there a partition?}
#' \item{\code{wartype}}{type of war (identity or not?)}
#' }
#'
#' @details Sambanis (2000) does not say this outright, but it's implied that the
#' ongoing wars are ongoing as of 2000 (as opposed to some other date).
#'
#'
#'
#' @references
#'
#' Sambanis, Nicholas. 2000. "Partition as a Solution to Ethnic War: An Empirical
#' Critique of the Theoretical Literature." *World Politics* 52(4): 437--83.
#'
"Sambanis00"
