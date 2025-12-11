#' @importFrom tibble tibble
NULL

#' Urban Heat Islands and Green Land Use in European Cities
#'
#' A data set on urban heat island magnitude in European cities.
#'
#' @format A data frame with 285 observations on the following 14 variables.
#' \describe{
#' \item{\code{city}}{a city identifier}
#' \item{\code{pf}}{the planning tradition/family, one of "British", "Central", "Mediterranean", "New member", or "Nordic"}
#' \item{\code{uhimag}}{a measure of the urban heat island magnitude}
#' \item{\code{long}}{the longitude of the area in question}
#' \item{\code{lat}}{the latitude of the area in question}
#' \item{\code{mindistcoast}}{the minimum distance to the coast, in kilometers}
#' \item{\code{aaperc}}{the percentage of the area that's artificial, as a proportion}
#' \item{\code{agperc}}{the percentage of the area that's agricultural, as a proportion}
#' \item{\code{forperc}}{the percentage of the area that's forest, as a proportion}
#' \item{\code{ugperc}}{the percentage of the area that's urban green, as a proportion}
#' \item{\code{avgpa}}{the mean patch area, in hectares}
#' \item{\code{edgedens}}{edge density in meter/square meters}
#' \item{\code{lpi}}{the largest patch index, as a percentage (proportion)}
#' \item{\code{plc}}{the proportional landscape core}
#' }
#'
#' @details
#'
#' Data are able to replicate Figures 2, 3, and 4 in Nastran et al. (2019). Consult
#' that article for more information
#'
#' @references
#'
#' Nastran, Mojca, Milan Kobal, and Klemen Eler. 2019. "Urban Heat Islands in
#' Relation to Green Land Use in European Cities." *Urban Forestry & Urban Greening*
#' 37: 33-41.

"eurouhi"
