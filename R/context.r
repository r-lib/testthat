#' Set the context for a set of tests
#'
#' A context defines a set of tests that test related functionality.  Usually
#' you will have one context per file, but you may have multiple contexts
#' in a single file if you so choose.
#'
#' @param desc description of context.  Should start with a capital letter.
context <- function(desc) {
  test_suite()$end_context()
  test_suite()$start_context(desc)
}

