#' Old-style expectations.
#'
#' Initial testthat used a style of testing that looked like
#' \code{expect_that(a, equals(b)))} this allowed expectations to read like
#' English sentences, but was verbose and a bit too cutesy. This style
#' will continue to work but has been soft-deprecated - it is no longer
#' documented, and new expectations will only use the new style
#' \code{expect_equal(a, b)}.
#'
#' @name oldskool
#' @keywords internal
NULL

#' @export
#' @rdname oldskool
is_null <- function() {
  function(x) expect_null(x)
}

#' @export
#' @rdname oldskool
is_a <- function(class) {
  function(x) expect_is(x, class)
}

#' @export
#' @rdname oldskool
is_true <- function() {
  function(x) expect_true(x)
}

#' @export
#' @rdname oldskool
is_false <- function() {
  function(x) expect_false(x)
}

#' @export
#' @rdname oldskool
has_names <- function(expected, ignore.order = FALSE, ignore.case = FALSE) {
  function(x) {
    expect_named(x, expected = expected, ignore.order = ignore.order, ignore.case = ignore.case)
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


#' Expectation: does expression take less than a fixed amount of time to run?
#'
#' This is useful for performance regression testing.
#'
#' @family expectations
#' @keywords internal
#' @export
#' @param amount maximum duration in seconds
takes_less_than <- function(amount) {
  warning("takes_less_than() is deprecated because it is stochastic and unreliable",
    call. = FALSE)

  function(expr) {
    duration <- system.time(force(expr))["elapsed"]

    expect(
      duration < amount,
      paste0("took ", duration, " seconds, which is more than ", amount)
    )
  }
}
