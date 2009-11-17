#' Expectation class.
#' 
#' @aliases expectation print.expectation format.expectation
#' @keywords internal
expectation <- function(passed, message) {
  error <- is.na(passed)
  passed <- passed & !is.na(passed)
  
  structure(
    list(passed = passed, error = error, message = message), 
    class = "expectation"
  )
}

print.expectation <- function(x, ...) cat(format(x), "\n")
format.expectation <- function(x, ...) {
  if (x$passed) {
    "As expected."
  } else {
    paste("Not expected: ", x$message, ".", sep = "")
  }
}

