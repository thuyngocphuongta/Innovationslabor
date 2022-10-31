# use test_that to create tests
testthat::test_that("Kaya equation", {
  expect_equal(Kaya_equation(82.4,44,5,0.05, "CO2"), 906.4)
})

testthat::test_that("Check for error of Kaya equation", {
  expect_error(Kaya_equation(-82.4,44,5,0.05,"CO2"))
})

testthat::test_that("Kaya equation", {
  eps <- 0.001
  expected <- 246.9755
  actual <- Kaya_equation(82.4,44,5,0.05, "C")
  expect_lt(abs(expected - actual), eps)
})
