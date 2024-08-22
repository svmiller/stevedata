#' @importFrom tibble tibble
NULL

#' U.S. Foreign Aid and Human Rights in Assorted Years
#'
#' A data set on economic aid allocation by the United States for assorted years.
#' These are useful for illustrative cross-sectional relationships between human
#' rights and U.S. aid allocation at what amounts to midway points for various
#' presidential administrations.
#'
#' @format A data frame with 1654 observations on the following 18 variables.
#' \describe{
#' \item{\code{country}}{an English country name}
#' \item{\code{ccode}}{a Correlates of War state code}
#' \item{\code{region}}{a region in which the country resides, per Greenbook}
#' \item{\code{year}}{a year}
#' \item{\code{nomoblig}}{economic aid obligations in nominal U.S. dollars}
#' \item{\code{constoblig}}{economic aid obligations in costant 2019 U.S. dollars}
#' \item{\code{clphy}}{a physical violence index, bound between 0 and 1}
#' \item{\code{civlib}}{a civil liberties index, bound between 0 and 1}
#' \item{\code{fpsusa}}{foreign policy similarity with the United States}
#' \item{\code{fpsrus}}{foreign policy similarity with the Soviet Union/Russia}
#' \item{\code{mindistusa}}{minimum distance of the country from the United States}
#' \item{\code{mindistrus}}{minimum distance of the country from the USSR/Russia}
#' \item{\code{gdp}}{an estimate of GDP in constant 2011 U.S. dollars}
#' \item{\code{pop}}{an estimate of population size}
#' \item{\code{usaimp}}{a value of how much the U.S. imports from the country (in thousands USD)}
#' \item{\code{usaexp}}{a value of how much the U.S. exports to the country (in thousands USD)}
#' \item{\code{milex}}{an estimate of military expenditures (in thousands USD)}
#' \item{\code{cinc}}{a composite index of national capabilities}
#' }
#'
#' @details
#'
#' Matching is done on Correlates of War state codes. Thus, the exact
#' "population" is an amalgam of U.S. aid and Correlates of War state system
#' membership. Regions are offered, as is, from USAID Data Services.
#'
#' Data on aid are "obligations" and not "disbursements", and thus may better
#' reflect donor intent. These come from US Overseas Loans & Grants
#' ("Greenbook") and were prepared by USAID Data Services on July 14, 2021.
#'
#' Greenbook only offers information about dollar amounts of aid, contingent on
#' receiving aid. Observations were added, based on Correlates of War state system
#' membership, about countries that could've received aid but did not. Countries
#' that never received aid at all had to have regions assigned to them ex post.
#' I don't think the regions imputed for these observations are problematic.
#' This concerns Andorra, Czechoslovakia, Dominica, German Democratic Republic,
#' German Federal Republic, Liechtenstein, Luxembourg, Monaco, Nauru, Republic
#' of Vietnam, San Marino, St. Lucia, St. Kitts and Nevis, Switzerland, Tuvalu,
#' Yemen Arab Republic, Yemen People's Republic, and Zanzibar.
#'
#' Higher values of the physical violence index and civil liberties index
#' communicate better human rights records. Data are lagged a year.
#'
#' Foreign policy similarity is Cohen's (1960) kappa based on valued United
#' Nations General Assembly voting. Data come from Haege (2011) by way of
#' \pkg{peacesciencer}'s \code{add_fpsim()} function. Please read
#' \pkg{peacesciencer} documentation for more information about these measures,
#' along with what you should cite for any serious use of these data. Higher
#' values for these measures = more foreign policy similarity.
#'
#' Minimum distance is calculated using the Vincenty method ("as the crow
#' flies"). Measurement is in kilometers and data come from \pkg{peacesciencer}
#' and its \code{add_minimum_distance()} function. Check package documentation
#' for appropriate citation for any serious use.
#'
#' Estimates of gross domestic product ("GDP") and population come by way of
#' \pkg{peacesciencer} and its \code{add_sdp_gdp()} function. Check package
#' documentation for appropriate citations for any serious use. GDP is in
#' actual dollars.
#'
#' Trade data come from Correlates of War trade data by way of \pkg{peacesciencer}
#' and its \code{add_cow_trade()} function. Check package documentation for
#' appropriate citations for any serious use.
#'
#' Military expenditure and capabilities data come from Correlates of War by way
#' of \pkg{peacesciencer} and its \code{add_cow_trade()} function. Check package
#' documentation for  appropriate citations for any serious use.
#'
"USFAHR"
