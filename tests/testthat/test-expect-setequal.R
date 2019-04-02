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

