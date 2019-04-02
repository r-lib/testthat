#' The building block of all `expect_` functions
#'
#' Use this if you are writing your own expectation. See
#' `vignette("custom-expectation")` for details.
#'
#' @param ok Was the expectation successful?
#' @param failure_message What message should be shown if the expectation was
#'   not successful?
#' @param info Additional information. Included for backward compatibility
#'   only and new expectations should not use it.
#' @param srcref Only needed in very rare circumstances where you need to
#'   forward a srcref captured elsewhere.
#' @export
expect <- function(ok, failure_message, info = NULL, srcref = NULL) {
  type <- if (ok) "success" else "failure"
  message <- paste(c(failure_message, info), collapse = "\n")
  exp <- expectation(type, message, srcref = srcref)

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

#' Construct an expectation object
#'
#' For advanced use only. If you are creating your own expectation, you should
#' call `expect()` instead. See `vignette("custom-expectation")` for more
#' details.
#'
#' @param type Expectation type. Must be one of "success", "failure", "error",
#'   "skip", "warning".
#' @param message Message describing test failure
#' @param srcref Optional `srcref` giving location of test.
#' @keywords internal
#' @export
expectation <- function(type, message, srcref = NULL) {
  type <- match.arg(type, c("success", "failure", "error", "skip", "warning"))

  structure(
    list(
      message = message,
      srcref = srcref
    ),
    class = c(
      paste0("expectation_", type),
      "expectation",
      # Make broken expectations catchable by try()
      if (type %in% c("failure", "error")) "error",
      "condition"
    )
  )
}

#' @export
#' @rdname expectation
#' @param x object to test for class membership
is.expectation <- function(x) inherits(x, "expectation")

expectation_type <- function(exp) {
  stopifnot(is.expectation(exp))
  gsub("^expectation_", "", class(exp)[[1]])
}

expectation_success <- function(exp) {
  expectation_type(exp) == "success"
}

expectation_failure <- function(exp) {
  expectation_type(exp) == "failure"
}

expectation_error <- function(exp) {
  expectation_type(exp) == "error"
}

expectation_skip <- function(exp) {
  expectation_type(exp) == "skip"
}

expectation_warning <- function(exp) {
  expectation_type(exp) == "warning"
}

expectation_broken <- function(exp) {
  expectation_failure(exp) || expectation_error(exp)
}
expectation_ok <- function(exp) {
  expectation_type(exp) %in% c("success", "warning")
}



as.expectation <- function(x, ...) UseMethod("as.expectation", x)

#' @export
as.expectation.default <- function(x, ..., srcref = NULL) {
  stop(
    "Don't know how to convert '", paste(class(x), collapse = "', '"),
    "' to expectation.", call. = FALSE
  )
}

#' @export
as.expectation.expectation <- function(x, ..., srcref = NULL) {
  if (is.null(x$srcref)) {
    x$srcref <- srcref
  }
  x
}

#' @export
as.expectation.error <- function(x, ..., srcref = NULL) {
  error <- x$message

  msg <- gsub("Error.*?: ", "", as.character(error))

  # Need to remove trailing newline from error message to be consistent
  # with other messages
  msg <- gsub("\n$", "", msg)

  expectation("error", msg, srcref)
}

#' @export
as.expectation.warning <- function(x, ..., srcref = NULL) {
  msg <- x$message

  # msg <- gsub("Error.*?: ", "", as.character(error))
  # msg <- gsub("\n$", "", msg)

  expectation("warning", msg, srcref)
}

#' @export
as.expectation.skip <- function(x, ..., srcref = NULL) {
  error <- x$message
  msg <- gsub("Error.*?: ", "", as.character(error))

  expectation("skip", msg, srcref)
}

#' @export
print.expectation <- function(x, ...) {
  cat(format(x), "\n")
}

#' @export
format.expectation_success <- function(x, ...) {
  "As expected"
}

#' @export
format.expectation_error <- function(x, ...) {
  paste(c(x$message, create_traceback(x$call)), collapse = "\n")
}

#' @export
format.expectation <- function(x, ...) {
  x$message
}

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
