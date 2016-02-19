#' Expectation class.
#'
#' Any expectation should return objects of this class - see the built in
#' expectations for details.
#'
#' @param passed a single logical value indicating whether the test passed
#'  (\code{TRUE}), failed (\code{FALSE}), or threw an error (\code{NA})
#' @param message A text description of failure
#' @param srcref Source reference, if known
#' @keywords internal
#' @export
expectation <- function(passed, message, srcref = NULL) {
  new_expectation(passed = passed, message = message,
                  srcref = srcref)
}

new_expectation <- function(message, srcref, ...,
                            passed = FALSE, error = FALSE, skipped = FALSE) {
  if (passed) {
    class = c("expectation", "condition")
  } else {
    class = c("expectation", "error", "condition")
  }

  exp <- structure(
    list(
      passed = passed,
      error = error,
      skipped = skipped,
      message = message
    ),
    class = class
  )

  update_expectation(exp, srcref)
}

update_expectation <- function(exp, srcref, info = NULL, label = NULL) {
  exp$srcref <- srcref

  if (!is.null(label)) {
    exp$message <- paste0(label, " ", exp$message)
  }

  if (!is.null(info)) {
    exp$message <- paste0(exp$message, "\n", info)
  }

  exp
}

expectation_ok <- function(exp) {
  isTRUE(exp$passed)
}


as.expectation <- function(x, ...) UseMethod("as.expectation", x)

#' @export
as.expectation.default <- function(x, ...) {
  stop("Don't know how to convert '", paste(class(x), collapse = "', '"),
       "' to expectation.", call. = FALSE)
}

#' @export
as.expectation.expectation <- function(x, ...) x

#' @export
as.expectation.logical <- function(x, message, ...) {
  expectation(passed = x, message = message, srcref = find_test_srcref())
}

#' @export
as.expectation.error <- function(x, ...) {
  error <- x$message
  calls <- x$calls
  # TODO: Collect srcref in test_code()
  srcref <- x$srcref

  msg <- gsub("Error.*?: ", "", as.character(error))

  if (length(calls) > 0) {
    traceback <- create_traceback(calls)
    user_calls <- paste0(traceback, collapse = "\n")
    msg <- paste0(msg, "\n", user_calls)
  } else {
    # Need to remove trailing newline from error message to be consistent
    # with other messages
    msg <- gsub("\n$", "", msg)
  }

  new_expectation(msg, srcref, error = TRUE)
}

#' @export
as.expectation.skip <- function(x, ...) {
  error <- x$message
  srcref <- x$srcref
  msg <- gsub("Error.*?: ", "", as.character(error))

  new_expectation(msg, srcref, skipped = TRUE)
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
    "As expected"
  } else {
    paste0("Not expected: ", x$message, ".")
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
  opp$message <- paste0("NOT(", opp$message, ")")
  opp

}
