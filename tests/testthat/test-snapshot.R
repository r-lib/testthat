test_that("can snapshot output", {
  foo <- function() cat("y")
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
})

test_that("can snapshot everything", {
  f <- function() {
    print("1")
    message("2")
    warn("3")
    abort("4")
  }
  expect_snapshot(f(), error = TRUE)
})

test_that("multiple outputs of same type are collapsed", {
  expect_snapshot({
    x <- 1
    y <- 1
    {message("a"); message("b")}
    {warn("a"); warn("b")}
  })
})

test_that("always checks error status", {
  expect_failure(expect_snapshot(stop("!"), error = FALSE))
  expect_failure(expect_snapshot(print("!"), error = TRUE))
})

test_that("snapshot handles multi-line input", {
  expect_snapshot({
    1 + 2
    3 + 4
    "this is a comment"
  })
})

test_that("snapshot captures output if visible", {
  f_visible <- function() "x"
  f_invisible <- function() invisible("x")

  expect_snapshot(f_visible())
  expect_snapshot(f_invisible())
})

test_that("captures custom classes", {
  f <- function() {
    inform("Hello", class = "testthat_greeting")
    warn("Goodbye", class = "testthat_farewell")
    abort("Eeek!", class = "testthat_scream")
  }
  expect_snapshot(f(), error = TRUE)
})

test_that("even with multiple lines", {
  expect_snapshot_output(cat("a\nb\nc"))
  expect_snapshot_output(cat("a\nb\nc\n"))
})

test_that("can snapshot values", {
  x <- list("a", 1.5, 1L, TRUE)
  expect_snapshot_value(x, style = "json")
  expect_snapshot_value(x, style = "json2")
  expect_snapshot_value(x, style = "deparse")
  expect_snapshot_value(x, style = "serialize")
})

test_that("can control snapshot value details", {
  expect_snapshot_value(1.2, tolerance = 0.1)
})

test_that("reparse handles common cases", {
  roundtrip <- function(x) reparse(deparse(x))
  expect_equal(roundtrip(c(1, 2, 3)), c(1, 2, 3))
  expect_equal(roundtrip(list(1, 2, 3)), list(1, 2, 3))
  expect_equal(roundtrip(mtcars), mtcars)

  f <- function(x) x + 1
  expect_equal(roundtrip(f), f, ignore_function_env = TRUE)
})
