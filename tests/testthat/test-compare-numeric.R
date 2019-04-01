# Metadata ----------------------------------------------------------------

test_that("numeric types are compatible", {
  expect_true(compare(1, 1L)$equal)
  expect_true(compare(1L, 1)$equal)
})

test_that("non-numeric types are not compatible", {
  expect_match(compare(1, "a")$message, "double is not character")
})

test_that("base lengths must be identical", {
  expect_match(compare(1, c(1, 2))$message, "1 is not 2")
})

test_that("classes must be identical", {
  f1 <- factor("a")
  f2 <- factor("a", ordered = TRUE)

  expect_match(compare(1L, f1)$message, "integer is not factor")
  expect_match(compare(1L, f2)$message, "integer is not ordered/factor")
})

test_that("attributes must be identical", {
  x1 <- 1L
  x2 <- c(a = 1L)
  x3 <- c(b = 1L)
  x4 <- structure(1L, a = 1)
  x5 <- structure(1L, b = 1)

  expect_match(compare(x1, x2)$message, "names for current")
  expect_match(compare(x2, x3)$message, "Names: 1 string mismatch")

  expect_match(compare(x1, x4)$message, "target is NULL")
  expect_match(compare(x4, x5)$message, "Names: 1 string mismatch")
})

test_that("unless check.attributes is FALSE", {
  x1 <- 1L
  x2 <- c(a = 1L)
  x3 <- structure(1L, a = 1)

  expect_equal(compare(x1, x2, check.attributes = FALSE)$message, "Equal")
  expect_equal(compare(x1, x3, check.attributes = FALSE)$message, "Equal")
  expect_equal(compare(x2, x3, check.attributes = FALSE)$message, "Equal")
})

# Values ------------------------------------------------------------------

test_that("two identical vectors are the same", {
  expect_true(compare(1:10, 1:10)$equal)
})

test_that("unnamed arguments to all.equal passed through correctly", {
  expect_equal(415, 416, 0.01)
})

test_that("named arguments to all.equal passed through", {
  expect_equal(415, 416, tolerance = 0.01)
})

test_that("tolerance used for individual comparisons", {
  x1 <- 1:3
  x2 <- x1 + c(0, 0, 0.1)

  expect_false(compare(x1, x2)$equal)
  expect_true(compare(x1, x2, tolerance = 0.1)$equal)
})


# Mismatch table ----------------------------------------------------------

test_that("mismatch_numeric truncates diffs", {
  x <- mismatch_numeric(1:11, 11:1)
  expect_equal(x$n, 11)
  expect_equal(x$n_diff, 10)

  lines <- strsplit(format(x, max_diffs = 5), "\n")[[1]]
  expect_equal(length(lines), 5 + 2)
})
