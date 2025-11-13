# Skipping tests

Sometimes you have tests that you can’t or don’t want to run in certain
circumstances. This vignette describes how to **skip** tests to avoid
execution in undesired environments. The most common scenarios are:

- You’re testing a web service that occasionally fails, and you don’t
  want to run the tests on CRAN. Or the API requires authentication, and
  you can only run the tests when you’ve [securely
  distributed](https://gargle.r-lib.org/articles/articles/managing-tokens-securely.html)
  secrets.

- You’re relying on features that not all operating systems possess, and
  want to make sure your code doesn’t run on platforms where it doesn’t
  work. The most common platform with limitations is Windows, which
  among other things lacks full UTF-8 support.

- You’re writing tests for multiple versions of R or multiple versions
  of a dependency, and you want to skip when a feature isn’t available.
  You generally don’t need to skip tests if a suggested package is not
  installed. This is only needed in exceptional circumstances, e.g.,
  when a package is not available on some operating systems.

``` r
library(testthat)
```

## Basics

testthat comes with a variety of helpers for the most common situations:

- [`skip_if_not_installed()`](https://testthat.r-lib.org/reference/skip.md)
  skips if a required package is not installed. You can optionally
  supply a minimal version too.

- [`skip_on_cran()`](https://testthat.r-lib.org/reference/skip.md) skips
  tests on CRAN.
  [`skip_on_bioc()`](https://testthat.r-lib.org/reference/skip.md) skips
  tests on Bioconductor. This is useful for slow tests and tests that
  occasionally fail for reasons outside of your control.

- [`skip_on_os()`](https://testthat.r-lib.org/reference/skip.md) allows
  you to skip tests on a specific operating system. Generally, you
  should strive to avoid this as much as possible (so your code works
  the same on all platforms), but sometimes it’s just not possible.

- [`skip_on_ci()`](https://testthat.r-lib.org/reference/skip.md) skips
  tests on most CI platforms (e.g., GitHub Actions).

- [`skip_on_covr()`](https://testthat.r-lib.org/reference/skip.md) skips
  tests during code coverage.

- `skip_unless_r(">= 4.2")` only runs tests for newer R versions.
  `skip_unless_r("< 4.2")` only runs tests for older R versions.

You can implement your own using skips
[`skip_if()`](https://testthat.r-lib.org/reference/skip.md) or
[`skip_if_not()`](https://testthat.r-lib.org/reference/skip.md):

``` r
# Only run test if a token file is available
skip_if_not(file.exists("secure-token.json"))

# Only run test if R has memory profiling capabilities
skip_if_not(capabilities("profmem"))

# Only run if we've opted-in to slow tests with an env var
skip_if(Sys.getenv("RUN_SLOW_TESTS") == "true")
```

All reporters show which tests are skipped. As of testthat 3.0.0,
ProgressReporter (used interactively) and CheckReporter (used inside
`R CMD check`) also display a summary of skips across all tests. It
looks something like this:

    ── Skipped tests  ───────────────────────────────────────────────────────
    ● No token (3)
    ● On CRAN (1)

This display is really important, and you should keep an eye on it when
working on your test suite. If you accidentally skip too many tests, you
can trick yourself into believing your code is working correctly, when
actually you’re just not testing it.

## Helpers

If you find yourself using the same
[`skip_if()`](https://testthat.r-lib.org/reference/skip.md) or
[`skip_if_not()`](https://testthat.r-lib.org/reference/skip.md)
expression across multiple tests, it’s a good idea to create a helper
function. This function should start with `skip_` and live in a
`tests/testthat/helper-{something}.R` file:

``` r
skip_if_dangerous <- function() {
  if (!identical(Sys.getenv("DANGER"), "")) {
    skip("Not run in dangerous environments.")
  } else {
    invisible()
  }
}
```

## Embedding `skip()` in package functions

Another useful technique is to embed a
[`skip()`](https://testthat.r-lib.org/reference/skip.md) directly into a
package function. For example, take a look at
[`pkgdown:::convert_markdown_to_html()`](https://github.com/r-lib/pkgdown/blob/v2.0.7/R/markdown.R#L95-L106),
which absolutely cannot work if the Pandoc tool is unavailable:

``` r
convert_markdown_to_html <- function(in_path, out_path, ...) {
  if (rmarkdown::pandoc_available("2.0")) {
    from <- "markdown+gfm_auto_identifiers-citations+emoji+autolink_bare_uris"
  } else if (rmarkdown::pandoc_available("1.12.3")) {
    from <- "markdown_github-hard_line_breaks+tex_math_dollars+tex_math_single_backslash+header_attributes"
  } else {
    if (is_testing()) {
      testthat::skip("Pandoc not available")
    } else {
      abort("Pandoc not available")
    }
  }
  
  ...
}
```

If Pandoc is not available when `convert_markdown_to_html()` executes,
it throws an error *unless* it appears to be part of a test run, in
which case the test is skipped. This is an alternative to implementing a
custom skipper, e.g., `skip_if_no_pandoc()`, and inserting it into many
of pkgdown’s tests.

We don’t want pkgdown to have a runtime dependency on testthat, so
pkgdown includes a copy of
[`testthat::is_testing()`](https://testthat.r-lib.org/reference/is_testing.md):

``` r
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}
```

It might look like the code still has a runtime dependency on testthat,
because of the call to
[`testthat::skip()`](https://testthat.r-lib.org/reference/skip.md). But
[`testthat::skip()`](https://testthat.r-lib.org/reference/skip.md) is
only executed during a test run, which means that testthat is installed.

We have mixed feelings about this approach. On the one hand, it feels
elegant and concise, and it absolutely guarantees that you’ll never miss
a needed skip in one of your tests. On the other hand, it mixes code and
tests in an unusual way, and when you’re focused on the tests, it’s easy
to miss the fact that a package function contains a
[`skip()`](https://testthat.r-lib.org/reference/skip.md).
