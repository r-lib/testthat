#' Describe the context of a set of tests.
#'
#' A context defines a set of tests that test related functionality.  Usually
#' you will have one context per file, but you may have multiple contexts
#' in a single file if you so choose.
#'
#' @param desc description of context.  Should start with a capital letter.
#' @export start_context end_context next_context context
#' @aliases next_context context
#' @examples
#' start_context("String processing")
#' next_context("Remote procedure calls")
#' end_context()
start_context <- function(desc) {
  test_reporter()$start_context(desc)
}
end_context <- function() {
  test_reporter()$end_context()
}
next_context <- function(desc) {
  end_context()
  start_context(desc)
}
context <- next_context
