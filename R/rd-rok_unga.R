#' @importFrom tibble tibble
NULL

#' The Correlates of Dyadic Voting Similiarities in the UN General Assembly for South Korea
#'
#' A data set on dyadic voting similarity for South Korea in relation to other
#'  states, from 1991 to 2022.
#'
#' @format A data frame with the following variables.
#' \describe{
#' \item{\code{ccode1}}{a numeric vector, and constant, identifies the Correlates of War state code for South Korea (732)}
#' \item{\code{ccode2}}{a numeric vector for the Correlates of War state code for the other state in the dyad}
#' \item{\code{iso3c}}{a three-character ISO code corresponding with the Correlates of War state code for \code{ccode2}}
#' \item{\code{year}}{a numeric vector for a year}
#' \item{\code{agree}}{the percentage of the time South Korea and the other state in the dyad agreed on a vote in a given year}
#' \item{\code{v_agree}}{the percentage of the time South Korea and the other state in the dyad agreed on a vote in a given year, as calculated by Voeten et al. in their data}
#' \item{\code{kappa}}{weighted Cohen's kappa for dyadic foreign policy similarity as derived from the UN voting data}
#' \item{\code{ip1}}{the ideal point estimate for South Korea for a given year, as derived from UN voting data}
#' \item{\code{ip2}}{the ideal point estimate for \code{ccode2}, as derived from UN voting data}
#' \item{\code{ipd}}{the absolute distance between \code{ip1} and \code{ip2}}
#' \item{\code{gdppc1}}{estimated GDP per capita in 2015 USD for South Korea in the referent year}
#' \item{\code{gdppc2}}{estimated GDP per capita in 2015 USD for \code{ccode2} in a given year}
#' \item{\code{v2x_polyarchy1}}{the Varieties of Democracy estimate for the "polyarchy" for South Korea in the referent year}
#' \item{\code{v2x_polyarchy2}}{the Varieties of Democracy estimate for the "polyarchy" for \code{ccode2} in a given year}
#' \item{\code{xm_euds1}}{Xavier Marquez' estimate for the extended Unified Democracy Score for South Korea in the referent year}
#' \item{\code{xm_euds2}}{Xavier Marquez' estimate for the extended Unified Democracy Score  for \code{ccode2} in a given year}
#' \item{\code{capdist}}{the distance between Seoul and the capital of \code{ccode2} in the year}
#' }
#'
#' @details
#'
#' Voeten et al's codebook cautions that their agreement variable is there for
#' comparison and should not be used for a serious analysis of dyadic foreign
#' policy similarity. The `agree` variable I calculate is based on *all* votes,
#' whereas (I think) Voeten et al. exclude amendments and votes on paragraphs.
#'
#' Cohen's (weighted) kappa is suggested by Haege (2011) for use measuring
#' dyadic foreign policy similarity. This measure is likewise calculated by me
#' for *all* votes. I forget how Haege (2011) does this for his calculations and
#' if he is excluding votes on amendments or paragraphs. Its interpretation
#' differs from how one might use the ideal point distance variable. This is a
#' chance-corrected correlation. Higher values indicate more similarity whereas
#' higher values in the ideal point distance variable communicate more dissimilarity.
#'
#' GDP per capita include some imputations by way of a semiparametric Bayesian
#' Gaussian copulas. This prominently concerns Venezuela. Data are otherwise
#' derived from the World Bank's open data.
#'
#' Xavier Marquez' "extended Unified Democracy Scores" approximate a normal
#' distribution with a standard deviation of 1. Invoking `pnorm()` on a particular
#' estimate provides a kind of probabilistic assessment of whether the observation
#' in question is a democracy. In both the Varieties of Democracy estimate and
#' the Marquez estimate, higher values = "more democracy". See also: the
#' \code{Lipset59} documentation in this same package.
#'
#' Capital-to-capital distance is calculated using the Vicenty method ("as the
#' crow flies"), and is done by way of a \pkg{peacesciencer} call and its
#' \code{add_capital_distance()} function. There are unusual cases where a capital
#' moved (i.e. Burundi, Kazakhstan, Myanmar, Nigeria). In those cases, the
#' capital on Jan. 1 of the given year is treated as the capital.
#'
"rok_unga"
