f <- function() NULL
g <- function() cat("!")

test_that("expect = NA checks for no output", {
  expect_success(expect_output(f(), NA))
  expect_failure(expect_output(g(), NA), "produced output")
})

test_that("expect = NULL checks for some output", {
  expect_failure(expect_output(f(), NULL), "produced no output")
  expect_success(expect_output(g(), NULL))
})

test_that("expect = string checks for match", {
  expect_success(expect_output(g(), "!"))
  expect_failure(expect_output(g(), "x"), 'does not match "x"')
  expect_failure(expect_output("a", "x"), "produced no output")
})

test_that("multiline outputs captures and matches", {
  expect_success(expect_output(cat("1\n2"), "1\n2"))
})

test_that("expect_output sets width", {
  x <- expect_output(getOption("width"), NA)
  expect_equal(x, 80)

  x <- expect_output(getOption("width"), NA, width = 20)
  expect_equal(x, 20)
})

test_that("... passed on to grepl", {
  expect_success(expect_output(print("X"), "x", ignore.case = TRUE))
})

test_that("returns first argument", {
  expect_equal(expect_output(1, NA), 1)
})

test_that("uses unicode characters in output where available", {
  skip_if_not(l10n_info()$`UTF-8`)

  bar <- "\u2551"
  expect_success(expect_output(cat(bar), "\u2551"))
})

test_that("simple_error returns TRUE for basic errors", {
  is_simple <- function(x) simple_error(catch_cnd(x))

  expect_true(is_simple(stop("!")))
  expect_true(is_simple(abort("!")))
  expect_false(is_simple(abort("!", .subclass = "error_custom")))
})
