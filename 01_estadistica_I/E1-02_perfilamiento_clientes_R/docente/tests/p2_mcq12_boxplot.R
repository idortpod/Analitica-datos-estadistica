test = list(
  name = "p2_mcq12_boxplot",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq12"), info = "Guarde su respuesta en respuesta_mcq12.")
        testthat::expect_true(is.character(respuesta_mcq12) && toupper(trimws(respuesta_mcq12)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq12)), {m <- tapply(muestra$gasto_mensual, muestra$tipo_membresia, median); c(Oro = "B", Bronce = "C", Plata = "D")[[names(which.max(m))]]})
      }
    )
  )
)