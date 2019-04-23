# setequal ----------------------------------------------------------------

test_that("ignores order and duplicates", {
  expect_success(expect_setequal(letters, rev(letters)))
  expect_success(expect_setequal(c("a", "a", "b"), c("b", "b", "a")))
})

test_that("checks both directions of containment", {
  expect_failure(expect_setequal(letters, letters[-1]))
  expect_failure(expect_setequal(letters[-1], letters))
})

test_that("truncates long differences", {
  cnd <- catch_cnd(expect_setequal("a", letters))
  expect_match(cnd$message, "...")
})

test_that("warns if both inputs are named", {
  expect_warning(expect_setequal(c(a = 1), c(b = 1)), "ignores names")
})

test_that("error for non-vectors", {
  expect_error(expect_setequal(sum, sum), "be vectors")
})

# mapequal ----------------------------------------------------------------

test_that("ignores order", {
  expect_success(expect_mapequal(list(a = 1, b = 2), list(b = 2, a = 1)))
})

test_that("error if any names are duplicated", {
  expect_error(expect_mapequal(list(a = 1, b = 2, b = 3), list(b = 2, a = 1)))
  expect_error(expect_mapequal(list(a = 1, b = 2), list(b = 3, b = 2, a = 1)))
  expect_error(expect_mapequal(list(a = 1, b = 2, b = 3), list(b = 3, b = 2, a = 1)))
})

test_that("handling NULLs", {
  expect_success(expect_mapequal(list(a = 1, b = NULL), list(b = NULL, a = 1)))
})

test_that("fail if names don't match", {
  expect_failure(expect_mapequal(list(a = 1, b = 2), list(a = 1)))
  expect_failure(expect_mapequal(list(a = 1), list(a = 1, b = 2)))
})

test_that("fails if values don't match", {
  expect_failure(expect_mapequal(list(a = 1, b = 2), list(a = 1, b = 3)))
})

test_that("error for non-vectors", {
  expect_error(expect_mapequal(sum, sum), "be vectors")
  expect_error(expect_mapequal(NULL, NULL), "be vectors")
})

test_that("error if any unnamed values", {
  expect_error(expect_mapequal(list(1, b = 2), list(1, b = 2)))
  expect_error(expect_mapequal(list(1, b = 2), list(b = 2, 1)))
})

test_that("succeeds if comparing empty named and unnamed vectors", {
  x1 <- list()
  x2 <- setNames(list(), character())

  expect_warning(expect_success(expect_mapequal(x1, x1)))
  expect_warning(expect_success(expect_mapequal(x1, x2)))
  expect_warning(expect_success(expect_mapequal(x2, x1)))
  expect_warning(expect_success(expect_mapequal(x2, x2)))
})
