#' A simple BDD DSL for writing tests.
#' The language is similiar to RSpec for Ruby or Mocha for JavaScript.
#' BDD tests read like sentences and it should thus be easier
#' to understand what the specification of a function/component is.
#'
#' @param description description of the block
#' @param spec_code test code containing the specs
#' @export
#' @examples
#' describe("matrix", {
#'   it("can be multiplied by a scalar", {
#'    m1 <- matrix(1:4, 2, 2)
#'    m2 <- m1 * 2
#'    expect_equivalent(matrix(1:4 * 2, 2, 2), m2)
#'   })
#'   it("can have not yet tested specs")
#' })

describe <- function(description, spec_code) {
  if (!is.character(description) || nchar(description) == 0) {
    stop("description must be a string of at least length 1")
  }

  test_describe_environment <- new.env(parent = parent.frame())
  enhanced_spec_code <- substitute({
    it <- function(spec_description, it_code = NULL) {
      test_description <- paste0(description, ": ", spec_description)

      if (!is.null(quote(it_code))) {
        test_code(test_description, substitute(it_code), test_describe_environment)
      }
    }
    spec_code
  })
  eval(enhanced_spec_code, test_describe_environment)
  invisible()
}
