test = list(
  name = "p2_mcq3_implicacion_cv",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq3"), info = "Guarde su respuesta en respuesta_mcq3.")
        testthat::expect_true(is.character(respuesta_mcq3) && toupper(trimws(respuesta_mcq3)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq3)), "A")
      }
    )
  )
)