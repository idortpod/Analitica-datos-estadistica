test = list(
  name = "p3_proptest_color",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(n_conforme) && length(n_conforme) == 1, info = "n_conforme debe ser un solo número.")
        testthat::expect_equal(as.numeric(n_conforme), as.numeric(sum(muestra$color_conforme == "Si")), tolerance = 1e-6)
        testthat::expect_true(is.numeric(n_total) && length(n_total) == 1, info = "n_total debe ser un solo número.")
        testthat::expect_equal(as.numeric(n_total), as.numeric(nrow(muestra)), tolerance = 1e-6)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        r1 <- prop.test(sum(muestra$color_conforme == "Si"), nrow(muestra), p = 0.95, alternative = "less")
        r2 <- prop.test(sum(muestra$color_conforme == "Si"), nrow(muestra), p = 0.95, alternative = "less", correct = FALSE)
        testthat::expect_true(isTRUE(all.equal(p_valor_prop_color, r1$p.value, tolerance = 1e-6)) || isTRUE(all.equal(p_valor_prop_color, r2$p.value, tolerance = 1e-6)), info = "Revise los argumentos p y alternative de prop.test().")
        testthat::expect_true(isTRUE(all.equal(as.numeric(estadistico_prop_color), unname(r1$statistic), tolerance = 1e-6)) || isTRUE(all.equal(as.numeric(estadistico_prop_color), unname(r2$statistic), tolerance = 1e-6)))
      }
    )
  )
)