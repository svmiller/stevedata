#' @importFrom tibble tibble
NULL

#' Motor Vehicle Production by Country, 1950-2019
#'
#' Data, largely from Organisation Internationale des Constructeurs d'Automobiles (OICA),
#'  on motor vehicle production in various countries (and the world totals) from 1950 to
#'  2019 at various intervals. Tallies include production of passenger cars, light
#'  commercial vehicles, minibuses, trucks, buses and coaches.
#'
#' @format A data frame with three variables
#' \describe{
#' \item{\code{country}}{the country's name}
#' \item{\code{year}}{the year}
#' \item{\code{value}}{the total motor vehicles produced that year}
#' }
#'
#'@details This is a Wikipedia web-scraping job. See:
#' \url{https://en.wikipedia.org/wiki/List_of_countries_by_motor_vehicle_production}
#'
#' @source Organisation Internationale des Constructeurs d'Automobiles (OICA)
#'
"mvprod"
