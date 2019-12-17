#' Describe the context of a set of tests.
#'
#' Use of `context()` is no longer recommended. Instead omit it, and messages
#' will use the name of the file instead. This ensures that the context and
#' test file name are always in sync.
#'
#' A context defines a set of tests that test related functionality.  Usually
#' you will have one context per file, but you may have multiple contexts
#' in a single file if you so choose.
#'
#' @param desc description of context.  Should start with a capital letter.
#' @keywords internal
#' @export
#' @examples
#' context("String processing")
#' context("Remote procedure calls")
context <- function(desc) {
  get_reporter()$.start_context(desc)
}

end_context <- function() {
  get_reporter()$.end_context()
}
