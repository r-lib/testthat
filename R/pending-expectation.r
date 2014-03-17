#' Pending_Expectation class.
#'
#' A pending expectation signals that a test has a pending implementation
#' and is currently inconclusive.
#' The pending expectation is also a successful \code{\link{expectation}}.
#'
#' @param pending_msg A text description of pending
#' @aliases pending_expectation print.pending_expectation
#'  format.pending_expectation
#' @keywords internal
#' @export
pending_expectation <- function(pending_msg = "unknown") {
  structure(
    list(
      pending_msg = pending_msg, passed = TRUE, error = FALSE,
      success_msg = "pending test"
    ),
    class = c("pending_expectation", "expectation")
  )
}

#' @export
#' @rdname pending_expectation
#' @param x object to test for class membership
is.pending_expectation <- function(x) inherits(x, "pending_expectation")

#' @export
print.pending_expectation <- function(x, ...) cat(format(x), "\n")

#' @export
format.pending_expectation <- function(x, ...) {
  paste0("Pending: ", x$pending_msg)
}

#' @export
as.character.pending_expectation <- function(x, ...) format(x)


