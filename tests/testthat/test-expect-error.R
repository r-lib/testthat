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
    "threw an error with unexpected class"
  )
  expect_failure(
    expect_condition(blah(), class = "blech"),
    "threw an condition with unexpected class"
  )
})

test_that("... passed on to grepl", {
  expect_success(expect_error(stop("X"), "x", ignore.case = TRUE))
})

test_that("generates informative failures", {
  skip_if_not(l10n_info()$`UTF-8`)

  expect_known_failure("test-expect-error.txt", {
    expect_error(null())
    expect_error(stop("!"), NA)

    expect_error(stop("xxx"), regexp = "zzz")
    expect_error(stop("xxx"), class = "zzz")
    expect_error(stop("xxx"), regexp = "zzz", class = "zzz")
  })
})

test_that("warnings are converted to errors when options('warn') >= 2", {
  withr::with_options(
    c(warn = 2),
    expect_error(warning("foo"))
  )
})
