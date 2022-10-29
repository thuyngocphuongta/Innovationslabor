# import testthat package
library(testthat)

# use test_that to create tests
test_that("Kaya equation", {
  eps <- 0.001
  expected <- 246.9755
  actual <- Kaya_equation(82.4,44,5,0.05, "C")
  expect_lt(abs(expected - actual), eps)
})
