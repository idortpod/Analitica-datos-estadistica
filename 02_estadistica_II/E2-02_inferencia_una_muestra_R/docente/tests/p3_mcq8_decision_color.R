test = list(
  name = "p3_mcq8_decision_color",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq8"), info = "Guarde su respuesta en respuesta_mcq8.")
        testthat::expect_true(is.character(respuesta_mcq8) && toupper(trimws(respuesta_mcq8)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq8)), if (prop.test(sum(muestra$color_conforme == "Si"), nrow(muestra), correct = FALSE)$conf.int[2] < 0.95) "A" else "B")
      }
    )
  )
)