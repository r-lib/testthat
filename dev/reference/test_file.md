# Run tests in a single file

Helper, setup, and teardown files located in the same directory as the
test will also be run. See
[`vignette("special-files")`](https://testthat.r-lib.org/dev/articles/special-files.md)
for details.

## Usage

``` r
test_file(
  path,
  reporter = default_compact_reporter(),
  desc = NULL,
  package = NULL,
  shuffle = FALSE,
  ...
)
```

## Arguments

- path:

  Path to file.

- reporter:

  Reporter to use to summarise output. Can be supplied as a string (e.g.
  "summary") or as an R6 object (e.g. `SummaryReporter$new()`).

  See [Reporter](https://testthat.r-lib.org/dev/reference/Reporter.md)
  for more details and a list of built-in reporters.

- desc:

  Optionally, supply a string here to run only a single test
  ([`test_that()`](https://testthat.r-lib.org/dev/reference/test_that.md)
  or
  [`describe()`](https://testthat.r-lib.org/dev/reference/describe.md))
  with this `desc`ription.

- package:

  If these tests belong to a package, the name of the package.

- shuffle:

  If `TRUE`, randomly reorder the top-level expressions in the file.

- ...:

  Additional parameters passed on to
  [`test_dir()`](https://testthat.r-lib.org/dev/reference/test_dir.md)

## Value

A list (invisibly) containing data about the test results.

## Environments

Each test is run in a clean environment to keep tests as isolated as
possible. For package tests, that environment inherits from the
package's namespace environment, so that tests can access internal
functions and objects.

## Examples

``` r
path <- testthat_example("success")
test_file(path)
#> 
#> ══ Testing test-success.R ═════════════════════════════════════════════
#> 
#> [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
#> [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
#> [ FAIL 0 | WARN 0 | SKIP 1 | PASS 1 ]
#> [ FAIL 0 | WARN 1 | SKIP 1 | PASS 1 ]
#> [ FAIL 0 | WARN 1 | SKIP 1 | PASS 2 ]
#> [ FAIL 0 | WARN 1 | SKIP 1 | PASS 3 ]
#> [ FAIL 0 | WARN 1 | SKIP 1 | PASS 4 ]
#> 
#> ── Warning (test-success.R:10:3): some tests have warnings ────────────
#> NaNs produced
#> Backtrace:
#>     ▆
#>  1. └─testthat::expect_equal(log(-1), NaN) at test-success.R:10:3
#>  2.   └─testthat::quasi_label(enquo(object), label)
#>  3.     └─rlang::eval_bare(expr, quo_get_env(quo))
#> 
#> ── Skipped tests (1) ──────────────────────────────────────────────────
#> • This test hasn't been written yet (1): test-success.R:6:3
#> 
#> 
#> [ FAIL 0 | WARN 1 | SKIP 1 | PASS 4 ]
test_file(path, desc = "some tests have warnings")
#> 
#> ══ Testing test-success.R ═════════════════════════════════════════════
#> 
#> [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
#> [ FAIL 0 | WARN 1 | SKIP 0 | PASS 0 ]
#> [ FAIL 0 | WARN 1 | SKIP 0 | PASS 1 ]
#> 
#> ── Warning (test-success.R:10:3): some tests have warnings ────────────
#> NaNs produced
#> Backtrace:
#>     ▆
#>  1. └─testthat::expect_equal(log(-1), NaN) at test-success.R:10:3
#>  2.   └─testthat::quasi_label(enquo(object), label)
#>  3.     └─rlang::eval_bare(expr, quo_get_env(quo))
#> 
#> [ FAIL 0 | WARN 1 | SKIP 0 | PASS 1 ]
test_file(path, reporter = "minimal")
#> .SW...
```
