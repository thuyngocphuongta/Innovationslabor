# import testthat package
library(testthat)

# use test_that to create tests
test_that("Kaya equation", {
  expect_equal(Kaya_equation(82.4,44,5,0.05), 906.4)
})

test_that("Check for error of Kaya equation", {
  expect_no_error(Kaya_equation(-82.4,44,5,0.05))
})

