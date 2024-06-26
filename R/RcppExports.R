# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

digamma_wrapper <- function(x) {
    .Call(`_cosimmr_digamma_wrapper`, x)
}

rMVNormCpp <- function(n, Mean, Var) {
    .Call(`_cosimmr_rMVNormCpp`, n, Mean, Var)
}

sim_thetacpp <- function(S, lambda, n_sources, n_tracers, n_cov, solo, kappa) {
    .Call(`_cosimmr_sim_thetacpp`, S, lambda, n_sources, n_tracers, n_cov, solo, kappa)
}

hfn <- function(theta, n_sources, n, n_cov, x_scaled) {
    .Call(`_cosimmr_hfn`, theta, n_sources, n, n_cov, x_scaled)
}

hcpp <- function(n_sources, n_isotopes, n_covariates, d_prior, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, c_prior, sd_prior, mu_prior) {
    .Call(`_cosimmr_hcpp`, n_sources, n_isotopes, n_covariates, d_prior, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, c_prior, sd_prior, mu_prior)
}

log_q_cpp <- function(theta, lambda, n_sources, n_tracers, S, n_cov) {
    .Call(`_cosimmr_log_q_cpp`, theta, lambda, n_sources, n_tracers, S, n_cov)
}

h_lambdacpp <- function(n_sources, n_isotopes, beta_prior, n_covariates, S, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, lambda, x_scaled, c_0, sd_prior, mu_prior) {
    .Call(`_cosimmr_h_lambdacpp`, n_sources, n_isotopes, beta_prior, n_covariates, S, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, lambda, x_scaled, c_0, sd_prior, mu_prior)
}

delta_h_lambda_cpp <- function(n_sources, n_tracers, beta_prior, n_covariates, S, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, lambda, x_scaled, c_0, sd_prior, mu_prior, eps) {
    .Call(`_cosimmr_delta_h_lambda_cpp`, n_sources, n_tracers, beta_prior, n_covariates, S, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, theta, y, lambda, x_scaled, c_0, sd_prior, mu_prior, eps)
}

nabla_LB_cpp <- function(lambda, theta, n_sources, n_tracers, beta_prior, S, n_covariates, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, c_0, sd_prior, mu_prior, kappa) {
    .Call(`_cosimmr_nabla_LB_cpp`, lambda, theta, n_sources, n_tracers, beta_prior, S, n_covariates, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, c_0, sd_prior, mu_prior, kappa)
}

LB_lambda_cpp <- function(theta, lambda, n_sources, n_isotopes, beta_prior, n_covariates, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, c_0, sd_prior, mu_prior) {
    .Call(`_cosimmr_LB_lambda_cpp`, theta, lambda, n_sources, n_isotopes, beta_prior, n_covariates, x_scaled, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, c_0, sd_prior, mu_prior)
}

run_VB_cpp <- function(lambdastart, n_sources, n_tracers, n_covariates, n, beta_prior, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, x_scaled, S, P, beta_1, beta_2, tau, eps_0, t_W, c_prior, solo, sd_prior, mu_prior) {
    .Call(`_cosimmr_run_VB_cpp`, lambdastart, n_sources, n_tracers, n_covariates, n, beta_prior, concentrationmeans, sourcemeans, correctionmeans, corrsds, sourcesds, y, x_scaled, S, P, beta_1, beta_2, tau, eps_0, t_W, c_prior, solo, sd_prior, mu_prior)
}

