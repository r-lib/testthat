capture_success_failure <- function(expr) {
  cnd <- NULL

  n_success <- 0
  n_failure <- 0

  last_failure <- NULL

  withCallingHandlers(
    expr,
    expectation_failure = function(cnd) {
      last_failure <<- cnd
      n_failure <<- n_failure + 1
      invokeRestart("muffle_expectation")
    },
    expectation_success = function(cnd) {
      n_success <<- n_success + 1
      invokeRestart("muffle_expectation")
    }
  )

  list(
    n_success = n_success,
    n_failure = n_failure,
    last_failure = last_failure
  )
}

#' Test your custom expectations
#'
#' @description
#' `expect_success()` checks that there's exactly one success and no failures;
#' `expect_failure()` checks that there's exactly one failure and no successes.
#' `expect_snapshot_failure()` records the failure message so that you can
#' manually check that it is informative.
#'
#' Use `show_failure()` in examples to print the failure message without
#' throwing an error.
#'
#' @param expr Code to evaluate
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to [expect_match()].
#' @export
expect_success <- function(expr) {
  status <- capture_success_failure(expr)

  expected <- "Expected exactly one success and no failures."
  if (status$n_success != 1) {
    actual <- sprintf("Actually succeeded %i times", status$n_success)
    fail(c(expected, actual))
  } else if (status$n_failure > 0) {
    actual <- sprintf("Actually failed %i times", status$n_failure)
    fail(c(expected, actual))
  } else {
    pass()
  }

  invisible()
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  status <- capture_success_failure(expr)

  expected <- "Expected exactly one failure and no successes."
  if (status$n_failure != 1) {
    actual <- sprintf("Actually failed %i times", status$n_failure)
    fail(c(expected, actual))
  } else if (status$n_success != 0) {
    actual <- sprintf("Actually succeeded %i times", status$n_success)
    fail(c(expected, actual))
  } else {
    if (is.null(message)) {
      pass()
    } else {
      act <- labelled_value(status$last_failure$message, "failure message")
      expect_match_(act, message, ..., title = "message")
    }
  }
  invisible()
}

#' @export
#' @rdname expect_success
expect_snapshot_failure <- function(expr) {
  expr <- enquo0(expr)
  expect_snapshot_(expr, error = TRUE, error_class = "expectation_failure")
}

#' Test for absence of success or failure
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' These functions are deprecated because [expect_success()] and
#' [expect_failure()] now test for exactly one success or no failures, and
#' exactly one failure and no successes.
#'
#' @keywords internal
#' @export
expect_no_success <- function(expr) {
  lifecycle::deprecate_warn("3.3.0", "expect_no_success()", "expect_failure()")
  status <- capture_success_failure(expr)

  if (status$n_success > 0) {
    fail("Expectation succeeded")
  } else {
    pass()
  }
  invisible()
}

#' @export
#' @rdname expect_no_success
expect_no_failure <- function(expr) {
  lifecycle::deprecate_warn("3.3.0", "expect_no_failure()", "expect_success()")
  status <- capture_success_failure(expr)

  if (status$n_failure > 0) {
    fail("Expectation failed")
  } else {
    pass()
  }
  invisible()
}

expect_snapshot_skip <- function(x, cran = FALSE) {
  expect_snapshot_condition_("skip", x)
}
expect_skip <- function(code) {
  expect_condition_matching_("skip", code)
}
expect_no_skip <- function(code) {
  expect_no_("skip", code)
}


#' @export
#' @rdname expect_success
show_failure <- function(expr) {
  exp <- capture_expectation(expr)

  if (!is.null(exp) && expectation_failure(exp)) {
    cat(cli::style_bold("Failed expectation:\n"))
    cat(exp$message, "\n", sep = "")
  }

  invisible()
}

expect_snapshot_reporter <- function(
  reporter,
  paths = test_path("reporters/tests.R")
) {
  local_options(rlang_trace_format_srcrefs = FALSE)
  withr::local_seed(1014)

  expect_snapshot_output(
    with_reporter(reporter, {
      for (path in paths) {
        test_one_file(path)
      }
    })
  )
}

# Use specifically for testthat tests in order to override the
# defaults found when starting the reporter
local_output_override <- function(
  width = 80,
  crayon = TRUE,
  unicode = TRUE,
  .env = parent.frame()
) {
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

  withr::defer(
    {
      reporter$width <- old_width
      reporter$crayon <- old_crayon
      reporter$unicode <- old_unicode
    },
    .env
  )
}
