context("expect_error")

test_that("regexp = NULL checks for presence of error", {
  expect_success(expect_error(stop()))
  expect_failure(expect_error(null()), "did not throw an error")
})

test_that("regexp = NA checks for absence of error", {
  expect_success(expect_error(null(), NA))
  expect_failure(expect_error(stop("Yes"), NA))
})

test_that("regexp = string matches for error message", {
  expect_success(expect_error(stop("Yes"), "Yes"))
  expect_failure(expect_error(stop("Yes"), "No"))
  expect_failure(expect_error("OK", "No"), "did not throw an error")
})

test_that("class = string matches class of error", {
  blah <- function() {
    cond <- structure(
      list(message = "hi"),
      class = c("blah", "error", "condition")
    )
    stop(cond)
  }

  expect_success(expect_error(blah(), class = "blah"))
  expect_failure(
    expect_error(blah(), class = "blech"),
    "did not throw an error of class"
  )
})

test_that("... passed on to grepl", {
  expect_success(expect_error(stop("X"), "x", ignore.case = TRUE))
})

test_that("can optionally override language", {
  skip_on_os("windows")

  old <- Sys.getenv("LANGUAGE")
  Sys.setenv(LANGUAGE = "fr")
  on.exit(Sys.setenv(LANGUAGE = old))

  expect_success(expect_error(hello, "introuvable"))
  expect_success(expect_error(hello, "introuvable", language = "fr"))
  expect_failure(expect_error(hello, "introuvable", language = "en"))
})
