library(testthat)
library(checkmate)
library(Innovationslabor)

# use test_that to create tests
test_that("Kaya equation", {
  expect_equal(Innovationslabor:::Kaya_equation(82.4,44,5,0.05), 906.4)
})

test_that("Check for error of Kaya equation", {
  expect_error(Innovationslabor:::Kaya_equation(-82.4,44,5,0.05))
})

test_that("Kaya equation", {
  eps <- 0.001
  expected <- 246.9755
  actual <- Innovationslabor:::Kaya_equation(82.4,44,5,0.05, "C")
  expect_lt(abs(expected - actual), eps)
})
