capture_success_failure <- function(expr) {
  cnd <- NULL

  n_success <- 0
  n_failure <- 0

  last_failure <- NULL

  withRestarts(
    withCallingHandlers(
      expr,
      expectation_failure = function(cnd) {
        last_failure <<- cnd
        n_failure <<- n_failure + 1
        # Finish the test without bubbling up
        invokeRestart("failed")
      },
      expectation_success = function(cnd) {
        n_success <<- n_success + 1
        # Don't bubble up to any other handlers
        invokeRestart("continue_test")
      }
    ),
    failed = function() {}
  )

  list(
    n_success = n_success,
    n_failure = n_failure,
    last_failure = last_failure
  )
}

#' Tools for testing expectations
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
#' @param expr Code to evalute
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to [expect_match()].
#' @export
expect_success <- function(expr) {
  status <- capture_success_failure(expr)

  if (status$n_success == 1 && status$n_failure == 0) {
    succeed()
  } else if (status$n_success == 0) {
    fail("Expectation did not succeed")
  } else if (status$n_success > 1) {
    fail(sprintf(
      "Expectation succeeded %i times, instead of once",
      status$n_success
    ))
  } else if (status$n_failure > 0) {
    fail(sprintf(
      "Expectation failed %i times, instead of zero",
      status$n_failure
    ))
  }

  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  status <- capture_success_failure(expr)

  if (status$n_failure == 1 && status$n_success == 0) {
    if (!is.null(message)) {
      return(expect_match(status$last_failure$message, message, ...))
    }
    succeed()
  } else if (status$n_failure == 0) {
    fail("Expectation did not fail")
  } else if (status$n_failure > 1) {
    # This should be impossible, but including for completeness
    fail("Expectation failed more than once")
  } else if (status$n_success != 0) {
    fail(sprintf(
      "Expectation succeeded %i times, instead of never",
      status$n_success
    ))
  }

  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_snapshot_failure <- function(expr) {
  expect_snapshot_error(expr, "expectation_failure")
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
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_no_success
expect_no_failure <- function(expr) {
  lifecycle::deprecate_warn("3.3.0", "expect_no_failure()", "expect_success()")
  status <- capture_success_failure(expr)

  if (status$n_failure > 0) {
    fail("Expectation failed")
  } else {
    succeed()
  }
  invisible(NULL)
}

expect_snapshot_skip <- function(x, cran = FALSE) {
  expect_snapshot_error(x, class = "skip", cran = cran)
}
expect_skip <- function(code) {
  expect_condition(code, class = "skip")
}
expect_no_skip <- function(code) {
  expect_no_condition(code, class = "skip")
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
  withr::local_rng_version("3.3")
  set.seed(1014)
  # withr::local_seed(1014)

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
