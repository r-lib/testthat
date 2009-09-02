expect_that <- function(object, test) {
  name <- deparse(substitute(object))
  results <- test(object)
  
  test_suite$add_result(results)
}

expect_result <- function(passed, message) {
  structure(
    list(passed = passed, message = message), 
    class = "expect_result"
  )
}

print.expect_result <- function(x, ...) cat(format(x), "\n")
format.expect_result <- function(x, ...) {
  if (x$passed) {
    "As expected."
  } else {
    paste("Not expected: ", x$message, ".", sep = "")
  }
}

