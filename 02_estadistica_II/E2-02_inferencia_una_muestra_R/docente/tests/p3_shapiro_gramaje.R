test = list(
  name = "p3_shapiro_gramaje",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(exists("prueba_shapiro_gramaje"), info = "No encuentro la variable prueba_shapiro_gramaje.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(estadistico_shapiro_gramaje) && length(estadistico_shapiro_gramaje) == 1, info = "estadistico_shapiro_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(estadistico_shapiro_gramaje), as.numeric(shapiro.test(muestra$gramaje_tela)$statistic), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(p_valor_shapiro_gramaje) && length(p_valor_shapiro_gramaje) == 1, info = "p_valor_shapiro_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(p_valor_shapiro_gramaje), as.numeric(shapiro.test(muestra$gramaje_tela)$p.value), tolerance = 1e-6)
      }
    )
  )
)