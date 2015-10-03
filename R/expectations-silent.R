#' Expect that code has no output, messages, or warnings.
#'
#' @param expr Expression to evaluate
#' @export
#' @family expectations
#' @examples
#' expect_silent("123")
#'
#' f <- function() {
#'   message("Hi!")
#'   warning("Hey!!")
#'   print("OY!!!")
#' }
#' \dontrun{
#' expect_silent(f())
#' }
expect_silent <- function(expr) {
  label <- find_expr("expr")
  out <- evaluate_promise(expr)

  outputs <- c(
    if (!identical(out$output, "")) "output",
    if (length(out$warnings) > 0) "warnings",
    if (length(out$messages) > 0) "messages"
  )

  expect(
    length(outputs) == 0,
    paste0(label, " produced ", paste(outputs, collapse = ", "))
  )
}

expect <- function(passed, message) {
  exp <- expectation(passed, message, srcref = find_test_srcref())
  get_reporter()$add_result(exp)

  invisible(exp)
}
