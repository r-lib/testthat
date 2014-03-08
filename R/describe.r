#' describe: a BDD testing language
#' 
#' A simple BDD DSL for writing tests. The language is similiar to RSpec for
#' Ruby or Mocha for JavaScript. BDD tests read like sentences and it should
#' thus be easier to understand what the specification of a function/component
#' is.
#' 
#' Tests using the \code{describe} syntax not only verify the tested code, but
#' also document its intended behaviour. Each \code{describe} block specifies a
#' larger component or function and contains a set of specifications. A
#' specification is definied by an \code{it} block. Each \code{it} block
#' functions as a test and is evaluated in its own environment. You
#' can also have nested \code{describe} blocks.
#' 
#' 
#' This test syntax helps to test the intented behaviour of your code. For
#' example: you want to write a new function for your package. Try to describe
#' the specification first using \code{describe}, before your write any code. 
#' After that, you start to implement the tests for each specification (i.e. 
#' the \code{it} block).
#' 
#' Use \code{describe} to verify that you implement the right things and use 
#' \code{\link{test_that}} to ensure you do the things right.
#' 
#' @param description description of the feature
#' @param code test code containing the specs
#' @export
#' @examples
#' describe("matrix()", {
#'   it("can be multiplied by a scalar", {
#'     m1 <- matrix(1:4, 2, 2)
#'     m2 <- m1 * 2
#'     expect_equivalent(matrix(1:4 * 2, 2, 2), m2)
#'   })
#'   it("can have not yet tested specs")
#' })
#' 
#' # Nested specs:
#' describe("math library", {
#'   describe("addition()", {
#'     it("can add two numbers", {
#'       expect_equivalent(1 + 1, addition(1, 1))
#'     })
#'   }) 
#'   describe("division()", {
#'     it("can divide two numbers", {
#'       expect_equivalent(10 / 2, division(10, 2))   
#'     })
#'     it("can handle division by 0") #not yet implemented
#'   })  
#' })

describe <- function(description, code) {
  is_invalid_description <- function (description) {
    (!is.character(description) || length(description) != 1 
     || nchar(description) == 0)
  }

  if (is_invalid_description(description)) {
    stop("description must be a string of at least length 1")
  }

  # prepares a new environment for each it-block
  describe_environment <- new.env(parent = parent.frame())
  describe_environment$it <- function(it_description, it_code = NULL) {
    if (is_invalid_description(it_description)) {
      stop("it-description must be a string of at least length 1")
    }
    if (missing(it_code)) return()
    
    test_description <- paste0(description, ": ", it_description)
    test_code(test_description, substitute(it_code),
                env = describe_environment)
  }

  eval(substitute(code), describe_environment)
  invisible()
}
