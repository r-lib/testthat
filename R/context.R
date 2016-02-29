#' Describe the context of a set of tests.
#'
#' A context defines a set of tests that test related functionality.  Usually
#' you will have one context per file, but you may have multiple contexts
#' in a single file if you so choose.
#'
#' @param desc description of context.  Should start with a capital letter.
#' @export
#' @examples
#' context("String processing")
#' context("Remote procedure calls")
context <- function(desc) {
  rep <- get_reporter()

  if (context_open()) {
    rep$end_context(context_get())
  }

  context_set(desc)
  rep$start_context(desc)

  invisible()
}

end_context <- function() {
  rep <- get_reporter()

  if (context_open()) {
    rep$end_context(context_get())
    context_set(NULL)
  }

  invisible()
}

context_env <- new.env(parent = emptyenv())
context_get <- function() context_env$current
context_set <- function(x) {
  old <- context_get()
  context_env$current <- x
  invisible(old)
}
context_open <- function() !is.null(context_env$current)

