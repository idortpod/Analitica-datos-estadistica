test = list(
  name = "p2_limites_atipicos",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(minimo_antiguedad) && length(minimo_antiguedad) == 1, info = "minimo_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(minimo_antiguedad), as.numeric(min(muestra$antiguedad_meses)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(maximo_antiguedad) && length(maximo_antiguedad) == 1, info = "maximo_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(maximo_antiguedad), as.numeric(max(muestra$antiguedad_meses)), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(limite_inferior_antiguedad) && length(limite_inferior_antiguedad) == 1, info = "limite_inferior_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(limite_inferior_antiguedad), as.numeric(quantile(muestra$antiguedad_meses, 0.25) - 1.5 * IQR(muestra$antiguedad_meses)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(limite_superior_antiguedad) && length(limite_superior_antiguedad) == 1, info = "limite_superior_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(limite_superior_antiguedad), as.numeric(quantile(muestra$antiguedad_meses, 0.75) + 1.5 * IQR(muestra$antiguedad_meses)), tolerance = 1e-6)
      }
    )
  )
)