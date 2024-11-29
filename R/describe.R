#' describe: a BDD testing language
#'
#' A simple [behavior-driven development
#' (BDD)](https://en.wikipedia.org/wiki/Behavior-driven_development)
#' [domain-specific language](https://en.wikipedia.org/wiki/Domain-specific_language)
#' for writing tests. The language is similar to [RSpec](https://rspec.info/)
#' for Ruby or [Mocha](https://mochajs.org/) for JavaScript. BDD tests read
#' like sentences and it should thus be easier to understand what the
#' specification of a function/component is.
#'
#' Tests using the `describe` syntax not only verify the tested code, but
#' also document its intended behaviour. Each `describe` block specifies a
#' larger component or function and contains a set of specifications. A
#' specification is defined by an `it` block. Each `it` block
#' functions as a test and is evaluated in its own environment. You
#' can also have nested `describe` blocks.
#'
#' This test syntax helps to test the intended behaviour of your code. For
#' example: you want to write a new function for your package. Try to describe
#' the specification first using `describe`, before your write any code.
#' After that, you start to implement the tests for each specification (i.e.
#' the `it` block).
#'
#' Use `describe` to verify that you implement the right things and use
#' [test_that()] to ensure you do the things right.
#'
#' @param description description of the feature
#' @param code test code containing the specs
#' @export
#' @examples
#' describe("matrix()", {
#'   it("can be multiplied by a scalar", {
#'     m1 <- matrix(1:4, 2, 2)
#'     m2 <- m1 * 2
#'     expect_equal(matrix(1:4 * 2, 2, 2), m2)
#'   })
#'   it("can have not yet tested specs")
#' })
#'
#' # Nested specs:
#' ## code
#' addition <- function(a, b) a + b
#' division <- function(a, b) a / b
#'
#' ## specs
#' describe("math library", {
#'   describe("addition()", {
#'     it("can add two numbers", {
#'       expect_equal(1 + 1, addition(1, 1))
#'     })
#'   })
#'   describe("division()", {
#'     it("can divide two numbers", {
#'       expect_equal(10 / 2, division(10, 2))
#'     })
#'     it("can handle division by 0") #not yet implemented
#'   })
#' })

describe <- function(description, code) {
  check_string(description, allow_empty = FALSE)
  describe_description <- description

  # prepares a new environment for each it-block
  describe_environment <- new.env(parent = parent.frame())
  describe_environment$it <- function(description, code = NULL) {
    check_string(description, allow_empty = FALSE)
    code <- substitute(code)

    description <- paste0(describe_description, ": ", description)
    describe_it(description, code, describe_environment)
  }

  eval(substitute(code), describe_environment)
  invisible()
}

describe_it <- function(description, code, env = parent.frame()) {
  reporter <- get_reporter() %||% local_interactive_reporter()
  local_test_context()

  test_code(
    description,
    code,
    env = env,
    reporter = reporter,
    skip_on_empty = FALSE
  )
}

#' @export
#' @rdname describe
it <- function(description, code = NULL) {
  check_string(description, allow_empty = FALSE)

  code <- substitute(code)
  describe_it(description, code)
}
