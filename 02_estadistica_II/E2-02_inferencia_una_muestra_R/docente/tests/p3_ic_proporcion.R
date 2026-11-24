test = list(
  name = "p3_ic_proporcion",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        p <- sum(muestra$color_conforme == "Si") / nrow(muestra); e <- 1.96 * sqrt(p * (1 - p) / nrow(muestra))
        testthat::expect_true(is.numeric(ic_wald_inferior) && length(ic_wald_inferior) == 1, info = "ic_wald_inferior debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_wald_inferior), as.numeric(p - e), tolerance = 1e-6)
        testthat::expect_true(is.numeric(ic_wald_superior) && length(ic_wald_superior) == 1, info = "ic_wald_superior debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_wald_superior), as.numeric(p + e), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        w <- prop.test(sum(muestra$color_conforme == "Si"), nrow(muestra), correct = FALSE)$conf.int
        testthat::expect_true(is.numeric(ic_wilson_inferior) && length(ic_wilson_inferior) == 1, info = "ic_wilson_inferior debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_wilson_inferior), as.numeric(w[1]), tolerance = 1e-6)
        testthat::expect_true(is.numeric(ic_wilson_superior) && length(ic_wilson_superior) == 1, info = "ic_wilson_superior debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_wilson_superior), as.numeric(w[2]), tolerance = 1e-6)
      }
    )
  )
)