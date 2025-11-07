# describe: a BDD testing language

A simple [behavior-driven development
(BDD)](https://en.wikipedia.org/wiki/Behavior-driven_development)
[domain-specific
language](https://en.wikipedia.org/wiki/Domain-specific_language) for
writing tests. The language is similar to [RSpec](https://rspec.info/)
for Ruby or [Mocha](https://mochajs.org/) for JavaScript. BDD tests read
like sentences and it should thus be easier to understand what the
specification of a function/component is.

## Usage

``` r
describe(description, code)

it(description, code = NULL)
```

## Arguments

- description:

  description of the feature

- code:

  test code containing the specs

## Details

Tests using the `describe` syntax not only verify the tested code, but
also document its intended behaviour. Each `describe` block specifies a
larger component or function and contains a set of specifications. A
specification is defined by an `it` block. Each `it` block functions as
a test and is evaluated in its own environment. You can also have nested
`describe` blocks.

This test syntax helps to test the intended behaviour of your code. For
example: you want to write a new function for your package. Try to
describe the specification first using `describe`, before your write any
code. After that, you start to implement the tests for each
specification (i.e. the `it` block).

Use `describe` to verify that you implement the right things and use
[`test_that()`](https://testthat.r-lib.org/dev/reference/test_that.md)
to ensure you do the things right.

## Examples

``` r
describe("matrix()", {
  it("can be multiplied by a scalar", {
    m1 <- matrix(1:4, 2, 2)
    m2 <- m1 * 2
    expect_equal(matrix(1:4 * 2, 2, 2), m2)
  })
  it("can have not yet tested specs")
})
#> ── Skip: matrix() / can have not yet tested specs ─────────────────────
#> Reason: empty test
#> Test passed with 1 success 🥳.

# Nested specs:
## code
addition <- function(a, b) a + b
division <- function(a, b) a / b

## specs
describe("math library", {
  describe("addition()", {
    it("can add two numbers", {
      expect_equal(1 + 1, addition(1, 1))
    })
  })
  describe("division()", {
    it("can divide two numbers", {
      expect_equal(10 / 2, division(10, 2))
    })
    it("can handle division by 0") #not yet implemented
  })
})
#> ── Skip: math library / division() / can handle division by 0 ─────────
#> Reason: empty test
#> Test passed with 2 successes 😀.
```
