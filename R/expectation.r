#' Expectation class.
#'
#' Any expectation should return objects of this class - see the built in
#' expectations for details.
#'
#' @param passed a single logical value indicating whether the test passed
#'  (\code{TRUE}), failed (\code{FALSE}), or threw an error (\code{NA})
#' @param failure_msg A text description of failure
#' @param success_msg A text description of success
#' @aliases expectation print.expectation format.expectation
#' @keywords internal
#' @export
expectation <- function(passed, failure_msg, success_msg) {
  error <- is.na(passed)
  passed <- passed & !error

  structure(
    list(
      passed = passed, error = error,
      failure_msg = failure_msg, success_msg = success_msg
    ),
    class = "expectation"
  )
}

#' @S3method print expectation
print.expectation <- function(x, ...) cat(format(x), "\n")

#' @S3method format expectation
format.expectation <- function(x, ...) {
  if (x$passed) {
    str_c("As expected:", x$success_msg)
  } else {
    str_c("Not expected: ", x$failure_msg, ".")
  }
}
