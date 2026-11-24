test = list(
  name = "p2_mcq7_atipicos",
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
        testthat::expect_equal(toupper(trimws(respuesta_mcq7)), {x <- muestra$antiguedad_meses; q <- quantile(x, c(.25, .75)); r <- IQR(x); inf <- min(x) < q[1] - 1.5*r; sup <- max(x) > q[2] + 1.5*r; if (inf && sup) "D" else if (sup) "C" else if (inf) "B" else "A"})
      }
    )
  )
)