# Manage test reporting

The job of a reporter is to aggregate the results from files, tests, and
expectations and display them in an informative way. Every testthat
function that runs multiple tests provides a `reporter` argument which
you can use to override the default (which is selected by
[`default_reporter()`](https://testthat.r-lib.org/dev/reference/default_reporter.md)).

## Details

You only need to use this `Reporter` object directly if you are creating
a new reporter. Currently, creating new Reporters is undocumented, so if
you want to create your own, you'll need to make sure that you're
familiar with [R6](https://adv-r.hadley.nz/r6.html) and then need read
the source code for a few.

## See also

Other reporters:
[`CheckReporter`](https://testthat.r-lib.org/dev/reference/CheckReporter.md),
[`DebugReporter`](https://testthat.r-lib.org/dev/reference/DebugReporter.md),
[`FailReporter`](https://testthat.r-lib.org/dev/reference/FailReporter.md),
[`JunitReporter`](https://testthat.r-lib.org/dev/reference/JunitReporter.md),
[`ListReporter`](https://testthat.r-lib.org/dev/reference/ListReporter.md),
[`LocationReporter`](https://testthat.r-lib.org/dev/reference/LocationReporter.md),
[`MinimalReporter`](https://testthat.r-lib.org/dev/reference/MinimalReporter.md),
[`MultiReporter`](https://testthat.r-lib.org/dev/reference/MultiReporter.md),
[`ProgressReporter`](https://testthat.r-lib.org/dev/reference/ProgressReporter.md),
[`RStudioReporter`](https://testthat.r-lib.org/dev/reference/RStudioReporter.md),
[`SilentReporter`](https://testthat.r-lib.org/dev/reference/SilentReporter.md),
[`SlowReporter`](https://testthat.r-lib.org/dev/reference/SlowReporter.md),
[`StopReporter`](https://testthat.r-lib.org/dev/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/dev/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/dev/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/dev/reference/TeamcityReporter.md)

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
# Override the default by supplying the name of a reporter
test_file(path, reporter = "minimal")
#> .SW...
```
