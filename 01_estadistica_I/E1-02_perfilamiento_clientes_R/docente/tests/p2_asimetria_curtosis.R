test = list(
  name = "p2_asimetria_curtosis",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(asimetria_gasto) && length(asimetria_gasto) == 1, info = "asimetria_gasto debe ser un solo número.")
        testthat::expect_equal(as.numeric(asimetria_gasto), as.numeric(moments::skewness(muestra$gasto_mensual)), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(curtosis_gasto) && length(curtosis_gasto) == 1, info = "curtosis_gasto debe ser un solo número.")
        testthat::expect_equal(as.numeric(curtosis_gasto), as.numeric(moments::kurtosis(muestra$gasto_mensual)), tolerance = 1e-6)
      }
    )
  )
)