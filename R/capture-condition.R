#' Capture conditions, including messeages, warnings, expectations, and errors.
#'
#' These functions allow you to capture the side-effects of a function call
#' including printed output, messages and warnings. They are used to evaluate
#' code for [expect_output()], [expect_message()],
#' [expect_warning()], and [expect_silent()].
#'
#' @param code Code to evaluate
#' @return Singular functions (`capture_condition`, `capture_expectation` etc)
#'   return a condition object. `capture_messages()` and `capture_warnings`
#'   return a character vector of message text.
#' @keywords internal
#' @export
#' @examples
#' f <- function() {
#'   message("First")
#'   warning("Second")
#'   message("Third")
#' }
#'
#' capture_message(f())
#' capture_messages(f())
#'
#' capture_warning(f())
#' capture_warnings(f())
#'
#' # Condition will capture anything
#' capture_condition(f())
capture_condition <- function(code) {
  tryCatch({code; NULL}, condition = function(e) e)
}

#' @export
#' @rdname capture_condition
capture_error <- function(code) {
  tryCatch({code; NULL}, error = function(e) e)
}

#' @export
#' @rdname capture_condition
capture_expectation <- function(code) {
  tryCatch({code; NULL}, expectation = function(e) e)
}

#' @export
#' @rdname capture_condition
capture_message <- function(code) {
  tryCatch({code; NULL}, message = function(e) e)
}

#' @export
#' @rdname capture_condition
capture_warning <- function(code) {
  tryCatch({code; NULL}, warning = function(e) e)
}

#' @export
#' @rdname capture_condition
capture_messages <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    message = function(condition) {
      out$push(condition)
      invokeRestart("muffleMessage")
    }
  )

  get_messages(out$as_list())
}

#' @export
#' @rdname capture_condition
capture_warnings <- function(code) {
  out <- Stack$new()

  withCallingHandlers(
    code,
    warning = function(condition) {
      out$push(condition)
      invokeRestart("muffleWarning")
    }
  )

  get_messages(out$as_list())
}

get_messages <- function(x) {
  vapply(x, "[[", "message", FUN.VALUE = character(1))
}
