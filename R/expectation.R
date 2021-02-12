#' The building block of all `expect_` functions
#'
#' Call `expect()` when writing your own expectations. See
#' `vignette("custom-expectation")` for details.
#'
#' @param ok `TRUE` or `FALSE` indicating if the expectation was successful.
#' @param failure_message Message to show if the expectation failed.
#' @param info Character vector continuing additional information. Included
#'   for backward compatibility only and new expectations should not use it.
#' @param srcref Location of the failure. Should only needed to be explicitly
#'   supplied when you need to forward a srcref captured elsewhere.
#' @param trace An optional backtrace created by [rlang::trace_back()].
#'   When supplied, the expectation is displayed with the backtrace.
#' @param trace_env If `is.null(trace)`, this is used to automatically
#'   generate a traceback running from `test_code()`/`test_file()` to
#'   `trace_env`. You'll generally only need to set this if you're wrapping
#'   an expectation inside another function.
#' @return An expectation object. Signals the expectation condition
#'   with a `continue_test` restart.
#'
#' @details
#'
#' While `expect()` creates and signals an expectation in one go,
#' `exp_signal()` separately signals an expectation that you
#' have manually created with [new_expectation()]. Expectations are
#' signalled with the following protocol:
#'
#' * If the expectation is a failure or an error, it is signalled with
#'   [base::stop()]. Otherwise, it is signalled with
#'   [base::signalCondition()].
#'
#' * The `continue_test` restart is registered. When invoked, failing
#'   expectations are ignored and normal control flow is resumed to
#'   run the other tests.
#'
#' @seealso [exp_signal()]
#' @export
expect <- function(ok, failure_message,
                   info = NULL,
                   srcref = NULL,
                   trace = NULL,
                   trace_env = caller_env()) {
  type <- if (ok) "success" else "failure"

  # Preserve existing API which appear to be used in package test code
  # Can remove in next major release
  if (missing(failure_message)) {
    warn("`failure_message` is missing, with no default.")
    message <- "unknown failure"
  } else {
    # A few packages include code in info that errors on evaluation
    if (ok) {
      message <- paste(failure_message, collapse = "\n")
    } else {
      message <- paste(c(failure_message, info), collapse = "\n")
    }
  }

  if (!ok) {
    if (is.null(trace)) {
      trace <- trace_back(
        top = getOption("testthat_topenv"),
        bottom = trace_env
      )
    }

    # Only show if there's at least one function apart from the expectation
    if (trace_length(trace) <= 1) {
      trace <- NULL
    }
  }

  exp <- expectation(type, message, srcref = srcref, trace = trace)
  exp_signal(exp)
}


#' Construct an expectation object
#'
#' For advanced use only. If you are creating your own expectation, you should
#' call [expect()] instead. See `vignette("custom-expectation")` for more
#' details.
#'
#' Create an expectation with `expectation()` or `new_expectation()`
#' and signal it with `exp_signal()`.
#'
#' @param type Expectation type. Must be one of "success", "failure", "error",
#'   "skip", "warning".
#' @param message Message describing test failure
#' @param srcref Optional `srcref` giving location of test.
#' @inheritParams expect
#' @keywords internal
#' @export
expectation <- function(type, message, srcref = NULL, trace = NULL) {
  new_expectation(type, message, srcref = srcref, trace = trace)
}
#' @rdname expectation
#' @param ... Additional attributes for the expectation object.
#' @param .subclass An optional subclass for the expectation object.
#' @export
new_expectation <- function(type,
                            message,
                            ...,
                            srcref = NULL,
                            trace = NULL,
                            .subclass = NULL) {
  type <- match.arg(type, c("success", "failure", "error", "skip", "warning"))

  structure(
    list(
      message = message,
      srcref = srcref,
      trace = trace
    ),
    class = c(
      .subclass,
      paste0("expectation_", type),
      "expectation",
      # Make broken expectations catchable by try()
      if (type %in% c("failure", "error")) "error",
      "condition"
    ),
    ...
  )
}
#' @rdname expectation
#' @param exp An expectation object, as created by
#'   [new_expectation()].
#' @export
exp_signal <- function(exp) {
  withRestarts(
    if (expectation_broken(exp)) {
      stop(exp)
    } else {
      signalCondition(exp)
    },
    continue_test = function(e) NULL
  )

  invisible(exp)
}


#' @export
#' @rdname expectation
#' @param x object to test for class membership
is.expectation <- function(x) inherits(x, "expectation")

#' @export
print.expectation <- function(x, ...) {
  cat(format(x), "\n")
}

#' @export
format.expectation_success <- function(x, ...) {
  "As expected"
}

#' @export
format.expectation <- function(x, simplify = "branch", ...) {
  message <- exp_message(x)
  # Access error fields with `[[` rather than `$` because the
  # `$.Throwable` from the rJava package throws with unknown fields
  if (is.null(x[["trace"]]) || trace_length(x[["trace"]]) == 0L) {
    return(message)
  }

  max_frames <- if (simplify == "branch") 20 else NULL

  trace_lines <- format(
    x$trace,
    simplify = simplify,
    ...,
    max_frames = max_frames
  )
  lines <- c(message, crayon::bold("Backtrace:"), trace_lines)
  paste(lines, collapse = "\n")
}

exp_message <- function(x) {
  if (expectation_error(x)) {
    paste0("Error: ", x$message)
  } else {
    x$message
  }
}

# as.expectation ----------------------------------------------------------

as.expectation <- function(x, srcref = NULL) {
  UseMethod("as.expectation", x)
}

#' @export
as.expectation.expectation <- function(x, srcref = NULL) {
  x$srcref <- x$srcref %||% srcref
  x
}

#' @export
as.expectation.error <- function(x, srcref = NULL) {
  expectation("error", cnd_message(x), srcref, trace = x[["trace"]])
}

#' @export
as.expectation.warning <- function(x, srcref = NULL) {
  expectation("warning", cnd_message(x), srcref, trace = x[["trace"]])
}

#' @export
as.expectation.skip <- function(x, ..., srcref = NULL) {
  expectation("skip", cnd_message(x), srcref, trace = x[["trace"]])
}

#' @export
as.expectation.default <- function(x, srcref = NULL) {
  stop(
    "Don't know how to convert '", paste(class(x), collapse = "', '"),
    "' to expectation.", call. = FALSE
  )
}

# expectation_type --------------------------------------------------------

expectation_type <- function(exp) {
  stopifnot(is.expectation(exp))
  gsub("^expectation_", "", class(exp)[[1]])
}

expectation_success <- function(exp) expectation_type(exp) == "success"
expectation_failure <- function(exp) expectation_type(exp) == "failure"
expectation_error   <- function(exp) expectation_type(exp) == "error"
expectation_skip    <- function(exp) expectation_type(exp) == "skip"
expectation_warning <- function(exp) expectation_type(exp) == "warning"
expectation_broken  <- function(exp) expectation_failure(exp) || expectation_error(exp)
expectation_ok      <- function(exp) expectation_type(exp) %in% c("success", "warning")

single_letter_summary <- function(x) {
  switch(expectation_type(x),
    skip    = colourise("S", "skip"),
    success = colourise(".", "success"),
    error   = colourise("E", "error"),
    failure = colourise("F", "failure"),
    warning = colourise("W", "warning"),
    "?"
  )
}

expectation_location <- function(x) {
  if (is.null(x$srcref)) {
    "???"
  } else {
    filename <- attr(x$srcref, "srcfile")$filename
    if (identical(filename, "")) {
      paste0("Line ", x$srcref[1])
    } else {
      paste0(basename(filename), ":", x$srcref[1], ":", x$srcref[2])
    }
  }
}
