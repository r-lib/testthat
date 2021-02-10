test_that("list comparison truncates to max_diffs", {
  x <- as.list(as.character(1:1e3))
  y <- lapply(x, paste0, ".")

  lines1 <- strsplit(compare(x, y)$message, "\n")[[1]]
  expect_length(lines1, 10)

  lines2 <- strsplit(compare(x, y, max_diffs = 99)$message, "\n")[[1]]
  expect_length(lines2, 100)
})

test_that("no diff", {
  expect_equal(compare(1,1), no_difference())
})

test_that("vector_equal_tol handles infinity", {
  expect_true(vector_equal_tol(Inf, Inf))
  expect_true(vector_equal_tol(-Inf, -Inf))
  expect_false(vector_equal_tol(Inf, -Inf))
  expect_false(vector_equal_tol(Inf, 0))
})

test_that("vector_equal_tol handles na", {
  expect_true(vector_equal_tol(NA, NA))
  expect_false(vector_equal_tol(NA, 0))
})


# character ---------------------------------------------------------------

test_that("types must be the same", {
  expect_match(compare("a", 1L)$message, "character is not integer")
})

test_that("base lengths must be identical", {
  expect_match(compare("a", letters)$message, "1 is not 26")
})

test_that("classes must be identical", {
  c1 <- "a"
  c2 <- structure("a", class = "mycharacter")

  expect_match(compare(c1, c2)$message, "'character' is not 'mycharacter'")
})

test_that("attributes must be identical", {
  x1 <- "a"
  x2 <- c(a = "a")
  x3 <- c(b = "a")
  x4 <- structure("a", a = 1)
  x5 <- structure("a", b = 1)

  expect_match(compare(x1, x2)$message, "names for current")
  expect_match(compare(x2, x3)$message, "Names: 1 string mismatch")

  expect_match(compare(x1, x4)$message, "target is NULL")
  expect_match(compare(x4, x5)$message, "Names: 1 string mismatch")
})

test_that("two identical vectors are the same", {
  expect_true(compare(letters, letters)$equal)
})

test_that("equal if both missing or both the same (multiple values)", {
  expect_true(compare(c("ABC", NA), c("ABC", NA))$equal)

  expect_false(compare(c(NA, NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", "AB"), c("ABC", "AB"))$equal)
})

test_that("computes correct number of mismatches", {
  x <- mismatch_character(c("a", "b", "c"), c("c", "d", "e"))
  expect_equal(x$n, 3)
})

test_that("only differences are shown", {
  x <- mismatch_character(letters, c(letters[-26], "a"))

  lines <- strsplit(format(x), "\n")[[1]]
  expect_equal(lines[1], "1/26 mismatches")
  expect_equal(lines[2], 'x[26]: "z"')
})

test_that("not all lines are shown", {
  a <- "1234567890"
  b <- paste(rep(a, 10), collapse = "")

  x <- mismatch_character(a, b)
  lines <- strsplit(format(x, width = 16), "\n")[[1]]

  expect_equal(lines[1], "1/1 mismatches")
  expect_equal(length(lines), 8)
})

test_that("vectors longer than `max_diffs` (#513)", {
  comp <- compare(letters[1:2], LETTERS[1:2], max_diffs = 1)
  expect_s3_class(comp, "comparison")
  expect_false(comp$equal)
  expect_equal(comp$message, "2/2 mismatches\nx[1]: \"a\"\ny[1]: \"A\"")
})

# numeric ------------------------------------------------------------------


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

  expect_match(compare(1L, f1)$message, "'integer' is not 'factor'")
  expect_match(compare(1L, f2)$message, "'integer' is not 'ordered'/'factor'")
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

test_that("two identical vectors are the same", {
  expect_true(compare(1:10, 1:10)$equal)
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

test_that("mismatch_numeric truncates diffs", {
  x <- mismatch_numeric(1:11, 11:1)
  expect_equal(x$n, 11)
  expect_equal(x$n_diff, 10)

  lines <- strsplit(format(x, max_diffs = 5), "\n")[[1]]
  expect_equal(length(lines), 5 + 2)
})

# time --------------------------------------------------------------------

test_that("both POSIXt classes are compatible", {
  x1 <- Sys.time()
  x2 <- as.POSIXlt(x1)
  expect_true(compare(x1, x2)$equal)
  expect_true(compare(x2, x1)$equal)
})

test_that("other classes are not", {
  expect_match(compare(Sys.time(), 1)$message, "'POSIXct'/'POSIXt' is not 'numeric'")
})

test_that("base lengths must be identical", {
  x1 <- Sys.time()
  x2 <- c(x1, x1 - 3600)

  expect_match(compare(x1, x2)$message, "1 is not 2")
})

test_that("tzones must be identical", {
  t1 <- ISOdatetime(2016, 2, 29, 12, 13, 14, "EST")
  t2 <- ISOdatetime(2016, 2, 29, 12, 13, 14, "US/Eastern")

  expect_match(compare(t1, t2)$message, '"tzone": 1 string mismatch')
})

test_that("two identical vectors are the same", {
  x <- Sys.time()
  expect_true(compare(x, x)$equal)
})

test_that("two different values are not the same", {
  x1 <- Sys.time()
  x2 <- x1 + 3600
  expect_false(compare(x1, x2)$equal)
})

test_that("uses all.equal tolerance", {
  x1 <- structure(1457284588.83749, class = c("POSIXct", "POSIXt"))
  x2 <- structure(1457284588.837, class = c("POSIXct", "POSIXt"))
  expect_true(compare(x1, x2)$equal)
})
