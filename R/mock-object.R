
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
#'   expect_length(m, 1)
#'   expect_call(m, 1, summary(iris))
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


is_mock <- function (object) inherits(object, 'mock')


#' \code{$.mock} returns one of two lists: \code{calls} or \code{args}.
#' @param m A \code{\link{mock}} object.
#' @param n List name.
#' @return \code{calls} is a list of call signatures and \code{args} is
#'         a respective list of lists of arguments' values.
#' @rdname mock
#' @export
#' @examples
#' m <- mock()
#' m(x = 1)
#' m(y = 2)
#' expect_equal(length(m), 2)
#' expect_equal(m$calls[[1]], quote(m(x = 1)))
#' expect_equal(m$calls[[1]], quote(m(y = 2)))
`$.mock` <- function (m, n) {
  stopifnot(is_mock(m))
  switch(n,
         calls = environment(m)$calls,
         args  = environment(m)$args,
         fail("unknown member: ", n))
}


#' @rdname mock
#' @return Number of calls invoked on \code{m}.
#' @export
length.mock <- function (m)
{
  length(environment(m)$calls)
}


#' Expectation: does the given call match the expected?
#'
#' @inheritParams expect_that
#' @param mock_object A \code{\link{mock}} object.
#' @param n Call number.
#' @param expected_call Expected call.
#' @family expectations
#' @export
#' @examples
#' \dontrun{
#' m <- mock()
#' with_mock(summary = m, summary(iris))
#' expect_call(mock, 1, summary(iris))
#' }
expect_call <- function (mock_object, n, expected_call) {
  stopifnot(is_mock(mock_object))

  expect(
    0 < n && n <= length(mock_object),
    sprintf("call number %s not found in mock object", toString(n))
  )

  expected_call <- substitute(expected_call)
  mocked_call <- mock_object$calls[[n]]

  expect(
    mocked_call == expected_call,
    sprintf("expected call %s does not mach actual call %s.",
            format(expected_call), format(mocked_call))
  )

  invisible(TRUE)
}

