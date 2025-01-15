#' @importFrom tibble tibble
NULL

#' World Bank Country Groups
#'
#' A data set on World Bank country groups/classifications, for ease of selecting
#'  three-character ISO codes of interest.
#'
#' @format A data frame with 2085 observations on the following 4 variables.
#' \describe{
#' \item{\code{wbgc}}{a three-character code for the World Bank group}
#' \item{\code{wbgn}}{a more informative name for the World Bank group}
#' \item{\code{iso3c}}{a three-character ISO code}
#' \item{\code{name}}{a name for the country that corresponds with the three-character ISO code}
#' }
#'
#' @details Data are for the current 2025 fiscal year. The World Bank's
#' Data Help Desk will offer more information about specific criteria for things
#' like income.
#'
"wb_groups"
