test = list(
  name = "p2_mcq1_concentracion",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq1"), info = "Guarde su respuesta en respuesta_mcq1.")
        testthat::expect_true(is.character(respuesta_mcq1) && toupper(trimws(respuesta_mcq1)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq1)), {f <- max(prop.table(table(muestra$region))); if (f > 0.5) "A" else if (f >= 0.25) "B" else "C"})
      }
    )
  )
)