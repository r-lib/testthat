f <- function() NULL
g <- function() cat("!")

test_that("expect = NA checks for no output", {
  expect_success(expect_output(f(), NA))
  expect_snapshot_failure(expect_output(g(), NA))
})

test_that("expect = NULL checks for some output", {
  expect_snapshot_failure(expect_output(f(), NULL))
  expect_success(expect_output(g(), NULL))
})

test_that("expect = string checks for match", {
  expect_success(expect_output(g(), "!"))
  expect_snapshot_failure(expect_output(g(), "x"))
  expect_snapshot_failure(expect_output("a", "x"))
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

test_that("always returns first argument", {
  f1 <- function() {
    1
  }
  f2 <- function() {
    cat("x")
    1
  }

  expect_equal(expect_output(f1(), NA), 1)
  expect_equal(expect_output(f2()), 1)
  expect_equal(expect_output(f2(), "x"), 1)
})

test_that("uses unicode characters in output where available", {
  skip_if_not(l10n_info()$`UTF-8`)

  bar <- "\u2551"
  expect_success(expect_output(cat(bar), "\u2551"))
})

test_that("expect_output validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_output(cat("hello"), "hello", width = "wide")
  })
})
