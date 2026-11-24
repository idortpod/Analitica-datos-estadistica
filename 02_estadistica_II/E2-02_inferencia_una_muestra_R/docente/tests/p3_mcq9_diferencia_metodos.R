test = list(
  name = "p3_mcq9_diferencia_metodos",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq9"), info = "Guarde su respuesta en respuesta_mcq9.")
        testthat::expect_true(is.character(respuesta_mcq9) && toupper(trimws(respuesta_mcq9)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq9)), "B")
      }
    )
  )
)