context("Expectations")

test_that("errors are caught with throws_error", {
  res <- throws_error()(stop())
  expect_that(res$passed, is_true())

  res <- throws_error("Yes")(stop("Yes"))
  expect_that(res$passed, is_true())

  res <- throws_error("Yes")(stop("No"))
  expect_that(res$passed, is_false())
})

test_that("failure to throw an error is a failure", {
  res <- throws_error()(log(1))
  expect_that(res$passed, is_false())

  res <- throws_error("error")(log(1))
  expect_that(res$passed, is_false())

  res <- throws_error()(NULL)
  expect_that(res$passed, is_false())

  res <- throws_error("error")(NULL)
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

test_that("shows_mesage / gives_warning work when no messages are generated", {
  expect_identical(gives_warning("a")(1)$failure_msg, "no warnings given")
  expect_identical(shows_message("a")(1)$failure_msg, "no messages shown")
})

test_that("expect_output captures multiline code", {
  expect_output(cat("1\n2"), "1\n2")
})

test_that("expect_output prints by default", {
  expect_output(1, "1")
})


test_that("extra arguments to matches passed onto grepl", {
  expect_match("te*st", "e*", fixed = TRUE)
  expect_match("test", "TEST", ignore.case = TRUE)

  expect_that("te*st", matches("e*", fixed = TRUE))
  expect_that("test", matches("TEST", ignore.case = TRUE))

})

test_that("for messages, warnings, errors and output, ... passed onto grepl", {
  expect_output(print("X"), "x", ignore.case = TRUE)
  expect_message(message("X"), "x", ignore.case = TRUE)
  expect_warning(warning("X"), "x", ignore.case = TRUE)
  expect_error(stop("X"), "x", ignore.case = TRUE)
})
