test_that("labelling compound {} expression gives single string", {
  out <- expr_label(quote({
    1 + 2
  }))

  expect_length(out, 1)
  expect_type(out, "character")
})

test_that("can label multiline functions", {
  expect_equal(
    expr_label(quote(function(x, y) {})),
    "function(x, y) ..."
  )
})
