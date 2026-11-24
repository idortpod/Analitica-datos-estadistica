test = list(
  name = "p1_var_teo",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(var_teo_unif) && length(var_teo_unif) == 1, info = "var_teo_unif debe ser un solo número.")
        testthat::expect_equal(as.numeric(var_teo_unif), as.numeric((parametros$unif_max - parametros$unif_min)^2 / 12), tolerance = 1e-6)
      }
    )
  )
)