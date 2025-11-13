# Mock an R6 class

This function allows you to temporarily override an R6 class definition.
It works by creating a subclass then using
[`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
to temporarily replace the original definition. This means that it will
not affect subclasses of the original class; please file an issue if you
need this.

Learn more about mocking in
[`vignette("mocking")`](https://testthat.r-lib.org/articles/mocking.md).

## Usage

``` r
local_mocked_r6_class(
  class,
  public = list(),
  private = list(),
  frame = caller_env()
)
```

## Arguments

- class:

  An R6 class definition.

- public, private:

  A named list of public and private methods/data.

- frame:

  Calling frame which determines the scope of the mock. Only needed when
  wrapping in another local helper.
