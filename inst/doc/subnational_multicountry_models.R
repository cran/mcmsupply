## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  library(mcmsupply)
#  set.seed(1209)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  cleaned_subnatdata <- get_data(national=FALSE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  pkg_data <- get_modelinputs(startyear=1990, endyear=2025.5, nsegments=12,
#                              raw_data = cleaned_subnatdata)

## ----message=FALSE, eval=FALSE------------------------------------------------
#  mod <- run_jags_model(jagsdata = pkg_data, jagsparams = NULL,
#                        n_iter = 80000, n_burnin = 10000, n_thin = 35)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  plot(mod$JAGS)
#  
#  print(mod$JAGS)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  sample_draws <- tidybayes::tidy_draws(mod$JAGS$BUGSoutput$sims.matrix)
#  
#  var <- sample_draws %>% dplyr::select(.chain, .iteration, .draw,`P[1,2,1,1]`) %>%
#    dplyr::mutate(chain = rep(1:2, each=mod$JAGS$BUGSoutput$n.keep)) %>%
#    dplyr::mutate(iteration = rep(1:mod$JAGS$BUGSoutput$n.keep, 2))
#  
#  ggplot2::ggplot(data=var) +
#    ggplot2::geom_line(ggplot2::aes(x=iteration, y=`P[1,2,1,1]`, color=as.factor(chain)))

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  plots <- plot_estimates(jagsdata = pkg_data, model_output = mod)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  estimates_2018 <- pull_estimates(model_output = mod, country = 'Nepal', year=2018)
#  
#  head(estimates_2018)

