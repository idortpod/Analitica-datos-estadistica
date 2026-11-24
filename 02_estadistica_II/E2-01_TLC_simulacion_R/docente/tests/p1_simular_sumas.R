test = list(
  name = "p1_simular_sumas",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        s <- simular_sumas_unif(5, 2000)
        testthat::expect_length(s, 2000)
        testthat::expect_true(is.numeric(s))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        testthat::expect_identical(simular_sumas_unif(10, 50), simular_sumas_unif(10, 50))  # reproducible: usa reseed()
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        s <- simular_sumas_unif(30, 2000)
        ee <- sqrt(30 * (parametros$unif_max - parametros$unif_min)^2 / 12 / 2000)
        testthat::expect_lt(abs(mean(s) - 30 * (parametros$unif_min + parametros$unif_max) / 2), 4 * ee)
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 0.5,
      code = {
        set.seed(codigo_estudiante + 100 + 7); RNGkind("Mersenne-Twister", "Inversion", "Rejection")
        esperado <- replicate(20, sum(runif(7, min = parametros$unif_min, max = parametros$unif_max)))
        testthat::expect_equal(simular_sumas_unif(7, 20), esperado, tolerance = 1e-8)
      }
    )
  )
)