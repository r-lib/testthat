# Verify output

**\[superseded\]**

This function is superseded in favour of
[`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
and friends.

This is a regression test that records interwoven code and output into a
file, in a similar way to knitting an `.Rmd` file (but see caveats
below).

`verify_output()` is designed particularly for testing print methods and
error messages, where the primary goal is to ensure that the output is
helpful to a human. Obviously, you can't test that with code, so the
best you can do is make the results explicit by saving them to a text
file. This makes the output easy to verify in code reviews, and ensures
that you don't change the output by accident.

`verify_output()` is designed to be used with git: to see what has
changed from the previous run, you'll need to use `git diff` or similar.

## Usage

``` r
verify_output(
  path,
  code,
  width = 80,
  crayon = FALSE,
  unicode = FALSE,
  env = caller_env()
)
```

## Arguments

- path:

  Path to record results.

  This should usually be a call to
  [`test_path()`](https://testthat.r-lib.org/reference/test_path.md) in
  order to ensure that the same path is used when run interactively
  (when the working directory is typically the project root), and when
  run as an automated test (when the working directory will be
  `tests/testthat`).

- code:

  Code to execute. This will usually be a multiline expression contained
  within [`{}`](https://rdrr.io/r/base/Paren.html) (similarly to
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  calls).

- width:

  Width of console output

- crayon:

  Enable cli/crayon package colouring?

- unicode:

  Enable cli package UTF-8 symbols? If you set this to `TRUE`, call
  `skip_if(!cli::is_utf8_output())` to disable the test on your CI
  platforms that don't support UTF-8 (e.g. Windows).

- env:

  The environment to evaluate `code` in.

## Syntax

`verify_output()` can only capture the abstract syntax tree, losing all
whitespace and comments. To mildly offset this limitation:

- Strings are converted to R comments in the output.

- Strings starting with `# ` are converted to headers in the output.

## CRAN

On CRAN, `verify_output()` will never fail, even if the output changes.
This avoids false positives because tests of print methods and error
messages are often fragile due to implicit dependencies on other
packages, and failure does not imply incorrect computation, just a
change in presentation.
