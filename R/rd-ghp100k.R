#' @importFrom tibble tibble
NULL

#' Gun Homicide Rate per 100,000 People, by Country
#'
#' This is the yearly rate of gun homicides per 100,000 people in the population,
#'  selecting on "Western" countries of interest.
#'
#' @format A data frame with 561 observations on the following 3 variables.
#' \describe{
#' \item{\code{country}}{the country}
#' \item{\code{year}}{the year}
#' \item{\code{value}}{a numeric vector for the estimated rate of gun homicide per 100,000 people}
#' }
#'
#' @details The reported, or calculated annual crude rate of completed,
#' intentional homicide committed with a firearm, per 100,000 population,
#' in years descending.
#'
#' Where a jurisdiction's published count of 'annual homicide' includes cases
#' of attempted (uncompleted) homicide, these figures have been disaggregated
#' wherever possible.
#'
#' In the United States, this category is confused by inaccurate and conflicting
#' data published, suppressed or labeled as unreliable by the Centers for Disease
#' Control and Prevention (CDC) and the Federal Bureau of Investigation (FBI).
#' Suppression can result in zero values where in fact homicides did occur.
#'
#' Incomplete classification by local agencies can also result in a significant
#' proportion of events being categorized as 'unknown cause' or similar.
#'
#' Before quoting these datasets, please follow the citation links for a description
#' of the considerable differences between them and the reasons for data suppression.
#'
#' Where a rate is calculated by \code{GunPolicy.org}, a matched population estimate is also cited.
#'
#' @source \url{https://www.gunpolicy.org}
#'
"ghp100k"
