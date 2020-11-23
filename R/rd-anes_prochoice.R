#' @importFrom tibble tibble
NULL

#' Abortion Attitudes (ANES, 2012)
#'
#' A simple data set for in-class illustration about how to estimate and interpret
#'  interactive relationships. The data here are deliberately minimal for that end.
#'
#' @format A data frame with 5914 observations on the following 14 variables.
#' \describe{
#' \item{\code{version}}{version identifier from ANES}
#' \item{\code{caseid}}{time-series case identifier from ANES}
#' \item{\code{health}}{oppose/"NFNO"/favor [0:2] abortion if pregnancy would hurt woman}
#' \item{\code{fatal}}{oppose/"NFNO"/favor [0:2] abortion if pregnancy would cause woman to die}
#' \item{\code{incest}}{oppose/"NFNO"/favor [0:2] abortion if pregnancy was caused by incest}
#' \item{\code{rape}}{oppose/"NFNO"/favor [0:2] abortion if pregnancy was caused by rape}
#' \item{\code{bd}}{oppose/"NFNO"/favor [0:2] abortion if fetus would be born with serious birth defect}
#' \item{\code{fin}}{oppose/"NFNO"/favor [0:2] abortion if having child would impose financial hardship}
#' \item{\code{sex}}{oppose/"NFNO"/favor [0:2] abortion if the child will not be the sex the woman wants}
#' \item{\code{choice}}{oppose/"NFNO"/favor [0:2] abortion if woman chooses to have one}
#' \item{\code{pid}}{respondent's partisanship [0:2] (Democrat, Independent, Republican)}
#' \item{\code{knowspeaker}}{was the respondent able to correctly identify  the Speaker of the House (John Boehner)}
#' \item{\code{addchoice}}{an additive scale of the abortion scores [0:16]}
#' \item{\code{lchoice}}{a continuous latent scale of pro-choice scores (from a simple graded response model)}
#' }
#'
#' @source Data come from ANES's (2012) time series.
#'
#' @details "NFNO" = "Neither Favor Nor Oppose"
#'
"anes_prochoice"
