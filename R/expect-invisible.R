#' Does code return a visible or invisible object?
#'
#' Use this to test whether a function returns a visible or invisible
#' output. Typically you'll use this to check that functions called primarily
#' for their side-effects return their data argument invisibly.
#'
#' @param call A function call.
#' @inheritParams expect_that
#' @return The evaluated `call`, invisibly.
#' @export
#' @examples
#' expect_invisible(x <- 10)
#' expect_visible(x)
#'
#' # Typically you'll assign the result of the expectation so you can
#' # also check that the value is as you expect.
#' greet <- function(name) {
#'   message("Hi ", name)
#'   invisible(name)
#' }
#' out <- expect_invisible(greet("Hadley"))
#' expect_equal(out, "Hadley")
expect_invisible <- function(call, label = NULL) {
  lab <- label %||% expr_label(enexpr(call))
  vis <- withVisible(call)

  expect(
    identical(vis$visible, FALSE),
    sprintf("%s does not return invisibly", lab)
  )
  invisible(vis$value)
}

#' @export
#' @rdname expect_invisible
expect_visible <- function(call, label = NULL) {
  lab <- label %||% expr_label(enexpr(call))
  vis <- withVisible(call)

  expect(
    identical(vis$visible, TRUE),
    sprintf("%s does not invisibly", lab)
  )
  invisible(vis$value)
}
