## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  library(mcmsupply)
#  set.seed(1209)

## ---- include=TRUE, message=FALSE, warning=FALSE, eval=FALSE------------------
#  cleaned_data <- get_data(national=FALSE, local=TRUE,
#                           mycountry="Nepal")

## ---- include=TRUE, message=FALSE, warning=FALSE, eval=FALSE------------------
#  pkg_data <- get_modelinputs(startyear=1990, endyear=2025.5,
#                              nsegments=12, raw_data = cleaned_data)
#  

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  mod <- run_jags_model(jagsdata = pkg_data, jagsparams = NULL,
#                         n_iter = 10, n_burnin = 1, n_thin = 3)
#                        # n_iter = 40000, n_burnin = 10000, n_thin = 15)

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  sample_draws <- tidybayes::tidy_draws(mod$JAGS$BUGSoutput$sims.matrix)
#  
#  var <- sample_draws %>% dplyr::select(.chain, .iteration, .draw,`P[1,2,1,1]`) %>%
#    dplyr::mutate(chain = 1, # rep(1:mod$JAGS$BUGSoutput$n.chains, each=mod$JAGS$BUGSoutput$n.sims)),
#                  iteration = 3) # rep(1:mod$JAGS$BUGSoutput$n.sims, mod$JAGS$BUGSoutput$n.chains))
#  
#  ggplot2::ggplot(data=var) +
#    ggplot2::geom_line(ggplot2::aes(x=iteration, y=`P[1,2,1,1]`, color=as.factor(chain)))

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  head(mod$JAGS$BUGSoutput$summary)
#  

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  plots <- plot_estimates(jagsdata = pkg_data, model_output = mod)
#  plots[[1]]

## ---- include=TRUE, message=FALSE, eval=FALSE---------------------------------
#  estimates_2018 <- pull_estimates(model_output = mod, country = 'Nepal', year=2018)
#  
#  head(estimates_2018)

