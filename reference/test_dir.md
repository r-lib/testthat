# Run all tests in a directory

This function is the low-level workhorse that powers
[`test_local()`](https://testthat.r-lib.org/reference/test_package.md)
and
[`test_package()`](https://testthat.r-lib.org/reference/test_package.md).
Generally, you should not call this function directly. In particular,
you are responsible for ensuring that the functions to test are
available in the test `env` (e.g. via `load_package`).

See
[`vignette("special-files")`](https://testthat.r-lib.org/articles/special-files.md)
to learn more about the conventions for test, helper, and setup files
that testthat uses, and what you might use each for.

## Usage

``` r
test_dir(
  path,
  filter = NULL,
  reporter = NULL,
  env = NULL,
  ...,
  load_helpers = TRUE,
  stop_on_failure = TRUE,
  stop_on_warning = FALSE,
  package = NULL,
  load_package = c("none", "installed", "source"),
  shuffle = FALSE
)
```

## Arguments

- path:

  Path to directory containing tests.

- filter:

  If not `NULL`, only tests with file names matching this regular
  expression will be executed. Matching is performed on the file name
  after it's stripped of `"test-"` and `".R"`.

- reporter:

  Reporter to use to summarise output. Can be supplied as a string (e.g.
  "summary") or as an R6 object (e.g. `SummaryReporter$new()`).

  See [Reporter](https://testthat.r-lib.org/reference/Reporter.md) for
  more details and a list of built-in reporters.

- env:

  Environment in which to execute the tests. Expert use only.

- ...:

  Additional arguments passed to
  [`grepl()`](https://rdrr.io/r/base/grep.html) to control filtering.

- load_helpers:

  Source helper files before running the tests?

- stop_on_failure:

  If `TRUE`, throw an error if any tests fail.

- stop_on_warning:

  If `TRUE`, throw an error if any tests generate warnings.

- package:

  If these tests belong to a package, the name of the package.

- load_package:

  Strategy to use for load package code:

  - "none", the default, doesn't load the package.

  - "installed", uses [`library()`](https://rdrr.io/r/base/library.html)
    to load an installed package.

  - "source", uses
    [`pkgload::load_all()`](https://pkgload.r-lib.org/reference/load_all.html)
    to a source package. To configure the arguments passed to
    `load_all()`, add this field in your DESCRIPTION file:

        Config/testthat/load-all: list(export_all = FALSE, helpers = FALSE)

- shuffle:

  If `TRUE`, randomly reorder the top-level expressions in the file.

## Value

A list (invisibly) containing data about the test results.

## Environments

Each test is run in a clean environment to keep tests as isolated as
possible. For package tests, that environment inherits from the
package's namespace environment, so that tests can access internal
functions and objects.
