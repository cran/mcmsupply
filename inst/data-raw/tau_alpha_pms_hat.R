# Get precision of the district-level (alpha_pms) intercept parameters for the local model

# Step 1:
# First run a multi-country model (using the `run_model` function) and save the results to a .RDS file

# Step 2: Pull out and save variance-covariance matrix for use in single-country model.

mod <- readRDS("mod_global_subnational.RDS") # Read in multi-country MCMC results
tau_alphapms_hat <- mod$BUGSoutput$median$tau_alpha_pms
usethis::use_data(tau_alphapms_subnationalmod, overwrite=TRUE)
