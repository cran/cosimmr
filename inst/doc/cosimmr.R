## ----eval = FALSE-------------------------------------------------------------
#  install.packages("cosimmr")

## ----eval = FALSE-------------------------------------------------------------
#  library(cosimmr)

## -----------------------------------------------------------------------------
data(geese_data_day1)

## ----include = FALSE----------------------------------------------------------
library(cosimmr)

## -----------------------------------------------------------------------------
cosimmr_1 <- with(
  geese_data_day1,
  cosimmr_load(
    formula = mixtures ~ 1,
    source_names = source_names,
    source_means = source_means,
    source_sds = source_sds,
    correction_means = correction_means,
    correction_sds = correction_sds,
    concentration_means = concentration_means
  )
)

## -----------------------------------------------------------------------------
plot(cosimmr_1)

## -----------------------------------------------------------------------------
cosimmr_1_out = cosimmr_ffvb(cosimmr_1)

## -----------------------------------------------------------------------------
summary(cosimmr_1_out, type = "statistics")

## -----------------------------------------------------------------------------
plot(cosimmr_1_out, type ="prop_histogram", obs = 1)

## ----eval = FALSE-------------------------------------------------------------
#  data("alligator_data")

## -----------------------------------------------------------------------------
Length = alligator_data$length
cosimmr_ali <-cosimmr_load(
    formula = as.matrix(alligator_data$mixtures) ~ Length,
    source_names = alligator_data$source_names,
    source_means = as.matrix(alligator_data$source_means),
    source_sds = as.matrix(alligator_data$source_sds),
    correction_means = as.matrix(alligator_data$TEF_means),
    correction_sds = as.matrix(alligator_data$TEF_sds))

## ----eval = FALSE-------------------------------------------------------------
#  plot(cosimmr_ali, colour_by_cov = TRUE, cov_name = "Length")

## ----eval = FALSE-------------------------------------------------------------
#  cosimmr_ali_out = cosimmr_ffvb(cosimmr_ali)

## ----eval = FALSE-------------------------------------------------------------
#  summary(cosimmr_ali_out, type = "statistics")

## ----eval = FALSE-------------------------------------------------------------
#  plot(cosimmr_ali_out, type = c("prop_histogram", "beta_histogram"), obs = c(1,2), cov_name = "Length")

## ----eval = FALSE-------------------------------------------------------------
#  x_pred = data.frame(length = c(100,210,302))
#  alli_pred = predict(cosimmr_ali_out, x_pred)

## ----eval = FALSE-------------------------------------------------------------
#  summary(alli_pred, obs = c(1,2,3), type = "statistics")
#  
#  plot(alli_pred, type = "prop_density")

## ----eval = FALSE-------------------------------------------------------------
#  plot(cosimmr_ali_out, type = "covariates_plot", source = "Freshwater", cov_name = "Length")

## ----eval = FALSE-------------------------------------------------------------
#  plot(cosimmr_ali_out, type = "covariates_plot", cov_name = "Length", one_plot = TRUE, n_pred = 100)

