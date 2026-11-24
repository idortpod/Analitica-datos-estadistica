test = list(
  name = "p2_var_teo",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(var_teo_exp) && length(var_teo_exp) == 1, info = "var_teo_exp debe ser un solo número.")
        testthat::expect_equal(as.numeric(var_teo_exp), as.numeric(1 / parametros$exp_lambda^2), tolerance = 1e-6)
      }
    )
  )
)