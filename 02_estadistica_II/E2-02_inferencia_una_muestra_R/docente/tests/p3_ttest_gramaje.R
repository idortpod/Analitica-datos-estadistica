test = list(
  name = "p3_ttest_gramaje",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(exists("prueba_t_gramaje"), info = "No encuentro la variable prueba_t_gramaje.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(estadistico_t_gramaje) && length(estadistico_t_gramaje) == 1, info = "estadistico_t_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(estadistico_t_gramaje), as.numeric(t.test(muestra$gramaje_tela, mu = 180)$statistic), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(p_valor_t_gramaje) && length(p_valor_t_gramaje) == 1, info = "p_valor_t_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(p_valor_t_gramaje), as.numeric(t.test(muestra$gramaje_tela, mu = 180)$p.value), tolerance = 1e-6)
      }
    )
  )
)