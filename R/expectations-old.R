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
