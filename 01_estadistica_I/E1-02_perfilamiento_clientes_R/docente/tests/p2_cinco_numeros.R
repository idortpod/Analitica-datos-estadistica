test = list(
  name = "p2_cinco_numeros",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(q1_antiguedad) && length(q1_antiguedad) == 1, info = "q1_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(q1_antiguedad), as.numeric(quantile(muestra$antiguedad_meses, 0.25)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(mediana_antiguedad) && length(mediana_antiguedad) == 1, info = "mediana_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(mediana_antiguedad), as.numeric(median(muestra$antiguedad_meses)), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(q3_antiguedad) && length(q3_antiguedad) == 1, info = "q3_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(q3_antiguedad), as.numeric(quantile(muestra$antiguedad_meses, 0.75)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(iqr_antiguedad) && length(iqr_antiguedad) == 1, info = "iqr_antiguedad debe ser un solo número.")
        testthat::expect_equal(as.numeric(iqr_antiguedad), as.numeric(IQR(muestra$antiguedad_meses)), tolerance = 1e-6)
      }
    )
  )
)