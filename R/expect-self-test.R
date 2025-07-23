capture_failure <- new_capture("expectation_failure")
capture_success <- function(expr) {
  cnd <- NULL

  withCallingHandlers(
    expr,
    expectation_failure = function(cnd) {
      invokeRestart("continue_test")
    },
    expectation_success = function(cnd) {
      cnd <<- cnd
    }
  )
  cnd
}

new_capture("expectation_success")

#' Tools for testing expectations
#'
#' @description
#' * `expect_success()` and `expect_failure()` check that there's at least
#'   one success or failure respectively.
#' * `expect_snapshot_failure()` records the failure message so that you can
#'   manually check that it is informative.
#' * `expect_no_success()` and `expect_no_failure()` check that are no
#'   successes or failures.
#'
#' Use `show_failure()` in examples to print the failure message without
#' throwing an error.
#'
#' @param expr Code to evalute
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to [expect_match()].
#' @export
expect_success <- function(expr) {
  exp <- capture_success(expr)

  if (is.null(exp)) {
    fail("Expectation did not succeed")
  } else {
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_no_success <- function(expr) {
  exp <- capture_success(expr)

  if (!is.null(exp)) {
    fail("Expectation succeeded")
  } else {
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  exp <- capture_failure(expr)

  if (is.null(exp)) {
    fail("Expectation did not fail")
  } else if (!is.null(message)) {
    expect_match(exp$message, message, ...)
  } else {
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_snapshot_failure <- function(expr) {
  expect_snapshot_error(expr, "expectation_failure")
}

#' @export
#' @rdname expect_success
expect_no_failure <- function(expr) {
  exp <- capture_failure(expr)

  if (!is.null(exp)) {
    fail("Expectation failed")
  } else {
    succeed()
  }
  invisible(NULL)
}

expect_snapshot_skip <- function(x, cran = FALSE) {
  expect_snapshot_error(x, class = "skip", cran = cran)
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

expect_snapshot_reporter <- function(reporter, paths = test_path("reporters/tests.R")) {
  local_options(rlang_trace_format_srcrefs = FALSE)
  local_rng_version("3.3")
  set.seed(1014)
  # withr::local_seed(1014)

  expect_snapshot_output(
    with_reporter(reporter, {
      for (path in paths) test_one_file(path)
    })
  )
}

# to work around https://github.com/r-lib/withr/issues/167
local_rng_version <- function(version, .local_envir = parent.frame()) {
  withr::defer(RNGversion(as.character(getRversion())), envir = .local_envir)
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
