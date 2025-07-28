#' Old-style expectations.
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' Initial testthat used a style of testing that looked like
#' `expect_that(a, equals(b)))` this allowed expectations to read like
#' English sentences, but was verbose and a bit too cutesy. This style
#' will continue to work but has been soft-deprecated - it is no longer
#' documented, and new expectations will only use the new style
#' `expect_equal(a, b)`.
#'
#' @name oldskool
#' @keywords internal
NULL

#' @export
#' @rdname oldskool
is_a <- function(class) {
  function(x) expect_is(x, class)
}

#' @export
#' @rdname oldskool
has_names <- function(expected, ignore.order = FALSE, ignore.case = FALSE) {
  function(x) {
    expect_named(
      x,
      expected = expected,
      ignore.order = ignore.order,
      ignore.case = ignore.case
    )
  }
}

#' @export
#' @rdname oldskool
is_less_than <- function(expected, label = NULL, ...) {
  function(x) expect_lt(x, expected)
}

#' @export
#' @rdname oldskool
is_more_than <- function(expected, label = NULL, ...) {
  function(x) expect_gt(x, expected)
}

#' @export
#' @rdname oldskool
equals <- function(expected, label = NULL, ...) {
  function(x) expect_equal(x, expected, ..., expected.label = label)
}

#' @export
#' @rdname oldskool
is_equivalent_to <- function(expected, label = NULL) {
  function(x) expect_equivalent(x, expected, expected.label = label)
}

#' @export
#' @rdname oldskool
is_identical_to <- function(expected, label = NULL) {
  function(x) expect_identical(x, expected, expected.label = label)
}

#' @export
#' @rdname oldskool
equals_reference <- function(file, label = NULL, ...) {
  function(x) expect_known_value(x, file, expected.label = label, ...)
}

#' @export
#' @rdname oldskool
shows_message <- function(regexp = NULL, all = FALSE, ...) {
  function(x) expect_message(x, regexp = regexp, all = all, ...)
}

#' @export
#' @rdname oldskool
gives_warning <- function(regexp = NULL, all = FALSE, ...) {
  function(x) expect_warning(x, regexp = regexp, all = all, ...)
}

#' @export
#' @rdname oldskool
prints_text <- function(regexp = NULL, ...) {
  function(x) expect_output(x, regexp, ...)
}

#' @export
#' @rdname oldskool
throws_error <- function(regexp = NULL, ...) {
  function(x) expect_error(x, regexp, ...)
}

#' Does code take less than the expected amount of time to run?
#'
#' This is useful for performance regression testing.
#'
#' @keywords internal
#' @export
#' @param amount maximum duration in seconds
takes_less_than <- function(amount) {
  warning(
    "takes_less_than() is deprecated because it is stochastic and unreliable",
    call. = FALSE
  )

  function(expr) {
    duration <- system.time(force(expr))["elapsed"]

    if (duration >= amount) {
      msg <- paste0("took ", duration, " seconds, which is more than ", amount)
      fail(msg)
    }
    pass(expr)
  }
}

#' Negate an expectation
#'
#' This negates an expectation, making it possible to express that you
#' want the opposite of a standard expectation. This function is deprecated
#' and will be removed in a future version.
#'
#' @param f an existing expectation function
#' @keywords internal
#' @export
not <- function(f) {
  warning("`not()` is deprecated.", call. = FALSE)
  stopifnot(is.function(f))

  negate <- function(expt) {
    if (expectation_success(expt)) {
      msg <- paste0("NOT(", expt$message, ")")
      fail(msg, srcref = expt$srcref)
    }
    pass(NULL)
  }

  function(...) {
    negate(capture_expectation(f(...)))
  }
}
