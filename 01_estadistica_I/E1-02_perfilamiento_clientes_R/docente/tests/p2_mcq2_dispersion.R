test = list(
  name = "p2_mcq2_dispersion",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0,
      code = {
        testthat::expect_true(exists("respuesta_mcq2"), info = "Guarde su respuesta en respuesta_mcq2.")
        testthat::expect_true(is.character(respuesta_mcq2) && toupper(trimws(respuesta_mcq2)) %in% c("A", "B", "C", "D"), info = "La respuesta debe ser una letra entre A y D, por ejemplo \"B\".")
      }
    ),
    ottr::TestCase$new(
      hidden = TRUE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(toupper(trimws(respuesta_mcq2)), {ce <- sd(muestra$edad)/mean(muestra$edad); cg <- sd(muestra$gasto_mensual)/mean(muestra$gasto_mensual); if (cg > 1.2 * ce) "B" else if (ce > 1.2 * cg) "A" else "C"})
      }
    )
  )
)