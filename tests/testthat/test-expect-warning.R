context("expect_warning")

test_that("regexp = NULL checks for presence of warning", {
  expect_success(expect_warning(warning("!")))
  expect_failure(expect_warning(null()), "showed 0 warnings")
})

test_that("regexp = NA checks for absence of warning", {
  expect_success(expect_warning(null(), NA))
  expect_failure(expect_warning(warning("!"), NA))
})

test_that("regexp = string matches _any_ warning", {
  f <- function() {
    warning("a")
    warning("b")
  }

  expect_success(expect_warning(f()))
  expect_success(expect_warning(f(), "a"))
  expect_success(expect_warning(f(), "b"))
  expect_failure(expect_warning(f(), "c"))
  expect_failure(expect_warning("", "c"), "showed 0 warnings")
})

test_that("... passed on to grepl", {
  expect_success(expect_warning(warning("X"), "x", ignore.case = TRUE))
})
