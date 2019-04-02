context("make_expectation")

test_that("make_expectation returns and prints expectation", {
  x <- 1:5
  out <- capture_output(
    expect_equal(make_expectation(x), quote(expect_equal(x, 1:5)))
  )
  expect_equal(
    out,
    "expect_equal(x, 1:5)"
  )
})
