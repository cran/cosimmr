## ----eval = FALSE-------------------------------------------------------------
#  install.packages("cosimmr")

## ----message=FALSE------------------------------------------------------------
library(cosimmr)

## ----eval = FALSE-------------------------------------------------------------
#  system.file("extdata", "geese_data_small.xls", package = "cosimmr")

## ----echo = FALSE, eval = FALSE-----------------------------------------------
#  if (!requireNamespace("readxl", quietly = TRUE)) {
#    stop("readxl needed for this vignette to work. Please install it.",
#      call. = FALSE
#    )
#  }

## ----eval = FALSE-------------------------------------------------------------
#  library(readxl)
#  
#  path <- system.file("extdata", "geese_data_small.xls", package = "cosimmr")
#  
#  geese_data <- lapply(excel_sheets(path), read_excel, path = path)

## ----eval = FALSE-------------------------------------------------------------
#  targets <- geese_data[[1]]
#  sources <- geese_data[[2]]
#  TEFs <- geese_data[[3]]
#  concdep <- geese_data[[4]]

## ----eval = FALSE-------------------------------------------------------------
#  Weight <- targets$`Net Wt`
#  
#  geese_cosimmr <- cosimmr_load(
#    formula = as.matrix(targets[, 1:2]) ~ Weight,
#    source_names = sources$Sources,
#    source_means = as.matrix(sources[, 2:3]),
#    source_sds = as.matrix(sources[, 4:5]),
#    correction_means = as.matrix(TEFs[, 2:3]),
#    correction_sds = as.matrix(TEFs[, 4:5]),
#    concentration_means = as.matrix(concdep[, 2:3])
#    )
#  

## ----fig.align = 'center',fig.width = 7,fig.height = 5, eval = FALSE----------
#  plot(geese_cosimmr, colour_by_cov = TRUE, cov_name = "Weight")

## ----results = 'hide', message = FALSE, eval = FALSE--------------------------
#  geese_out = cosimmr_ffvb(geese_cosimmr)

## ----fig.align = 'center',fig.width = 7,fig.height = 5, eval = FALSE----------
#  prior_viz(geese_out)

## ----fig.align = 'center',fig.width = 7,fig.height = 5, eval = FALSE----------
#  plot(geese_out, type = "prop_hist", obs = c(1,2))

