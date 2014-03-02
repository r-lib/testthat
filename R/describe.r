#' describe: a BDD testing language
#' 
#' A simple BDD DSL for writing tests.
#' The language is similiar to RSpec for Ruby or Mocha for JavaScript.
#' BDD tests read like sentences and it should thus be easier
#' to understand what the specification of a function/component is.
#'
#' @param description description of the feature
#' @param code test code containing the specs
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

describe <- function(description, code) {
  is_invalid_description <- function (description) {
    return(!is.character(description) || length(description) != 1
        || nchar(description) == 0)
  }

  if (is_invalid_description(description)) {
    stop("description must be a string of at least length 1")
  }

  # prepares a new environment for each it-block
  test_describe_environment <- new.env(parent = parent.frame())
  test_describe_environment$it <- function(it_description, it_code = NULL) {
    if (is_invalid_description(it_description)) {
      stop("it-description must be a string of at least length 1")
    }

    test_description <- paste0(description, ": ", it_description)
    if (!is.null(quote(it_code))) {
      test_code(test_description, substitute(it_code),
                env = test_describe_environment)
    }
  }

  eval(substitute(code), test_describe_environment)
  invisible()
}
