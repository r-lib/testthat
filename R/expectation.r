expectation <- function(passed, message) {
  failed <- is.na(passed)
  passed <- passed & !is.na(passed)
  
  structure(
    list(passed = passed, failed = failed, message = message), 
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

