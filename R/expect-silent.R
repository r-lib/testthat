#' Does code execute silently?
#'
#' Checks that the code produces no output, messages, or warnings.
#'
#' @inheritParams expect_error
#' @return The first argument, invisibly.
#' @family expectations
#' @export
#' @examples
#' expect_silent("123")
#'
#' f <- function() {
#'   message("Hi!")
#'   warning("Hey!!")
#'   print("OY!!!")
#' }
#' \dontrun{
#' expect_silent(f())
#' }
expect_silent <- function(object) {
  act <- quasi_capture(enquo(object), NULL, evaluate_promise)

  outputs <- c(
    if (!identical(act$cap$output, "")) "output",
    if (length(act$cap$warnings) > 0) "warnings",
    if (length(act$cap$messages) > 0) "messages"
  )

  expect(
    length(outputs) == 0,
    sprintf("%s produced %s.", act$lab, paste(outputs, collapse = ", "))
  )

  invisible(act$cap$result)
}
