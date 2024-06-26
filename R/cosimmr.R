#' cosimmr: An R package for Stable Isotope Mixing Models
#' 
#' cosimmr is a package that has been developed to allow for running of Stable 
#' Isotope Mixing Models in R. It allows for the inclusion of covariates and 
#' has been designed to be easy to use for non-expert users. cosimmr uses Fixed
#' Form Variational Bayes to run SIMMs, instead of MCMC. This allows for faster
#' running of models without any issues with convergence
#' 
#' @name cosimmr
#' @author Emma Govan <emmagovan@@gmail.com>, Andrew Parnell
#' @import Rcpp 
#' @importFrom Rcpp evalCpp
#' @useDynLib cosimmr
#' @aliases cosimmr-package
## usethis namespace: start
#' @importFrom Rcpp sourceCpp
#' @useDynLib cosimmr, .registration = TRUE
## usethis namespace: end
NULL
NULL