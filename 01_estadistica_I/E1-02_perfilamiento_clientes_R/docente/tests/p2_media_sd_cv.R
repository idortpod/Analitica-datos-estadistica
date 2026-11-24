test = list(
  name = "p2_media_sd_cv",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(media_edad) && length(media_edad) == 1, info = "media_edad debe ser un solo número.")
        testthat::expect_equal(as.numeric(media_edad), as.numeric(mean(muestra$edad)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(sd_edad) && length(sd_edad) == 1, info = "sd_edad debe ser un solo número.")
        testthat::expect_equal(as.numeric(sd_edad), as.numeric(sd(muestra$edad)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(cv_edad) && length(cv_edad) == 1, info = "cv_edad debe ser un solo número.")
        testthat::expect_equal(as.numeric(cv_edad), as.numeric(sd(muestra$edad) / mean(muestra$edad)), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(media_gasto) && length(media_gasto) == 1, info = "media_gasto debe ser un solo número.")
        testthat::expect_equal(as.numeric(media_gasto), as.numeric(mean(muestra$gasto_mensual)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(sd_gasto) && length(sd_gasto) == 1, info = "sd_gasto debe ser un solo número.")
        testthat::expect_equal(as.numeric(sd_gasto), as.numeric(sd(muestra$gasto_mensual)), tolerance = 1e-6)
        testthat::expect_true(is.numeric(cv_gasto) && length(cv_gasto) == 1, info = "cv_gasto debe ser un solo número.")
        testthat::expect_equal(as.numeric(cv_gasto), as.numeric(sd(muestra$gasto_mensual) / mean(muestra$gasto_mensual)), tolerance = 1e-6)
      }
    )
  )
)