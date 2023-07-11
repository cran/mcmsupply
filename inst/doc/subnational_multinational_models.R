## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  library(mcmsupply)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  cleaned_subnatdata <- get_data(national=FALSE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  pkg_data <- get_modelinputs(startyear=1990, endyear=2025.5, nsegments=12,
#                              raw_data = cleaned_subnatdata)

## ----message=FALSE, eval=FALSE------------------------------------------------
#  mod <- run_jags_model(jagsdata = pkg_data, jagsparams = NULL,
#                        n_iter = 80000, n_burnin = 10000, n_thin = 35)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  plots <- plot_estimates(jagsdata = pkg_data, model_output = mod)

