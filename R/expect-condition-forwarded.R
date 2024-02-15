#' Does code throw an error, warning, or message that is the same as another?
#'
#' @description
#' `expect_error_forwarded()`, `expect_warning_forwarded()`, and
#' `expect_message_forwarded()`, check that code throws an error, warning,
#' message, or condition with a message that matches an `expected` value from an
#' example.  These functions are useful to test that a condition matches one
#' from another package that you do not control.
#'
#' @export
#' @family expectations
#' @inheritParams expect_that
#' @return The value of the first argument
expect_error_forwarded <- function(actual, expected, label = NULL) {
  message <- error_message(expected)
  expect_error({{ actual }}, regexp = message, fixed = TRUE, label = label)
}

#' @export
#' @rdname expect_error_forwarded
expect_warning_forwarded <- function(actual, expected, label = NULL) {
  message <- warning_message(expected)
  expect_warning({{ actual }}, regexp = message, fixed = TRUE, label = label)
}

#' @export
#' @rdname expect_error_forwarded
expect_message_forwarded <- function(actual, expected, label = NULL) {
  message <- message_message(expected)
  expect_message({{ actual }}, regexp = message, fixed = TRUE, label = label)
}

error_message <- function(code) {
  out <- tryCatch(
    {
      code
      NULL
    },
    error = function(e) conditionMessage(e)
  )
  if (is.null(out)) {
    stop("No error thrown")
  } else {
    out
  }
}

warning_message <- function(code) {
  out <- tryCatch(
    {
      code
      NULL
    },
    warning = function(e) conditionMessage(e)
  )
  if (is.null(out)) {
    stop("No warning thrown")
  } else {
    out
  }
}

message_message <- function(code) {
  out <- tryCatch(
    {
      code
      NULL
    },
    message = function(e) conditionMessage(e)
  )
  if (is.null(out)) {
    stop("No message thrown")
  } else {
    out
  }
}
