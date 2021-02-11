

test_that("errors thrown at block level are entraced", {
  f <- function() g()
  g <- function() stop("foo")
  f()
})

test_that("errors thrown from a quasi-labelled argument are entraced", {
  foo <- function() stop("foo")
  expect_s3_class(foo(), "foo")
})

test_that("errors thrown from a quasi-labelled argument are entraced (deep case)", {
  foo <- function() stop("foo")
  f <- function() g()
  g <- function() expect_s3_class(foo(), "foo")
  expect_s3_class(f(), "foo")
})

test_that("errors thrown from a quasi-labelled argument are entraced (deep deep case)", {
  foo <- function() bar()
  bar <- function() stop("foobar")

  f <- function() g()
  g <- function() expect_s3_class(foo(), "foo")

  f()
})

test_that("failed expect_error() prints a backtrace", {
  f <- function() signaller()

  signaller <- function() stop("bar")
  expect_error(f(), "foo")
})

test_that("Errors are inspected with `conditionMessage()`", {
  rlang::scoped_bindings(
    .env = globalenv(),
    conditionMessage.foobar = function(...) "dispatched"
  )
  rlang::abort("Wrong message", "foobar")
})

test_that("also get backtraces for warnings", {
  foo <- function() bar()
  bar <- function() warning("foobar", call. = FALSE)

  foo()
  expect_true(TRUE)
})

test_that("deep stacks are trimmed", {
  f <- function(x) {
    if (x > 0) f(x - 1) else stop("This is deep")
  }
  f(25)
})

# Expectations ----------------------------------------------------------------
f <- function() g()
g <- function() h()
h <- function() expect_true(FALSE)

f()

test_that("nested expectations get backtraces", {
  f()
})
