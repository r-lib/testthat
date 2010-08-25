context("Expectations")

test_that("errors are caught with throws_error", {
  res <- throws_error()(stop())
  expect_that(res$passed, is_true())
  
  res <- throws_error("Yes")(stop("Yes"))
  expect_that(res$passed, is_true())
  
  res <- throws_error("Yes")(stop("No"))
  expect_that(res$passed, is_false())
})

test_that("warnings are caught by gives_warning", {
  f <- function() {
    warning("a")
  }
  g <- function() {
    warning("a")
    warning("b")
  }
  
  expect_that(f(), gives_warning())
  expect_that(f(), gives_warning("a"))
  expect_that(g(), gives_warning("a"))
  expect_that(g(), gives_warning("b"))
  
})

test_that("messages are caught by shows_message", {
  f <- function() {
    message("a")
  }
  g <- function() {
    message("a")
    message("b")
  }
  
  expect_that(f(), shows_message())
  expect_that(f(), shows_message("a"))
  expect_that(g(), shows_message("a"))
  expect_that(g(), shows_message("b"))
  
})