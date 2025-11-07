# Run code before/after tests

**\[superseded\]**

We no longer recommend using `setup()` and `teardown()`; instead we
think it's better practice to use a **test fixture** as described in
[`vignette("test-fixtures")`](https://testthat.r-lib.org/dev/articles/test-fixtures.md).

Code in a `setup()` block is run immediately in a clean environment.
Code in a `teardown()` block is run upon completion of a test file, even
if it exits with an error. Multiple calls to `teardown()` will be
executed in the order they were created.

## Usage

``` r
teardown(code, env = parent.frame())

setup(code, env = parent.frame())
```

## Arguments

- code:

  Code to evaluate

- env:

  Environment in which code will be evaluated. For expert use only.

## Examples

``` r
if (FALSE) { # \dontrun{
# Old approach
tmp <- tempfile()
setup(writeLines("some test data", tmp))
teardown(unlink(tmp))
} # }

# Now recommended:
local_test_data <- function(env = parent.frame()) {
  tmp <- tempfile()
  writeLines("some test data", tmp)
  withr::defer(unlink(tmp), env)

  tmp
}
# Then call local_test_data() in your tests
```
