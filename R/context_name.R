#' Simplify a test filename to a context name.
#'
#' @param filename A character string giving the filename of a test file.
#'   Standard prefix (`test-`) and suffix (`*.R`) are stripped.
#' @keywords internal
#' @export
#' @examples
#' context_name("test-my-function.R")
#' context_name("test-myFunction.R")
context_name <- function(filename) {

  # Remove test- prefix
  filename <- sub("^test-", "", filename)

  # Remove terminal extension
  filename <- sub("[.][Rr]$", "", filename)

  filename
}
