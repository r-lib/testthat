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
expectation <- function(type, message, srcref = NULL) {
  type <- match.arg(type, c("success", "failure", "error", "skip", "warning"))

  structure(
    list(
      message = message,
      srcref = srcref
    ),
    class = c(
      paste0("expectation_", type),
      "expectation",
      "condition"
    )
  )
}

expect <- function(exp, ..., srcref = NULL) {
  exp <- as.expectation(exp, ..., srcref = srcref)

  withRestarts(
    if (expectation_broken(exp)) {
      stop(exp)
    } else {
      signalCondition(exp)
    },
    continue_test = function(e) NULL
  )

  invisible(exp)
}

make_label <- function(object, info = NULL, label = NULL, expected.label = NULL) {
  if (!is.null(info)) {
    warning("`info` has been deprecated.", call. = FALSE)
  }
  if (!is.null(label)) {
    warning("`label` has been deprecated.", call. = FALSE)
  }
  if (!is.null(expected.label)) {
    warning("`expected.label` has been deprecated.", call. = FALSE)
  }

  label(object)
}

label <- function(obj) {
  x <- lazyeval::lazy(obj)$expr

  if (is.character(x)) {
    encodeString(x, quote = '"')
  } else if (is.atomic(x)) {
    format(x)
  } else if (is.name(x)) {
    paste0("`", as.character(x), "`")
  } else {
    chr <- deparse(x)
    if (length(chr) > 1) {
      chr <- deparse(as.call(list(x[[1]], quote(...))))
    }
    chr
  }
}

expectation_type <- function(exp) {
  cl <- class(exp)[[grep("^expectation_", class(exp))[[1L]] ]]
  gsub("^expectation_", "", cl)
}

expectation_success <- function(exp) {
  expectation_type(exp) == "success"
}

expectation_failure <- function(exp) {
  expectation_type(exp) == "failure"
}

expectation_error <- function(exp) {
  expectation_type(exp) == "error"
}

expectation_skip <- function(exp) {
  expectation_type(exp) == "skip"
}

expectation_warning <- function(exp) {
  expectation_type(exp) == "warning"
}

expectation_broken <- function(exp) {
  expectation_failure(exp) || expectation_error(exp)
}
expectation_ok <- function(exp) {
  expectation_type(exp) %in% c("success", "warning")
}



as.expectation <- function(x, ...) UseMethod("as.expectation", x)

#' @export
as.expectation.default <- function(x, ..., srcref = NULL) {
  stop("Don't know how to convert '", paste(class(x), collapse = "', '"),
       "' to expectation.", call. = FALSE)
}

#' @export
as.expectation.expectation <- function(x, ..., srcref = NULL) {
  if (is.null(x$srcref)) {
    x$srcref <- srcref
  }
  x
}

#' @export
as.expectation.logical <- function(x, message, ..., srcref = NULL) {
  type <- if (x) "success" else "failure"
  expectation(type, message, srcref = srcref)
}

#' @export
as.expectation.error <- function(x, ..., srcref = NULL) {
  error <- x$message
  calls <- x$call

  msg <- gsub("Error.*?: ", "", as.character(error))

  # Need to remove trailing newline from error message to be consistent
  # with other messages
  msg <- gsub("\n$", "", msg)

  expectation("error", msg, srcref)
}

#' @export
as.expectation.warning <- function(x, ..., srcref = NULL) {
  msg <- x$message

  # msg <- gsub("Error.*?: ", "", as.character(error))
  # msg <- gsub("\n$", "", msg)

  expectation("warning", msg, srcref)
}

#' @export
as.expectation.skip <- function(x, ..., srcref = NULL) {
  error <- x$message
  msg <- gsub("Error.*?: ", "", as.character(error))

  expectation("skip", msg, srcref)
}

#' @export
#' @rdname expectation
#' @param x object to test for class membership
is.expectation <- function(x) inherits(x, "expectation")

#' @export
print.expectation <- function(x, ...) cat(format(x), "\n")

#' @export
format.expectation <- function(x, ...) {
  if (expectation_success(x)) {
    res <- "As expected"
  } else {
    res <- x$message
  }
  if (expectation_error(x)) {
    res <- c(res, create_traceback(x$call))
    res <- paste(res, collapse = "\n")
  }
  res
}

#' @export
as.character.expectation <- function(x, ...) format(x)

single_letter_summary <- function(x) {
  switch(expectation_type(x),
    skip    = colourise("S", "skip"),
    success = colourise(".", "success"),
    error   = colourise("E", "error"),
    failure = colourise("F", "failure"),
    warning = colourise("W", "warning"),
    "?"
  )
}
