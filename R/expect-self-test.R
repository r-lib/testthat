#' Tools for testing expectations
#'
#' Use these expectations to test other expectations.
#' Use `show_failure()` in examples to print the failure message without
#' throwing an error.
#'
#' @param expr Expression that evaluates a single expectation.
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to [expect_match()].
#' @keywords internal
#' @export
expect_success <- function(expr) {
  exp <- capture_expectation(expr)

  if (is.null(exp)) {
    fail("no expectation used.")
  } else if (!expectation_success(exp)) {
    fail(paste0(
      "Expectation did not succeed:\n",
      exp$message
    ))
  } else {
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  exp <- capture_expectation(expr)

  if (is.null(exp)) {
    fail("No expectation used")
    return()
  }
  if (!expectation_failure(exp)) {
    fail("Expectation did not fail")
    return()
  }

  if (!is.null(message)) {
    expect_match(exp$message, message, ...)
  } else {
    succeed()
  }
  invisible(NULL)
}

expect_skip <- function(code, regexp = NULL) {
  expect_condition(code, regexp, class = "skip")
}

#' @export
#' @rdname expect_success
show_failure <- function(expr) {
  exp <- capture_expectation(expr)

  if (!is.null(exp) && expectation_failure(exp)) {
    cat(crayon::bold("Failed expectation:\n"))
    cat(exp$message, "\n", sep = "")
  }

  invisible()
}

expect_snapshot_failure <- function(x) {
  expect_snapshot_error(x, "expectation_failure")
}

expect_snapshot_reporter <- function(reporter, path = test_path("reporters/tests.R")) {
  local_rng_version("3.3")
  set.seed(1014)
  # withr::local_seed(1014)

  expect_snapshot_output(
    with_reporter(reporter, test_one_file(path))
  )
}

# to work around https://github.com/r-lib/withr/issues/167
local_rng_version <- function(version, .local_envir = parent.frame()) {
  withr::defer(RNGversion(getRversion()), envir = .local_envir)
  suppressWarnings(RNGversion(version))
}

# Use specifically for testthat tests in order to override the
# defaults found when starting the reporter
local_output_override <- function(width = 80, crayon = TRUE, unicode = TRUE,
                                  .env = parent.frame()) {
  reporter <- get_reporter()
  if (is.null(reporter)) {
    return()
  }

  old_width <- reporter$width
  old_crayon <- reporter$crayon
  old_unicode <- reporter$unicode

  reporter$width <- width
  reporter$crayon <- crayon
  reporter$unicode <- unicode

  withr::defer({
    reporter$width <- old_width
    reporter$crayon <- old_crayon
    reporter$unicode <- old_unicode
  }, .env)
}

