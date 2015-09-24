#' Expectation: are all expected elements present
#'
#' @param expected Expected value
#' @param label For full form, label of expected object used in error
#'   messages. Useful to override default (deparsed expected expression) when
#'   doing tests in a loop.  For short cut form, object label. When
#'   \code{NULL}, computed from deparsed object.
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{match}}
#' @family expectations
#' @examples
#' \dontrun{
#' expect_contained(c(1,2), c(1,3))
#' }
#' # Error: c(1, 2) has elements not present in c(1, 3): [2]
#'
#' @name contained-expectations
NULL

#' @export
#' @rdname contained-expectations
#' @inheritParams expect_that
expect_contained <- function(object, expected, ..., info = NULL, label = NULL, expected.label = NULL) {
	if (is.null(label)) {
        label <- find_expr("object")
    }
    if (is.null(expected.label)) {
        expected.label <- find_expr("expected")
    }
	expect_that(object, is_contained_in(expected, label = expected.label, ...), info = info, label = label)
}

#' @export
#' @rdname contained-expectations
is_contained_in <- function(expected, label = NULL, ...) {
	if (is.null(label)) {
		label <- find_expr("expected")
	} else if (!is.character(label) || length(label) != 1) {
		label <- deparse(label)
	}

	function(actual_elements) {
		contained <- match(actual_elements, expected, ..., nomatch = 0) > 0
		expectation(
			all(contained),
			paste0("has elements not present in ", label, ": [", paste0(actual_elements[!contained], collapse = ", "), "]"),
			paste0("is fully contained in ", label)
		)
	}
}
