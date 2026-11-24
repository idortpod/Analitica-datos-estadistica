test = list(
  name = "p3_ic_gramaje",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(ic_inferior_gramaje) && length(ic_inferior_gramaje) == 1, info = "ic_inferior_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_inferior_gramaje), as.numeric(t.test(muestra$gramaje_tela, mu = 180)$conf.int[1]), tolerance = 1e-6)
        testthat::expect_true(is.numeric(ic_superior_gramaje) && length(ic_superior_gramaje) == 1, info = "ic_superior_gramaje debe ser un solo número.")
        testthat::expect_equal(as.numeric(ic_superior_gramaje), as.numeric(t.test(muestra$gramaje_tela, mu = 180)$conf.int[2]), tolerance = 1e-6)
      }
    )
  )
)