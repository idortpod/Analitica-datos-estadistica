test = list(
  name = "p2_simular_sumas",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        s <- simular_sumas_exp(5, 2000)
        testthat::expect_length(s, 2000)
        testthat::expect_true(all(s > 0))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_identical(simular_sumas_exp(10, 50), simular_sumas_exp(10, 50))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        s <- simular_sumas_exp(30, 2000)
        ee <- sqrt(30 / parametros$exp_lambda^2 / 2000)
        testthat::expect_lt(abs(mean(s) - 30 / parametros$exp_lambda), 4 * ee)
      }
    )
  )
)