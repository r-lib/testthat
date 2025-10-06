#' Declare that an expectation either passes or fails
#'
#' @description
#' These are the primitives that you can use to implement your own expectations.
#' Every path through an expectation should either call `pass()`, `fail()`,
#' or throw an error (e.g. if the arguments are invalid). Expectations should
#' always return `invisible(act$val)`.
#'
#' Learn more about creating your own expectations in
#' `vignette("custom-expectation")`.
#'
#' @param message Failure message to send to the user. It's best practice to
#'   describe both what is expected and what was actually received.
#' @param info Character vector continuing additional information. Included
#'   for backward compatibility only and new expectations should not use it.
#' @param srcref Location of the failure. Should only needed to be explicitly
#'   supplied when you need to forward a srcref captured elsewhere.
#' @param trace_env If `trace` is not specified, this is used to generate an
#'   informative traceback for failures. You should only need to set this if
#'   you're calling `fail()` from a helper function; see
#'   `vignette("custom-expectation")` for details.
#' @param trace An optional backtrace created by [rlang::trace_back()].
#'   When supplied, the expectation is displayed with the backtrace.
#'   Expert use only.
#' @export
#' @examples
#' expect_length <- function(object, n) {
#'   act <- quasi_label(rlang::enquo(object), arg = "object")
#'
#'   act_n <- length(act$val)
#'   if (act_n != n) {
#'     fail(sprintf("%s has length %i, not length %i.", act$lab, act_n, n))
#'   } else {
#'     pass()
#'   }
#'
#'   invisible(act$val)
#' }
fail <- function(
  message = "Failure has been forced",
  info = NULL,
  srcref = NULL,
  trace_env = caller_env(),
  trace = NULL
) {
  trace <- trace %||% capture_trace(trace_env)
  message <- paste(c(message, info), collapse = "\n")
  expectation("failure", message, srcref = srcref, trace = trace)
  invisible()
}

snapshot_fail <- function(message, trace_env = caller_env()) {
  trace <- capture_trace(trace_env)
  message <- paste(message, collapse = "\n")
  expectation("failure", message, trace = trace, snapshot = TRUE)
  invisible()
}

capture_trace <- function(trace_env) {
  trace <- trace_back(top = getOption("testthat_topenv"), bottom = trace_env)
  # Only include trace if there's at least one function apart from the expectation
  if (!is.null(trace) && trace_length(trace) <= 1) {
    trace <- NULL
  }
  trace
}

#' @rdname fail
#' @export
pass <- function() {
  expectation("success", "success")
  invisible()
}

#' Mark a test as successful
#'
#' This is an older version of [pass()] that exists for backwards compatibility.
#' You should now use `pass()` instead.
#'
#' @export
#' @inheritParams fail
#' @keywords internal
succeed <- function(message = "Success has been forced", info = NULL) {
  message <- paste(c(message, info), collapse = "\n")

  expectation("success", message)
}
