test = list(
  name = "p2_mcq4_asimetria",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq4"), info = "Guarde su respuesta en respuesta_mcq4.")
        testthat::expect_true(is.character(respuesta_mcq4) && toupper(trimws(respuesta_mcq4)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq4)), {s <- moments::skewness(muestra$gasto_mensual); if (s > 0.5) "C" else if (s < -0.5) "B" else "A"})
      }
    )
  )
)