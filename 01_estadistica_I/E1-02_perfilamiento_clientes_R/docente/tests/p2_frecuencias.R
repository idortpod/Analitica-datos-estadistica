test = list(
  name = "p2_frecuencias",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        testthat::expect_true(exists("tabla_region"), info = "No encuentro la variable tabla_region.")
        testthat::expect_true(exists("region_mas_frecuente"), info = "No encuentro la variable region_mas_frecuente.")
        testthat::expect_true(exists("frecuencia_relativa_moda"), info = "No encuentro la variable frecuencia_relativa_moda.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        testthat::expect_equal(as.vector(tabla_region[sort(names(tabla_region))]), as.vector(table(muestra$region)))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        testthat::expect_equal(as.character(region_mas_frecuente), names(which.max(table(muestra$region))))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        testthat::expect_true(is.numeric(frecuencia_relativa_moda) && length(frecuencia_relativa_moda) == 1, info = "frecuencia_relativa_moda debe ser un solo número.")
        testthat::expect_equal(as.numeric(frecuencia_relativa_moda), as.numeric(max(prop.table(table(muestra$region)))), tolerance = 1e-6)
      }
    )
  )
)