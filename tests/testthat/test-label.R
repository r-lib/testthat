context("label")

test_that("labelling compound {} expression gives single string", {
  out <- label({1 + 2})

  expect_length(out, 1)
  expect_type(out, "character")
})
