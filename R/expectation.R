#' The previous building block of all `expect_` functions
#'
#' Previously, we recommended using `expect()` when writing your own
#' expectations. Now we instead recommend [pass()] and [fail()]. See
#' `vignette("custom-expectation")` for details.
#'
#' @param ok `TRUE` or `FALSE` indicating if the expectation was successful.
#' @param failure_message Message to show if the expectation failed.
#' @inheritParams fail
#' @return An expectation object from either `succeed()` or `fail()`.
#'   with a `continue_test` restart.
#' @seealso [exp_signal()]
#' @keywords internal
#' @export
expect <- function(
  ok,
  failure_message,
  info = NULL,
  srcref = NULL,
  trace = NULL,
  trace_env = caller_env()
) {
  if (!ok) {
    fail(
      failure_message,
      info,
      srcref = srcref,
      trace = trace,
      trace_env = trace_env
    )
  } else {
    # For backwards compatibility
    succeed(failure_message)
  }
}

#' Construct an expectation object
#'
#' @description
#' For advanced use only. If you are creating your own expectation, you should
#' call [pass()] or [fail()]. See `vignette("custom-expectation")` for more
#' details.
#'
#' `new_expectation()` creates an expectation object and `exp_signal()` signals
#' it. `expectation()` does both.
#'
#' @param type Expectation type. Must be one of "success", "failure", "error",
#'   "skip", "warning".
#' @param message Message describing test failure
#' @param srcref Optional `srcref` giving location of test.
#' @keywords internal
#' @inheritParams expect
#' @export
expectation <- function(type, message, ..., srcref = NULL, trace = NULL) {
  exp <- new_expectation(type, message, ..., srcref = srcref, trace = trace)
  exp_signal(exp)
}
#' @rdname expectation
#' @param ... Additional attributes for the expectation object.
#' @param .subclass An optional subclass for the expectation object.
#' @export
new_expectation <- function(
  type,
  message,
  ...,
  srcref = NULL,
  trace = NULL,
  .subclass = NULL
) {
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
  cat(
    cli::style_bold("<", paste0(class(x), collapse = "/"), ">"),
    "\n",
    sep = ""
  )
  cat(format(x), "\n", sep = "")
  invisible(x)
}

#' @export
format.expectation_success <- function(x, ...) {
  "As expected"
}

#' @export
format.expectation <- function(x, ...) {
  # Access error fields with `[[` rather than `$` because the
  # `$.Throwable` from the rJava package throws with unknown fields
  if (is.null(x[["trace"]]) || trace_length(x[["trace"]]) == 0L) {
    return(x$message)
  }

  trace_lines <- format(x$trace, ...)
  lines <- c(x$message, cli::style_bold("Backtrace:"), trace_lines)
  paste(lines, collapse = "\n")
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
  if (is.null(x$call)) {
    header <- paste0("Error: ")
  } else {
    header <- paste0("Error in `", deparse1(x$call), "`: ")
  }

  msg <- paste0(
    if (!is_simple_error(x)) {
      paste0("<", paste(class(x), collapse = "/"), ">\n")
    },
    header,
    cnd_message(x)
  )

  new_expectation("error", msg, srcref = srcref, trace = x[["trace"]])
}


is_simple_error <- function(x) {
  class(x)[[1]] %in% c("simpleError", "rlang_error")
}

#' @export
as.expectation.warning <- function(x, srcref = NULL) {
  new_expectation(
    "warning",
    cnd_message(x),
    srcref = srcref,
    trace = x[["trace"]]
  )
}

#' @export
as.expectation.skip <- function(x, ..., srcref = NULL) {
  new_expectation("skip", cnd_message(x), srcref = srcref, trace = x[["trace"]])
}

#' @export
as.expectation.default <- function(x, srcref = NULL) {
  cli::cli_abort(
    "Don't know how to convert {.cls {class(x)}} to expectation.",
    call = NULL
  )
}

# expectation_type --------------------------------------------------------

expectation_type <- function(exp) {
  stopifnot(is.expectation(exp))
  gsub("^expectation_", "", class(exp)[[1]])
}

expectation_success <- function(exp) expectation_type(exp) == "success"
expectation_failure <- function(exp) expectation_type(exp) == "failure"
expectation_error <- function(exp) expectation_type(exp) == "error"
expectation_skip <- function(exp) expectation_type(exp) == "skip"
expectation_warning <- function(exp) expectation_type(exp) == "warning"
expectation_broken <- function(exp) {
  expectation_failure(exp) || expectation_error(exp)
}
expectation_ok <- function(exp) {
  expectation_type(exp) %in% c("success", "warning")
}

single_letter_summary <- function(x) {
  switch(
    expectation_type(x),
    skip = colourise("S", "skip"),
    success = colourise(".", "success"),
    error = colourise("E", "error"),
    failure = colourise("F", "failure"),
    warning = colourise("W", "warning"),
    "?"
  )
}

expectation_location <- function(x, prefix = "", suffix = "") {
  srcref <- x$srcref
  if (!inherits(srcref, "srcref")) {
    return("")
  }

  filename <- attr(srcref, "srcfile")$filename
  cli::format_inline(
    "{prefix}{.file {filename}:{srcref[1]}:{srcref[2]}}{suffix}"
  )
}
