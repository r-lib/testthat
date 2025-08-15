test_that("checks for any type of output", {
  expect_failure(expect_silent(warning("!")))
  expect_failure(expect_silent(message("!")))
  expect_failure(expect_silent(print("!")))

  expect_success(expect_silent(""))
})

test_that("generates useful failure message", {
  f <- function() {
    warning("warning")
    message("message")
    cat("output")
  }
  expect_snapshot_failure(expect_silent(f()))
})

test_that("returns first argument", {
  expect_equal(expect_silent(1), 1)
})

test_that("deprecations are ignored", {
  foo <- function() {
    lifecycle::deprecate_warn("1.0.0", "foo()")
  }
  expect_success(expect_silent(foo))
})
