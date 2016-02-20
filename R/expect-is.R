#' Expectation: does the object inherit from a S3 or S4 class, or a base type?
#'
#' Tests whether or not an object inherits from any of a list of classes, or
#' is an instance of a base type. \code{expect_null} is a special case designed
#' for detecting \code{NULL}.
#'
#' @inheritParams expect_that
#' @seealso \code{\link{inherits}}
#' @family expectations
#' @examples
#' expect_is(1, "numeric")
#' a <- matrix(1:10, nrow = 5)
#' expect_is(a, "matrix")
#'
#' expect_is(mtcars, "data.frame")
#' # alternatively for classes that have an is method
#' expect_true(is.data.frame(mtcars))
#'
#' f <- factor("a")
#' expect_is(f, "factor")
#' expect_type(f, "integer")
#'
#' expect_null(NULL)
#'
#' @name class-expectations
NULL

#' @param class character vector of class names
#' @param type String giving base type (as returned by \code{\link{typeof}}).
#' @export
#' @rdname class-expectations
expect_is <- function(object, class, info = NULL, label = NULL) {
  stopifnot(is.character(class))

  lab <- make_label(object, info, label)
  act <- klass(object)
  exp <- paste(class, collapse = "/")

  expect(
    inherits(object, class),
    sprintf("`%s` inherits from `%s` not `%s`.", lab, act, exp)
  )
}

#' @export
#' @rdname class-expectations
expect_type <- function(object, type) {
  stopifnot(is.character(type), length(type) == 1)

  lab <- make_label(object)
  act <- typeof(object)
  exp <- type

  expect(
    identical(type, act),
    sprintf("`%s` has type `%s`, not `%s`.", lab, act, exp)
  )
}

#' @export
#' @rdname class-expectations
expect_null <- function(object, info = NULL, label = NULL) {
  lab <- make_label(object, info, label)

  expect(
    is.null(object),
    sprintf("`%s` is not null.", lab)
  )
}

