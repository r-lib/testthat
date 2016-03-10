context("label")

test_that("labelling compound {} expression gives single string", {
  out <- label({1 + 2})

  expect_length(out, 1)
  expect_type(out, "character")
})

test_that("labelling in called function works if value is forced", {
  f <- function(v) {
    force(v)
    expect_equal(v, v)
  }

  for (v in 1:5) f(v)
})
