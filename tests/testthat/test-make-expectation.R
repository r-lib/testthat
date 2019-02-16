context("make_expectation")

test_that("make_expectation returns and prints expectation", {
  out <- capture_output(
    expect_equal(
      make_expectation(matrix(2)),
      quote(expect_equal(matrix(2), structure(2, .Dim = c(1L, 1L))))
    )
  )
  expect_equal(out,
               "expect_equal(matrix(2), structure(2, .Dim = c(1L, 1L)))")
})
