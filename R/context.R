#' Describe the context of a set of tests.
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' Use of `context()` is no longer recommended. Instead omit it, and messages
#' will use the name of the file instead. This ensures that the context and
#' test file name are always in sync.
#'
#' A context defines a set of tests that test related functionality.  Usually
#' you will have one context per file, but you may have multiple contexts
#' in a single file if you so choose.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `context()` is deprecated in the third edition, and the equivalent
#' information is instead recorded by the test file name.
#'
#' @param desc description of context.  Should start with a capital letter.
#' @keywords internal
#' @export
#' @examples
#' context("String processing")
#' context("Remote procedure calls")
context <- function(desc) {
  edition_deprecate(3, "context()")
  context_start(desc)
}

context_start <- function(desc) {
  reporter <- get_reporter()
  if (!is.null(reporter)) {
    get_reporter()$.start_context(desc)
  }
}

#' Start test context from a file name
#'
#' For use in external reporters
#'
#' @param name file name
#' @keywords internal
#' @export
context_start_file <- function(name) {
  context_start(context_name(name))
}

context_name <- function(filename) {
  # Remove test- prefix
  filename <- sub("^test[-_]", "", filename)
  # Remove terminal extension
  filename <- sub("[.][Rr]$", "", filename)
  filename
}
