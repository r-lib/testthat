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
