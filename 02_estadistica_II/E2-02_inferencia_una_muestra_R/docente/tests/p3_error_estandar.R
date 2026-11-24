test = list(
  name = "p3_error_estandar",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(error_estandar_color) && length(error_estandar_color) == 1, info = "error_estandar_color debe ser un solo número.")
        testthat::expect_equal(as.numeric(error_estandar_color), as.numeric(sqrt((sum(muestra$color_conforme == "Si")/nrow(muestra)) * (1 - sum(muestra$color_conforme == "Si")/nrow(muestra)) / nrow(muestra))), tolerance = 1e-6)
      }
    )
  )
)