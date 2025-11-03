local_edition(2)

context("Successes")

test_that("Success", {
  pass()
})

context("Failures")

test_that("Failure:1", {
  x <- FALSE
  expect_true(x)
})

test_that("Failure:2a", {
  f <- function() expect_true(FALSE)
  f()
})

context("Errors")

test_that("Error:1", {
  stop("stop")
})

test_that("errors get tracebacks", {
  f <- function() g()
  g <- function() h()
  h <- function() stop("!")

  f()
})

context("Skips")

test_that("explicit skips are reported", {
  skip("skip")
})

test_that("empty tests are implicitly skipped", {})

context("Warnings")

test_that("warnings get backtraces", {
  f <- function() {
    warning("def")
  }
  f()
})
