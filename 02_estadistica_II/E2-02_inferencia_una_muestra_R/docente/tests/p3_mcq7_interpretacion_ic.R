test = list(
  name = "p3_mcq7_interpretacion_ic",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq7"), info = "Guarde su respuesta en respuesta_mcq7.")
        testthat::expect_true(is.character(respuesta_mcq7) && toupper(trimws(respuesta_mcq7)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq7)), "D")
      }
    )
  )
)