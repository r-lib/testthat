test_that("Success", {
  succeed()
})

context("Expectations")

test_that("Success", {
  succeed()
})

test_that("Failure:1", {
  fail()
})
test_that("Failure:2a", {
  f <- function() fail()
  f()
})
test_that("Failure:2b", {
  expect_true(FALSE)
})

test_that("Failure:loop", {
  for (i in 1:2) {
    expect_equal(i, 2)
  }
})

context("Expectations2")

context("Errors")

test_that("Error:1", {
  stop("stop")
})

test_that("Error:3", {
  f <- function() {
    g()
  }
  g <- function() {
    h()
  }
  h <- function() {
    stop("!")
  }

  f()
})

context("Recursion")

test_that("Recursion:1", {
  f <- function(x) {
    if (x > 0) f(x - 1) else stop("This is deep")
  }
  f(25)
})

context("Skips")

test_that("Skip:1", {
  skip("skip")
})

test_that("Skip:2", {
  f <- function() {
    skip("skip")
  }
  f()
})

test_that("Skip:3", {
})

context("Warnings")

test_that("Warning:1", {
  warning("abc")
})
test_that("Warning:2", {
  f <- function() {
    warning("ghi")
  }
  warning("def")
  f()
})

context("Output")

test_that("Output:1", {
  expect_output(expect_false(FALSE), NA)
})

context("End")
