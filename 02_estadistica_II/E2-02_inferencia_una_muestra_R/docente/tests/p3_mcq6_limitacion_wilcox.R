test = list(
  name = "p3_mcq6_limitacion_wilcox",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq6"), info = "Guarde su respuesta en respuesta_mcq6.")
        testthat::expect_true(is.character(respuesta_mcq6) && toupper(trimws(respuesta_mcq6)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq6)), "A")
      }
    )
  )
)