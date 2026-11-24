test = list(
  name = "p3_wilcox_defectos",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(exists("prueba_wilcox_defectos"), info = "No encuentro la variable prueba_wilcox_defectos.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        ref <- suppressWarnings(wilcox.test(muestra$defectos_costura, mu = 1, alternative = "greater"))
        testthat::expect_true(is.numeric(estadistico_wilcox_defectos) && length(estadistico_wilcox_defectos) == 1, info = "estadistico_wilcox_defectos debe ser un solo número.")
        testthat::expect_equal(as.numeric(estadistico_wilcox_defectos), as.numeric(ref$statistic), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        ref <- suppressWarnings(wilcox.test(muestra$defectos_costura, mu = 1, alternative = "greater"))
        testthat::expect_true(is.numeric(p_valor_wilcox_defectos) && length(p_valor_wilcox_defectos) == 1, info = "p_valor_wilcox_defectos debe ser un solo número.")
        testthat::expect_equal(as.numeric(p_valor_wilcox_defectos), as.numeric(ref$p.value), tolerance = 1e-8)
      }
    )
  )
)