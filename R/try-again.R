#' Evaluate an expression multiple times until it succeeds
#'
#' If you have a flaky test, you can use `try_again()` to run it a few times
#' until it succeeds. In most cases, you are better fixing the underlying
#' cause of the flakeyness, but sometimes that's not possible.
#'
#' @param times Number of times to retry.
#' @param code Code to evaluate.
#' @export
#' @examples
#' usually_return_1 <- function(i) {
#'   if (runif(1) < 0.1) 0 else 1
#' }
#'
#' \dontrun{
#' # 10% chance of failure:
#' expect_equal(usually_return_1(), 1)
#'
#' # 1% chance of failure:
#' try_again(3, expect_equal(usually_return_1(), 1))
#' }
try_again <- function(times, code) {
  check_number_whole(times, min = 1)

  code <- enquo(code)

  i <- 1
  while (i <= times) {
    tryCatch(
      return(eval(get_expr(code), get_env(code))),
      expectation_failure = function(cnd) NULL
    )
    cli::cli_inform(c(i = "Expectation failed; trying again ({i})..."))
    i <- i + 1
  }

  eval(get_expr(code), get_env(code))
}
