
#' Create a mock object.
#'
#' @param returns Values returned upon subsequent calls.
#' @export
#' @examples
#' \dontrun{
#'   m <- mock(returns = list(1))
#'   with_mock(summary = m, {
#'     expect_equal(summary(iris), 1)
#'     expect_call(m, 1, summary(iris))
#'   })
#' }
#'
mock <- function (returns = list()) {
  returns <- as.list(returns)
  call_no <- 0
  calls   <- list()

  mock_impl <- function (...)
  {
    call_no <<- call_no + 1
    calls[[call_no]] <<- match.call()

    if (length(returns)) {
      return(returns[[(call_no - 1) %% length(returns) + 1]])
    }

    invisible(NULL)
  }

  class(mock_impl) <- 'mock'
  mock_impl
}



#' Expectation: does the given call match the expected?
#'
#' @inheritParams expect_that
#' @param mock A \code{\link{mock}} object.
#' @param no Number of the call made on the \code{mock} object.
#' @param call Expected call.
#' @family expectations
#' @export
#' @examples
#' \dontrun{
#' expect_call(mock, 1, summary(iris))
#' }
expect_call <- function (mock, no, expected_call) {
  stopifnot(inherits(mock, 'mock'))
  stopifnot(is.numeric(no))

  expected_call <- substitute(expected_call)
  calls <- environment(mock)$calls

  expect(
    0 < no && no <= length(calls),
    sprintf("call number %s not found in mock object", toString(no))
  )

  expect(
    calls[[no]] == expected_call,
    sprintf("expected call %s does not mach actual call %s.",
            format(expected_call), format(calls[[no]]))
  )

  invisible(mock)
}

