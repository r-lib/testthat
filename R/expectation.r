#' Expectation class.
#'
#' Any expectation should return objects of this class - see the built in
#' expectations for details.
#'
#' @param passed a single logical value indicating whether the test passed
#'  (\code{TRUE}), failed (\code{FALSE}), or threw an error (\code{NA})
#' @param failure_msg A text description of failure
#' @param success_msg A text description of success
#' @param pending single logical value: TRUE iff test is pending
#' @aliases expectation print.expectation format.expectation
#' @keywords internal
#' @export
expectation <- function(passed, failure_msg, success_msg = "unknown",
                        pending = FALSE, pending_msg = NA) {
  error <- is.na(passed)
  passed <- passed & !error

  structure(
    list(
      passed = passed, error = error, pending = pending,
      failure_msg = failure_msg, success_msg = success_msg,
      pending_msg = ifelse(is.na(pending_msg), "unknown", pending_msg)
    ),
    class = "expectation"
  )
}

#' @export
#' @rdname expectation
#' @param x object to test for class membership
is.expectation <- function(x) inherits(x, "expectation")

#' @export
print.expectation <- function(x, ...) cat(format(x), "\n")

#' @export
format.expectation <- function(x, ...) {
  if (x$passed) {
    paste0("As expected: ", x$success_msg)
  } else {
    paste0("Not expected: ", x$failure_msg, ".")
  }
}

#' @export
as.character.expectation <- function(x, ...) format(x)

negate <- function(expt) {
  stopifnot(is.expectation(expt))

  # If it's an error, don't need to do anything
  if (expt$error) return(expt)

  opp <- expt
  opp$passed <- !expt$passed
  opp$failure_msg <- expt$success_msg
  opp$success_msg <- expt$failure_msg
  opp

}
