context("square")
library("testthat")

test_that("output is correct", {
  expect_equal(square(4), 16)
})
