test = list(
  name = "p3_shapiro_defectos",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(exists("prueba_shapiro_defectos"), info = "No encuentro la variable prueba_shapiro_defectos.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(estadistico_shapiro_defectos) && length(estadistico_shapiro_defectos) == 1, info = "estadistico_shapiro_defectos debe ser un solo número.")
        testthat::expect_equal(as.numeric(estadistico_shapiro_defectos), as.numeric(shapiro.test(muestra$defectos_costura)$statistic), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(p_valor_shapiro_defectos) && length(p_valor_shapiro_defectos) == 1, info = "p_valor_shapiro_defectos debe ser un solo número.")
        testthat::expect_equal(as.numeric(p_valor_shapiro_defectos), as.numeric(shapiro.test(muestra$defectos_costura)$p.value), tolerance = 1e-8)
      }
    )
  )
)