#' Declare that an expectation either passes or fails
#'
#' @description
#' These are the primitives that you can use to implement your own expectations.
#' Regardless of how it's called an expectation should either return `pass()`,
#' `fail()`, or throw an error (if for example, the arguments are invalid).
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
#'   informative traceack for failures. You should only need to set this if
#'   you're calling `fail()` from a helper function; see
#'   `vignette("custom-expectation")` for details.
#' @param snapshot Is this a snapshot failure?
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
#'     msg <- sprintf("%s has length %i, not length %i.", act$lab, act_n, n)
#'     return(fail(msg))
#'   }
#'
#'   pass(act$val)
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
}

snapshot_fail <- function(message, trace_env = caller_env()) {
  trace <- capture_trace(trace_env)
  expectation("failure", message, trace = trace, snapshot = TRUE)
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
#' @param value Value to return, typically the result of evaluating the
#'   `object` argument to the expectation.
#' @export
pass <- function(value) {
  expectation("success", "success")
  invisible(value)
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
