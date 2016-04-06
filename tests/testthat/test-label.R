context("label")

test_that("labelling compound {} expression gives single string", {
  out <- label({1 + 2})

  expect_length(out, 1)
  expect_type(out, "character")
})


test_that("can find label after it's been forced", {
  f <- function(x) {
    force(x)
    find_label(x)
  }

  abc <- 100

  expect_equal(f(abc), quote(abc))
})

test_that("can find label even when deeply nested", {
  f <- function(x) g(x)
  g <- function(y) h(y)
  h <- function(z) find_label(z)

  expect_equal(f(abc), quote(abc))
})
