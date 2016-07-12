
#' Create a mocked function.
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
#' @return A mocked function which can be then used with \code{\link{with_mock}}.
#'
#' @export
#' @examples
#' m <- mock(1)
#' with_mock(summary = m, {
#'   expect_equal(summary(iris), 1)
#'   expect_length(m, 1)
#'   expect_call(m, 1, summary(iris))
#'   expect_args(m, 1, iris)
#' })
#'
#' # multiple return values
#' m <- mock(1, "a", sqrt(3))
#' with_mock(summary = m, {
#'   expect_equal(summary(iris), 1)
#'   expect_equal(summary(iris), "a")
#'   expect_equal(summary(iris), 1.73, tolerance = .01)
#' })
#'
#' # side effects
#' \dontrun{
#' m <- mock(1, 2, stop("error"))
#' with_mock(summary = m, {
#'   expect_equal(summary(iris), 1)
#'   expect_equal(summary(iris), 2)
#'   expect_error(summary(iris), "error")
#' })
#' }
#'
mock <- function (..., cycle = FALSE, envir = parent.frame()) {
  stopifnot(is.environment(envir))

  return_values     <- eval(substitute(alist(...)))
  return_values_env <- envir
  call_no           <- 0
  calls             <- list()
  args              <- list()

  mock_impl <- function(...) {
    call_no <<- call_no + 1
    calls[[call_no]] <<- match.call()

    args[[call_no]] <<- list(...)

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


#' \code{mock_args} returns list of lists of arguments' values.
#' @param m A \code{\link{mock}}ed function.
#' @return A \code{list} of \code{list}s of argument values.
#' @rdname mock
#' @export
#' @examples
#' m <- mock()
#' m(x = 1)
#' m(y = 2)
#' expect_equal(length(m), 2)
#' args <- mock_args(m)
#' expect_equal(args[[1]], list(x = 1))
#' expect_equal(args[[2]], list(y = 2))
mock_args <- function (m) {
  stopifnot(is_mock(m))
  environment(m)$args
}



#' \code{mock_calls} returns a list of call signatures.
#' @param m A \code{\link{mock}}ed function.
#' @return A \code{list} of \code{call}s.
#' @rdname mock
#' @export
#' @examples
#' m <- mock()
#' m(x = 1)
#' m(y = 2)
#' expect_equal(length(m), 2)
#' calls <- mock_calls(m)
#' expect_equal(calls[[1]], quote(m(x = 1)))
#' expect_equal(calls[[2]], quote(m(y = 2)))
mock_calls <- function (m) {
  stopifnot(is_mock(m))
  environment(m)$calls
}


#' @rdname mock
#' @param x A \code{mock} object.
#' @return Number of calls invoked on \code{m}.
#' @export
length.mock <- function (x)
{
  length(environment(x)$calls)
}


#' Expectation: does the given call match the expected?
#'
#' Together with \code{\link{mock}} can be used to verify whether the
#' call expression (\code{\link{expect_call}}) and/or argument values
#' (\code{\link{expect_args}}) match the expected.
#'
#'
#' @inheritParams expect_that
#' @param mock_object A \code{\link{mock}} object.
#' @param n Call number.
#' @param expected_call Expected call expression; will be compared unevaluated.
#' @param ... Arguments as passed in a call.
#' @family expectations
#' @examples
#' # expect call expression (signature)
#' m <- mock()
#' with_mock(summary = m, summary(iris))
#' expect_call(m, 1, summary(iris))
#'
#' # expect argument value
#' m <- mock()
#' a <- iris
#' with_mock(summary = m, summary(object = a))
#' expect_args(m, 1, object = a)
#' # is an equivalent to ...
#' expect_equal(mock_args(m)[[1]], list(object = a))
#'
#' @name call-expectations
#'
NULL



#' @export
#' @rdname call-expectations
expect_call <- function (mock_object, n, expected_call) {
  stopifnot(is_mock(mock_object))

  expect(
    0 < n && n <= length(mock_object),
    sprintf("call number %s not found in mock object", toString(n))
  )

  expected_call <- substitute(expected_call)
  mocked_call <- mock_calls(mock_object)[[n]]

  expect(
    identical(mocked_call, expected_call),
    sprintf("expected call %s does not mach actual call %s.",
            format(expected_call), format(mocked_call))
  )

  invisible(TRUE)
}


#' @export
#' @rdname call-expectations
expect_args <- function (mock_object, n, ...)
{
  stopifnot(is_mock(mock_object))

  expect(
    0 < n && n <= length(mock_object),
    sprintf("arguments list number %s not found in mock object", toString(n))
  )

  expected_args <- list(...)

  expect_equal(
    mock_args(mock_object)[[n]],
    expected_args,
    info = "expected argument list does not mach actual one."
  )

  invisible(TRUE)
}

