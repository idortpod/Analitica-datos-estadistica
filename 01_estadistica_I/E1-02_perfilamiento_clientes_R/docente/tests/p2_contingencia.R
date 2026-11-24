test = list(
  name = "p2_contingencia",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(exists("tabla_contingencia"), info = "No encuentro la variable tabla_contingencia.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_equal(sum(tabla_contingencia), nrow(muestra))
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.6666666666666666,
      code = {
        testthat::expect_true(is.numeric(prop_oro_femenino) && length(prop_oro_femenino) == 1, info = "prop_oro_femenino debe ser un solo número.")
        testthat::expect_equal(as.numeric(prop_oro_femenino), as.numeric(mean(muestra$tipo_membresia[muestra$genero == "Femenino"] == "Oro")), tolerance = 1e-6)
      }
    )
  )
)