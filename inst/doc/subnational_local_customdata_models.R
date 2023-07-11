## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  library(mcmsupply)
#  library(dplyr)

## ---- include=TRUE, message=FALSE, warning=FALSE, eval=FALSE------------------
#  cleaned_data <- get_data(national=FALSE, local=TRUE,
#                           surveydata_filepath = "my_custom_data.xlsx",
#                           mycountry="Nepal")

## ---- include=TRUE, message=FALSE, warning=FALSE, eval=FALSE------------------
#  pkg_data <- get_modelinputs(startyear=1990, endyear=2025.5,
#                              nsegments=12, raw_data = cleaned_data)
#  

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  mod <- run_jags_model(jagsdata = pkg_data, jagsparams = NULL,
#                        n_iter = 40000, n_burnin = 10000, n_thin = 15)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  plots <- plot_estimates(jagsdata = pkg_data, model_output = mod)

