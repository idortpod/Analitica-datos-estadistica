test = list(
  name = "p1_media_teo",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(media_teo_unif) && length(media_teo_unif) == 1, info = "media_teo_unif debe ser un solo número.")
        testthat::expect_equal(as.numeric(media_teo_unif), as.numeric((parametros$unif_min + parametros$unif_max) / 2), tolerance = 1e-6)
      }
    )
  )
)