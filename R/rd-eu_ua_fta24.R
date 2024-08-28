#' @importFrom tibble tibble
NULL

#' A Roll Call Vote on Extending Temporary Trade Liberalization Measures
#'  Applicable to Ukrainian products under the EU/Euratom/Ukraine Association
#'  Agreement
#'
#' A data set on an April 2024 roll call vote to extend an emergency free trade
#'  agreement with Ukraine.
#'
#' @format A data frame with 705 observations on the following 9 variables.
#' \describe{
#' \item{\code{member_id}}{a numeric identifier for a member of the European Parliament}
#' \item{\code{first_name}}{a first name of the member of the European Parliament}
#' \item{\code{last_name}}{a last name of the member of the European Parliament}
#' \item{\code{position}}{a character vector indicating the member's position on the measure ("For", "Against", "Did Not Vote", or "Abstain")}
#' \item{\code{iso2c}}{a two-character ISO code for the country the member represents}
#' \item{\code{country}}{an English country name for the country the member represents}
#' \item{\code{group_code}}{an acronym/code for the coalition of the member}
#' \item{\code{group_label}}{a character vector for the full name of the coalition of the member}
#' \item{\code{group_short_label}}{a short label for the coalition of the member}
#' }
#'
#' @details Information about the exact measures are available from the European
#' Union. Search: \code{A9-0077/2024}. Data in question are the raw data
#' made available by \code{HowTheyVote.eu}
#'
#'
"eu_ua_fta24"
