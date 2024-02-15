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
#' @param expected A call that causes the expected error, warning, or message.
#'   It is usually a call to another package than the one being tested.
#' @return The value of the first argument
#' @examples
#' myfun <- function(x) {
#'   stopifnot(length(x) == 1)
#' }
#'
#' expect_error_forwarded(
#'   myfun(x = 1:2),
#'   {
#'     x <- 1:2
#'     stopifnot(length(x) == 1)
#'   }
#' )
expect_error_forwarded <- function(object, expected, label = NULL) {
  message <- error_message(expected)
  expect_error({{ object }}, regexp = message, fixed = TRUE, label = label)
}

#' @export
#' @rdname expect_error_forwarded
expect_warning_forwarded <- function(object, expected, label = NULL) {
  message <- warning_message(expected)
  expect_warning({{ object }}, regexp = message, fixed = TRUE, label = label)
}

#' @export
#' @rdname expect_error_forwarded
expect_message_forwarded <- function(object, expected, label = NULL) {
  message <- message_message(expected)
  expect_message({{ object }}, regexp = message, fixed = TRUE, label = label)
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
