context("compare.character")

# Metadata ----------------------------------------------------------------

test_that("types must be the same", {
  expect_match(compare("a", 1L)$message, "character vs integer")
})

test_that("base lengths must be identical", {
  expect_match(compare("a", letters)$message, "1 vs 26")
})

test_that("classes must be identical", {
  c1 <- "a"
  c2 <- structure("a", class = "mycharacter")

  expect_match(compare(c1, c2)$message, "character vs mycharacter")
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

# Values ------------------------------------------------------------------

test_that("two identical vectors are the same", {
  expect_true(compare(letters, letters)$equal)
})

test_that("equal if both missing or both the same (multiple values)", {
  expect_true(compare(c("ABC", NA), c("ABC", NA))$equal)

  expect_false(compare(c(NA, NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", "AB"), c("ABC", "AB"))$equal)
})


# Output ------------------------------------------------------------------

test_that("computes correct number of mismatches", {
  x <- mismatch_character(c("a","b","c"), c("c", "d", "e"))
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
