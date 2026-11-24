test = list(
  name = "p3_probabilidad",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(prob_supera) && length(prob_supera) == 1, info = "prob_supera debe ser un solo número.")
        testthat::expect_equal(as.numeric(prob_supera), as.numeric(pnorm(parametros$horas_disp, mean = 40 / parametros$exp_lambda, sd = sqrt(40 / parametros$exp_lambda^2), lower.tail = FALSE)), tolerance = 1e-4)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(prob_supera >= 0 && prob_supera <= 1)
      }
    )
  )
)