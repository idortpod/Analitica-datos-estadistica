test = list(
  name = "p3_mcq5_decision_defectos",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq5"), info = "Guarde su respuesta en respuesta_mcq5.")
        testthat::expect_true(is.character(respuesta_mcq5) && toupper(trimws(respuesta_mcq5)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq5)), if (suppressWarnings(wilcox.test(muestra$defectos_costura, mu = 1, alternative = "greater"))$p.value < 0.05) "D" else "A")
      }
    )
  )
)