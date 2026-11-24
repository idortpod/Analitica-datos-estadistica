test = list(
  name = "p2_agrupado",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(exists("gasto_por_membresia"), info = "No encuentro la variable gasto_por_membresia.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(gasto_promedio_oro) && length(gasto_promedio_oro) == 1, info = "gasto_promedio_oro debe ser un solo número.")
        testthat::expect_equal(as.numeric(gasto_promedio_oro), as.numeric(mean(muestra$gasto_mensual[muestra$tipo_membresia == "Oro"])), tolerance = 1e-6)
        testthat::expect_true(is.numeric(gasto_promedio_bronce) && length(gasto_promedio_bronce) == 1, info = "gasto_promedio_bronce debe ser un solo número.")
        testthat::expect_equal(as.numeric(gasto_promedio_bronce), as.numeric(mean(muestra$gasto_mensual[muestra$tipo_membresia == "Bronce"])), tolerance = 1e-6)
      }
    )
  )
)