context("match")

test_that("basic wildcard works", {
  expect_true(match('abcde', 'a%e', '%')$equal)
})

test_that("full line match", {
  expect_false(match('abcde', 'a%d', '%')$equal)
})

test_that("only differences are shown", {
  x <- match(paste0(letters, 'xyz', letters),
             paste0(letters, '%', c(letters[-26], "a")),
             '%')$message

  lines <- strsplit(format(x), "\n")[[1]]
  expect_equal(lines[1], "1/26 mismatches")
  expect_equal(lines[2], 'x[26]: "zxyzz"')
  expect_equal(lines[3], 'y[26]: "z%a"')
})

test_that("special characters are escaped", {
  expect_true(match('a#()[]bc', 'a#()[]%c', '%')$equal)
})
