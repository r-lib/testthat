context("Backtraces")

test_that("errors thrown at block level are entraced", {
  f <- function() g()
  g <- function() stop("foo")
  f()
})

test_that("errors thrown from a quasi-labelled argument are entraced", {
  foo <- function() stop("foo")
  expect_is(foo(), "foo")
})

test_that("errors thrown from a quasi-labelled argument are entraced (deep case)", {
  foo <- function() stop("foo")
  f <- function() g()
  g <- function() expect_is(foo(), "foo")
  expect_is(f(), "foo")
})

test_that("errors thrown from a quasi-labelled argument are entraced (deep deep case)", {
  foo <- function() bar()
  bar <- function() stop("foobar")

  f <- function() g()
  g <- function() expect_is(foo(), "foo")

  f()
})

test_that("failed expect_error() prints a backtrace", {
  f <- function() signaller()

  signaller <- function() signalCondition(structure(list(), class = "bar"))
  expect_condition(f(), class = "foo")

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

