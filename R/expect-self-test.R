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

expect_snapshot_reporter <- function(reporter, path = test_path("reporters/tests.R")) {
  # skip_if(getRversion() < "3.4", "Fails because of new `eval()` call structure")

  local_reproducible_output(unicode = TRUE)
  withr::local_options(list(rlang_trace_format_srcrefs = FALSE))

  expect_snapshot_output(
    with_reporter(
      reporter,
      test_one_file(path)
    )
  )
}
