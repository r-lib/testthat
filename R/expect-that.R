#' Default expectations that always succeed or fail.
#'
#' These allow you to manually trigger success or failure. Failure is
#' particularly useful to a pre-condition or mark a test as not yet
#' implemented.
#'
#' @param message a string to display.
#' @inheritParams expect
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' test_that("this test succeeds", succeed())
#' }
fail <- function(
  message = "Failure has been forced",
  info = NULL,
  trace_env = caller_env()
) {
  expect(FALSE, message, info = info, trace_env = trace_env)
}

#' @rdname fail
#' @export
succeed <- function(message = "Success has been forced", info = NULL) {
  expect(TRUE, message, info = info)
}
