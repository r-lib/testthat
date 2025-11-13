# Run all tests in a package

- `test_local()` tests a local source package.

- `test_package()` tests an installed package.

- `test_check()` checks a package during `R CMD check`.

See
[`vignette("special-files")`](https://testthat.r-lib.org/articles/special-files.md)
to learn about the various files that testthat works with.

## Usage

``` r
test_package(package, reporter = check_reporter(), ...)

test_check(package, reporter = check_reporter(), ...)

test_local(
  path = ".",
  reporter = NULL,
  ...,
  load_package = "source",
  shuffle = FALSE
)
```

## Arguments

- package:

  If these tests belong to a package, the name of the package.

- reporter:

  Reporter to use to summarise output. Can be supplied as a string (e.g.
  "summary") or as an R6 object (e.g. `SummaryReporter$new()`).

  See [Reporter](https://testthat.r-lib.org/reference/Reporter.md) for
  more details and a list of built-in reporters.

- ...:

  Additional arguments passed to
  [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md)

- path:

  Path to directory containing tests.

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

## `R CMD check`

To run testthat automatically from `R CMD check`, make sure you have a
`tests/testthat.R` that contains:

    library(testthat)
    library(yourpackage)

    test_check("yourpackage")

## Environments

Each test is run in a clean environment to keep tests as isolated as
possible. For package tests, that environment inherits from the
package's namespace environment, so that tests can access internal
functions and objects.
