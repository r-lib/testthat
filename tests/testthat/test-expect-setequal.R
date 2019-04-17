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

test_that("fail if names don't match", {
  expect_failure(expect_mapequal(list(a = 1, b = 2), list(a = 1)))
  expect_failure(expect_mapequal(list(a = 1), list(a = 1, b = 2)))
})

test_that("fails if values don't match", {
  expect_failure(expect_mapequal(list(a = 1, b = 2), list(a = 1, b = 3)))
})

test_that("error for non-vectors", {
  expect_error(expect_mapequal(sum, sum), "be vectors")
})
