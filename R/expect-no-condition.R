#' Does code run without error, warning, message, or other condition?
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' These expectations are the opposite of [expect_error()],
#' `expect_warning()`, `expect_message()`, and `expect_condition()`. They
#' assert the absence of an error, warning, or message, respectively.
#'
#' @inheritParams expect_error
#' @param message,class The default usage with `message = NULL, class = NULL`
#'   will match any error/warning/message/condition. This is a broad assertion
#'   so you'll typically want to make it narrower by either supplying `message`
#'   (a regular expression that must match the message of the condition) or
#'   `class` (which the condition must inherit from).
#' @inheritParams rlang::args_dots_empty
#' @export
#' @examples
#' expect_without_warning(1 + 1)
#'
#' foo <- function(x) {
#'   warning("This is a problem!")
#' }
#'
#' # warning doesn't match so bubbles up:
#' expect_without_warning(foo(), message = "bananas")
#'
#' # warning does match so causes a failure:
#' try(expect_without_warning(foo(), message = "problem"))
expect_without_error <- function(object,
                                 ...,
                                 message = NULL,
                                 class = NULL) {
  check_dots_empty()
  expect_without_("error", {{ object }}, ..., regexp = message, class = class)
}


#' @export
#' @rdname expect_without_error
expect_without_warning <- function(object,
                                   ...,
                                   message = NULL,
                                   class = NULL
                                   ) {
  check_dots_empty()
  expect_without_("warning", {{ object }}, ..., regexp = message, class = class)
}

#' @export
#' @rdname expect_without_error
expect_without_message <- function(object,
                                   ...,
                                   message = NULL,
                                   class = NULL
                                   ) {
  check_dots_empty()
  expect_without_("messsage", {{ object }}, ..., regexp = message, class = class)
}

#' @export
#' @rdname expect_without_error
expect_without_condition <- function(object,
                                     ...,
                                     message = NULL,
                                     class = NULL
                                     ) {
  check_dots_empty()
  expect_without_("condition", {{ object }}, ..., regexp = message, class = class)
}


expect_without_ <- function(base_class,
                            object,
                            regexp = NULL,
                            class = NULL,
                            ...,
                            error_call = caller_env()) {

  check_dots_used(action = warn, call = error_call)
  matcher <- cnd_matcher(class %||% base_class, regexp, ...)

  capture <- function(code) {
    try_fetch(
      code,
      !!base_class := function(cnd) {
        if (!matcher(cnd)) {
          return(zap())
        }

        expected <- paste0(
          "Expected ", quo_label(enquo(object)), " to run without any ", base_class, "s",
          if (!is.null(class)) paste0(" of class '", class, "'"),
          if (!is.null(regexp)) paste0(" matching pattern '", regexp, "'"),
          "."
        )
        actual <- paste0(
          "Actually got a <", class(cnd)[[1]], ">:\n",
          indent_lines(rlang::cnd_message(cnd, prefix = TRUE))
        )
        message <- format_error_bullets(c(expected, i = actual))
        fail(message, trace_env = error_call)
      }
    )
  }

  act <- quasi_capture(enquo(object), NULL, capture)
  succeed()
  invisible(act$val)
}

indent_lines <- function(x) {
  paste0("  ", gsub("\n", "\n  ", x))
}
