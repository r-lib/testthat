#' Expect that a condition holds.
#' 
#' An expectation checks whether a single condition holds true.  
#' \pkg{testthat} currently provides the following expectations.  See their
#' documentation for more details
#'
#' \itemize{
#'  \item \code{\link{is_true}}: truth
#'  \item \code{\link{is_false}}: falsehood
#'  \item \code{\link{is_a}}: inheritance
#'  \item \code{\link{equals}}: equality with numerical tolerance
#'  \item \code{\link{is_identical_to}}: exact identity
#'  \item \code{\link{matches}}: string matching
#'  \item \code{\link{prints_text}}: output matching
#'  \item \code{\link{throws_error}}: error matching
#'  \item \code{\link{takes_less_than}}: performance
#' }
#'
#' Expectations are arranged into tests with \code{\link{test_that}} and
#' tests are arranged into contexts with \code{\link{context}}.
#'
#' @param object object to test
#' @param condition, a function that returns whether or not the condition
#'   is met, and if not, an error message to display.
#' @examples
#' expect_that(5 * 2, equals(10))
#' expect_that(sqrt(2) ^ 2, equals(2))
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
expect_that <- function(object, condition) {
  name <- deparse(substitute(object))
  results <- condition(object)
  
  results$message <- paste(name, results$message)
  
  test_reporter()$add_result(results)
  invisible()
}

