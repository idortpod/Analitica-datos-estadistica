test = list(
  name = "p3_mcq10_diseno_estudio",
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
        testthat::expect_equal(toupper(trimws(respuesta_mcq10)), {p <- sum(muestra$color_conforme == "Si")/nrow(muestra); if (1.96 * sqrt(p*(1-p)/nrow(muestra)) > 0.025) "C" else "B"})
      }
    )
  )
)