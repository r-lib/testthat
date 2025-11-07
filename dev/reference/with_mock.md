# Mock functions in a package.

**\[defunct\]**

`with_mock()` and `local_mock()` are now defunct, and can be replaced by
[`with_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md)
and
[`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md).
These functions only worked by abusing of R's internals.

## Usage

``` r
with_mock(..., .env = topenv())

local_mock(..., .env = topenv(), .local_envir = parent.frame())
```

## Arguments

- ...:

  named parameters redefine mocked functions, unnamed parameters will be
  evaluated after mocking the functions

- .env:

  the environment in which to patch the functions, defaults to the
  top-level environment. A character is interpreted as package name.

- .local_envir:

  Environment in which to add exit handler. For expert use only.
