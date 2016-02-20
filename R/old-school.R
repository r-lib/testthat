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
  function(x) expect_equal_to_reference(x, file, expected.label = label, ...)
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

#' @export
#' @rdname oldskool
matches <- function(regexp, all = TRUE, ...) {
  function(x) expect_match(x, regexp, all = all, ...)
}


#' Expectation: does expression take less than a fixed amount of time to run?
#'
#' This is useful for performance regression testing.
#'
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

