#' @importFrom tibble tibble
NULL

#' Domestic Conflict Events, 2012
#'
#' A data set on domestic conflict events in 2012 as recorded by the Cross-National
#'  Time Series Database. Data exist for teaching about count models.
#'
#' @format A data frame with 198 observations on the following 19 variables.
#' \describe{
#' \item{\code{iso2c}}{a two-character ISO code}
#' \item{\code{country}}{a character name for the country corresponding with the ISO code}
#' \item{\code{assassinations}}{the count of assassinations in 2012}
#' \item{\code{strikes}}{the count of general strikes in 2012}
#' \item{\code{guerwar}}{the count of guerilla warfare events in 2012}
#' \item{\code{govtcrises}}{the count of government crises in 2012}
#' \item{\code{purges}}{the count of purges in 2012}
#' \item{\code{riots}}{the count of riots in 2012}
#' \item{\code{revolutions}}{the count of revolutions in 2012}
#' \item{\code{agd}}{the count of anti-government demonstrations in 2012}
#' \item{\code{wci}}{the weighted conflict index in 2012}
#' \item{\code{area}}{the land area in square kilometers}
#' \item{\code{adultpop}}{the adult (15+) population (in 1000s)}
#' \item{\code{youthpop}}{the youth (15-29) population (in 1000s)}
#' \item{\code{gdppc}}{GDP per capita (in constant 2015 USD)}
#' \item{\code{urbanshare}}{urban population over total population (as percentage)}
#' \item{\code{tpop}}{total population (in 1000s)}
#' \item{\code{polyarchy}}{electoral democracy index, an estimate of democracy}
#' \item{\code{perctser}}{percentage of tertiary school-aged population enrolled in tertiary school}
#' }
#'
#' @details
#'
#' Conflict events data come from the Cross-National Time Series Database. I've
#' used these data before for published papers, but the relative opacity of a
#' data set for yearly purchase comes with a bit of a caveat emptor for the
#' important question of real-world inference.
#'
#' Data on the democracy estimate and tertiary school enrollment rate come from
#' the Varieties of Democracy project. Democracy estimate for Palestine comes as
#' a simple average of the two Palestinian territories collected by the
#' Varieties of Democracy project. These are West Bank and Gaza. The tertiary
#' school enrollment variable, which originally comes from a data project by
#' Barro and Lee (2013), is "filled" to the referent year from the most recent
#' year available in the data. That would be 2010. It's fine for this purpose.
#'
#' Population estimates come from the UN Population Division. GDP per capita
#' comes from the World Bank. The estimate of land area (in square kilometers)
#' comes from the CNTS. Country name comes from CNTS as well.
#'
#' In all but the case of the data from CNTS, and the "filled" case of the
#' tertiary school enrollment variable, the referent year for the data is 2011.
#' Not that anyone is going to care too much for a simple data set like this,
#' but this would be the ol' endogeneity concern.
#'
#'
"DCE12"
