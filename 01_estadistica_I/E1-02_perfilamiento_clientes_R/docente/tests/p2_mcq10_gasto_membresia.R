test = list(
  name = "p2_mcq10_gasto_membresia",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq10"), info = "Guarde su respuesta en respuesta_mcq10.")
        testthat::expect_true(is.character(respuesta_mcq10) && toupper(trimws(respuesta_mcq10)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq10)), {g <- tapply(muestra$gasto_mensual, muestra$tipo_membresia, mean); r <- g[["Oro"]] / g[["Bronce"]]; if (r > 1.1) "C" else if (r < 1/1.1) "A" else "B"})
      }
    )
  )
)