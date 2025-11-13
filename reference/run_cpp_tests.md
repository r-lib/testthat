# Do C++ tests past?

Test compiled code in the package `package`. A call to this function
will automatically be generated for you in `tests/testthat/test-cpp.R`
after calling
[`use_catch()`](https://testthat.r-lib.org/reference/use_catch.md); you
should not need to manually call this expectation yourself.

## Usage

``` r
expect_cpp_tests_pass(package)

run_cpp_tests(package)
```

## Arguments

- package:

  The name of the package to test.
