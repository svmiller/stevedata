#' @importFrom tibble tibble
NULL

#' The Effect of Special Preparation on SAT-V Scores in Eight Randomized Experiments
#'
#' You've all seen these before. These are the "eight schools" that everyone gets when
#'  being introduced to Bayesian programming. Here are the full data for your consideration,
#'  which you can use instead of awkwardly searching where the data are and copy-pasting
#'  them as a list. Every damn time, Steve.
#'
#' @format A data frame with 8 observations on the following 6 variables.
#' \describe{
#' \item{\code{school}}{a letter denoting the school}
#' \item{\code{num_treat}}{the number of students in the school receiving the treatment}
#' \item{\code{num_control}}{the number of students in the school in the control group}
#' \item{\code{est}}{the estimated treatment effect}
#' \item{\code{se}}{the standard error of the effect estimate}
#' \item{\code{rvar}}{the residual variance}
#' }
#'
#' @details Data copy-pasted from Table 1 in Rubin (1981).
#'
#' @references Rubin, Donald B. 1981. "Estimation in Parallel Randomized Experiments." \emph{Journal of Educational Statistics} 6(4): 377-401.
#'
"eight_schools"
