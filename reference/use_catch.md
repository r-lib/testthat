# Use Catch for C++ unit testing

Add the necessary infrastructure to enable C++ unit testing in R
packages with [Catch](https://github.com/catchorg/Catch2) and
`testthat`.

## Usage

``` r
use_catch(dir = getwd())
```

## Arguments

- dir:

  The directory containing an R package.

## Details

Calling `use_catch()` will:

1.  Create a file `src/test-runner.cpp`, which ensures that the
    `testthat` package will understand how to run your package's unit
    tests,

2.  Create an example test file `src/test-example.cpp`, which showcases
    how you might use Catch to write a unit test,

3.  Add a test file `tests/testthat/test-cpp.R`, which ensures that
    `testthat` will run your compiled tests during invocations of
    `devtools::test()` or `R CMD check`, and

4.  Create a file `R/catch-routine-registration.R`, which ensures that R
    will automatically register this routine when
    [`tools::package_native_routine_registration_skeleton()`](https://rdrr.io/r/tools/package_native_routine_registration_skeleton.html)
    is invoked.

You will also need to:

- Add xml2 to Suggests, with e.g.
  `usethis::use_package("xml2", "Suggests")`

- Add testthat to LinkingTo, with e.g.
  `usethis::use_package("testthat", "LinkingTo")`

C++ unit tests can be added to C++ source files within the `src`
directory of your package, with a format similar to R code tested with
`testthat`. Here's a simple example of a unit test written with
`testthat` + Catch:

    context("C++ Unit Test") {
      test_that("two plus two is four") {
        int result = 2 + 2;
        expect_true(result == 4);
      }
    }

When your package is compiled, unit tests alongside a harness for
running these tests will be compiled into your R package, with the C
entry point `run_testthat_tests()`. `testthat` will use that entry point
to run your unit tests when detected.

## Functions

All of the functions provided by Catch are available with the `CATCH_`
prefix – see
[here](https://github.com/catchorg/Catch2/blob/master/docs/assertions.md)
for a full list. `testthat` provides the following wrappers, to conform
with `testthat`'s R interface:

|                   |                         |                                                                                |
|-------------------|-------------------------|--------------------------------------------------------------------------------|
| **Function**      | **Catch**               | **Description**                                                                |
| `context`         | `CATCH_TEST_CASE`       | The context of a set of tests.                                                 |
| `test_that`       | `CATCH_SECTION`         | A test section.                                                                |
| `expect_true`     | `CATCH_CHECK`           | Test that an expression evaluates to `TRUE`.                                   |
| `expect_false`    | `CATCH_CHECK_FALSE`     | Test that an expression evaluates to `FALSE`.                                  |
| `expect_error`    | `CATCH_CHECK_THROWS`    | Test that evaluation of an expression throws an exception.                     |
| `expect_error_as` | `CATCH_CHECK_THROWS_AS` | Test that evaluation of an expression throws an exception of a specific class. |

In general, you should prefer using the `testthat` wrappers, as
`testthat` also does some work to ensure that any unit tests within will
not be compiled or run when using the Solaris Studio compilers (as these
are currently unsupported by Catch). This should make it easier to
submit packages to CRAN that use Catch.

## Symbol Registration

If you've opted to disable dynamic symbol lookup in your package, then
you'll need to explicitly export a symbol in your package that
`testthat` can use to run your unit tests. `testthat` will look for a
routine with one of the names:

        C_run_testthat_tests
        c_run_testthat_tests
        run_testthat_tests

Assuming you have `useDynLib(<pkg>, .registration = TRUE)` in your
package's `NAMESPACE` file, this implies having routine registration
code of the form:

    // The definition for this function comes from the file 'src/test-runner.cpp',
    // which is generated via `testthat::use_catch()`.
    extern SEXP run_testthat_tests();

    static const R_CallMethodDef callMethods[] = {
      // other .Call method definitions,
      {"run_testthat_tests", (DL_FUNC) &run_testthat_tests, 0},
      {NULL, NULL, 0}
    };

    void R_init_<pkg>(DllInfo* dllInfo) {
      R_registerRoutines(dllInfo, NULL, callMethods, NULL, NULL);
      R_useDynamicSymbols(dllInfo, FALSE);
    }

replacing `<pkg>` above with the name of your package, as appropriate.

See [Controlling
Visibility](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#Controlling-visibility)
and [Registering
Symbols](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#Registering-symbols)
in the **Writing R Extensions** manual for more information.

## Advanced Usage

If you'd like to write your own Catch test runner, you can instead use
the `testthat::catchSession()` object in a file with the form:

    #define TESTTHAT_TEST_RUNNER
    #include <testthat.h>

    void run()
    {
        Catch::Session& session = testthat::catchSession();
        // interact with the session object as desired
    }

This can be useful if you'd like to run your unit tests with custom
arguments passed to the Catch session.

## Standalone Usage

If you'd like to use the C++ unit testing facilities provided by Catch,
but would prefer not to use the regular `testthat` R testing
infrastructure, you can manually run the unit tests by inserting a call
to:

    .Call("run_testthat_tests", PACKAGE = <pkgName>)

as necessary within your unit test suite.

## See also

[Catch](https://github.com/catchorg/Catch2/blob/master/docs/assertions.md),
the library used to enable C++ unit testing.
