context("too many failures")

test_that("SummaryReport gives up if too many errors", {
  expect_equal(Inf, 1)
  expect_equal(Inf, 2)
  expect_equal(Inf, 3)
  expect_equal(Inf, 4)
  expect_equal(Inf, 5)
  expect_equal(Inf, 6)
  expect_equal(Inf, 7)
  expect_equal(Inf, 8)
  expect_equal(Inf, 9)
  expect_equal(Inf, 10)
})
