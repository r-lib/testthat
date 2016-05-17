
#' Create a mock object.
#'
#' Mock object's primary use is to record calls that are made on the
#' mocked function.
#'
#' Optionally values/expressions can be passed via \code{...} for the
#' mock object to return them upon subsequent calls. Expressions are
#' evaluated in environment \code{envir} before being returned. If no
#' value is passed in \code{...} then \code{NULL} is returned.
#'
#' Passing an expression or a function call via \code{...} is also a
#' way to implement side effects: keep track of the state of code
#' under testing, throw an exception when a condition is met, etc.
#'
#' @param ... Values returned upon subsequent calls.
#' @param cycle Whether to cycle over the return values. If \code{FALSE},
#'        will fail if called too many times.
#' @param envir Where to evaluate the expressions being returned.
#' @return A mock object.
#'
#' @export
#' @examples
#' m <- mock(1)
#' with_mock(summary = m, {
#'   expect_equal(summary(iris), 1)
#'   expect_call(m[[1]], summary(iris))
#' })
#'
mock <- function (..., cycle = FALSE, envir = parent.frame()) {
  stopifnot(is.environment(envir))

  return_values     <- eval(substitute(alist(...)))
  return_values_env <- envir
  call_no           <- 0
  calls             <- list()

  mock_impl <- function (...)
  {
    call_no <<- call_no + 1
    calls[[call_no]] <<- match.call()

    # TODO record the values passed on each call

    if (length(return_values)) {
      if (call_no > length(return_values) && !cycle)
        fail("too many calls to mock object and cycle set to FALSE")

      value <- return_values[[(call_no - 1) %% length(return_values) + 1]]
      return(eval(value, envir = return_values_env))
    }

    # TODO maybe it should the mock object itself?
    invisible(NULL)
  }

  class(mock_impl) <- 'mock'
  mock_impl
}


#' \code{[[.mock} returns call signature.
#' @param m A \code{\link{mock}} object.
#' @param i Call number.
#' @rdname mock
#' @export
`[[.mock` <- function (m, i) {
  stopifnot(inherits(m, 'mock'))
  stopifnot(is.numeric(i))

  calls <- environment(m)$calls

  expect(
    0 < i && i <= length(calls),
    sprintf("call number %s not found in mock object", toString(i))
  )

  calls[[i]]
}


#' Expectation: does the given call match the expected?
#'
#' @inheritParams expect_that
#' @param mocked_call A \code{\link{call}}, preferably obtained from
#'        a \code{\link{mock}} object.
#' @param expected_call Expected call.
#' @family expectations
#' @export
#' @examples
#' expect_call(quote(summary(iris)), summary(iris))
#' \dontrun{
#' expect_call(mock[[1]], summary(iris))
#' }
expect_call <- function (mocked_call, expected_call) {
  stopifnot(is.call(mocked_call))
  expected_call <- substitute(expected_call)

  expect(
    mocked_call == expected_call,
    sprintf("expected call %s does not mach actual call %s.",
            format(expected_call), format(mocked_call))
  )

  invisible(TRUE)
}

