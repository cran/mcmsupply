#' An array of variance-covariance matrices corresponding to the DHS survey observations for the proportion of modern contraceptives supplied by the public and private sectors at the national level
#'
#' @format ## `national_FPsource_VARCOV_bivarlogitnormal`
#' An array of 2x2 matrices for each of the 558 observations in the national_FPsource_data.
#' Each 2x2 array corresponds to the variance of the public and private sectors on the diagonal and their corresponding covariances on the off-diagonal.
#' @source The variance-covariance matrices are calculated using the survey R package:
#'  prop_mat <- svyby(~I(sector_categories), ~I(modern_method_source), design=d.s, svymean, covmat=TRUE)
#'  vcov_matrix <- vcov(prop_mat) function.
"national_FPsource_VARCOV_bivarlogitnormal"
