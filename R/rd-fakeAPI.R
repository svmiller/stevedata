#' @importFrom tibble tibble
NULL

#' Hypothetical (Fake) Data on Academic Performance
#'
#' This is a hypothetical universe of schools in a given territorial unit,
#'  patterned off the \code{apipop} data available in the \code{survey} package.
#'
#' @format A data frame with 10000 observations on the following 8 variables.
#' \describe{
#' \item{\code{uid}}{a numeric vector as a unique identifier for schools}
#' \item{\code{schooltype}}{a character vector for school type. E = elementary school. M = middle school. H = high school}
#' \item{\code{county}}{a character vector for the county, named after an Ohio State All-American. ``County'' incidence is weighted by how many All-American honors the Ohio State player had. It's my fake data. You make your own if you have a problem with it.}
#' \item{\code{community}}{a character vector for the school's community, either rural, suburban, or urban.}
#' \item{\code{api}}{a numeric vector vector an academic performance index for the school}
#' \item{\code{meals}}{a numeric vector for the percentage of school students eligible for subsidized meals}
#' \item{\code{colgrad}}{a numeric vector for the percentage of school parents with college degrees}
#' \item{\code{fullqual}}{a numeric vector for the percentage of the school with teachers that are fully qualified}
#' \item{\code{sbase}}{a numeric vector for some base differences between schools, patterned off the school type means for \code{api00} in the \code{apipop} data.}
#' \item{\code{cbase}}{a numeric vector for some base differences between counties, randomly drawn from a uniform distribution}
#' \item{\code{e}}{a numeric vector for random errors}
#' }
#'
#' @details These data were generated for a blog post on my website.
#'
#' @references
#'
#' Miller, Steven V. 2020. "Some Parlor Tricks with Survey-Type Analyses in R."
#' URL: \url{https://svmiller.com/blog/2020/08/some-parlor-tricks-with-survey-type-analyses-in-r/}
#'
"fakeAPI"
