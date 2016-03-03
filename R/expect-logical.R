#' Expectation: is the object true/false?
#'
#' These are fall-back expectations that you can use when none of the other
#' more specific expectations apply. The disadvantage is that you may get
#' a less informative error message.
#'
#' Attributes are ignored.
#'
#' @seealso \code{\link{is_false}} for complement
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' expect_true(2 == 2)
#' # Failed expectations will throw an error
#' \dontrun{
#' expect_true(2 != 2)
#' }
#' expect_true(!(2 != 2))
#' # or better:
#' expect_false(2 != 2)
#'
#' a <- 1:3
#' expect_true(length(a) == 3)
#' # but better to use more specific expectation, if available
#' expect_equal(length(a), 3)
#' @name logical-expectations
NULL

#' @export
#' @rdname logical-expectations
expect_true <- function(object, info = NULL, label = NULL) {
  lab <- make_label(object, label)

  expect(
    identical(as.vector(object), TRUE),
    sprintf("%s isn't true.", lab),
    info = info
  )
  invisible(object)
}

#' @export
#' @rdname logical-expectations
expect_false <- function(object, info = NULL, label = NULL) {
  lab <- make_label(object, label)

  expect(
    identical(as.vector(object), FALSE),
    sprintf("%s isn't false.", lab),
    info = info
  )
  invisible(object)
}
