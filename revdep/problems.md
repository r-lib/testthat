# amber

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/amber
* Date/Publication: 2020-08-28 11:20:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "amber")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        3. raster::`projection<-`(`*tmp*`, value = regular)
        4. raster:::.getCRS(value)
        5. sp::CRS(x)
        6. rgdal::checkCRSArgs_ng(...)
       12. rgdal::showSRID(...)
      
      ── Error (???): Test scores.fluxnet.csv ────────────────────────────────────────
      Error in `as.double(y)`: cannot coerce type 'S4' to vector of type 'double'
      Backtrace:
       1. amber::scores.fluxnet.csv(...)
       3. graphics::plot.default(...)
       4. grDevices::xy.coords(x, y, xlabel, ylabel, log)
      
      Error: Test failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        extdata   8.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# crosstable

<details>

* Version: 0.2.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2021-03-08 09:20:02 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-1-crosstable.R:273:3): Multiple functions ───────────────────────
      Error: `object` and `expected` must both be vectors
      Backtrace:
          █
       1. └─testthat::expect_setequal(...)
      ── Error (test-1-crosstable.R:414:3): Testing everything ───────────────────────
      Error in `UseMethod("as_flextable")`: no applicable method for 'as_flextable' applied to an object of class "c('crosstable_effect_warning', 'warning', 'condition')"
      Backtrace:
          █
       1. └─flextable::as_flextable(x)
      
      [ FAIL 2 | WARN 0 | SKIP 14 | PASS 335 ]
      Error: Test failures
      Execution halted
    ```

# googleAnalyticsR

<details>

* Version: 1.0.0
* GitHub: https://github.com/MarkEdmondson1234/googleAnalyticsR
* Source code: https://github.com/cran/googleAnalyticsR
* Date/Publication: 2021-04-17 09:20:02 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "googleAnalyticsR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        1. └─testthat::test_check("googleAnalyticsR")
        2.   └─testthat::test_dir(...)
        3.     └─testthat:::test_files(...)
        4.       └─testthat:::test_files(...)
        5.         ├─testthat::with_reporter(...)
        6.         │ └─base::tryCatch(...)
        7.         │   └─base:::tryCatchList(expr, classes, parentenv, handlers)
        8.         │     └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
        9.         │       └─base:::doTryCatch(return(expr), name, parentenv, handler)
       10.         └─testthat:::parallel_event_loop_chunky(queue, reporters)
       11.           └─queue$poll(Inf)
       12.             └─base::lapply(...)
       13.               └─testthat:::FUN(X[[i]], ...)
       14.                 └─private$handle_error(msg, i)
      Execution halted
    ```

# ichimoku

<details>

* Version: 1.2.1
* GitHub: https://github.com/shikokuchuo/ichimoku
* Source code: https://github.com/cran/ichimoku
* Date/Publication: 2021-09-23 16:00:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "ichimoku")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Direction              "long"            
      Start                  1587337200        
      End                    1608681600        
      Ticker                 "sample_ohlc_data"
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-plot.R:14:3): extraplot ok ────────────────────────────────────
      expect_warning(extraplot(cloud), "'type' not specified") inherits from 'simpleWarning'/'warning'/'condition' not 'ggplot'.
      ── Failure (test-plot.R:15:3): extraplot ok ────────────────────────────────────
      expect_warning(extraplot(cloud, type = "line"), "'custom' not specified") inherits from 'simpleWarning'/'warning'/'condition' not 'ggplot'.
      ── Failure (test-plot.R:16:3): extraplot ok ────────────────────────────────────
      expect_warning(...) inherits from 'simpleWarning'/'warning'/'condition' not 'ggplot'.
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 141 ]
      Error: Test failures
      Execution halted
    ```

# param6

<details>

* Version: 0.2.2
* GitHub: https://github.com/xoopR/param6
* Source code: https://github.com/cran/param6
* Date/Publication: 2021-09-22 10:40:06 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "param6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a logical vector (FALSE)
      ── Failure (test-paramset.R:119:3): ParamSet actives - values ──────────────────
      expect_warning(...) is not FALSE
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a logical vector (FALSE)
      ── Failure (test-paramset.R:124:3): ParamSet actives - values ──────────────────
      expect_warning(...) is not FALSE
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a logical vector (FALSE)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 362 ]
      Error: Test failures
      Execution halted
    ```

# rio

<details>

* Version: 0.5.27
* GitHub: https://github.com/leeper/rio
* Source code: https://github.com/cran/rio
* Date/Publication: 2021-06-21 07:10:01 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "rio")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      37: test_code(NULL, exprs, env)
      38: source_file(path, child_env(env), wrap = wrap)
      39: FUN(X[[i]], ...)
      40: lapply(test_paths, test_one_file, env = env, wrap = wrap)
      41: doTryCatch(return(expr), name, parentenv, handler)
      42: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      43: tryCatchList(expr, classes, parentenv, handlers)
      44: tryCatch(code, testthat_abort_reporter = function(cnd) {    cat(conditionMessage(cnd), "\n")    NULL})
      45: with_reporter(reporters$multi, lapply(test_paths, test_one_file,     env = env, wrap = wrap))
      46: test_files(test_dir = test_dir, test_package = test_package,     test_paths = test_paths, load_helpers = load_helpers, reporter = reporter,     env = env, stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package)
      47: test_files(test_dir = path, test_paths = test_paths, test_package = package,     reporter = reporter, load_helpers = load_helpers, env = env,     stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package, parallel = parallel)
      48: test_dir("testthat", package = package, reporter = reporter,     ..., load_package = "installed")
      49: test_check("rio", reporter = "summary")
      An irrecoverable exception occurred. R is aborting now ...
      Segmentation fault (core dumped)
    ```

# rlang

<details>

* Version: 0.4.11
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2021-04-30 23:20:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-quo.R:288:3): as_quosure() still provides default env ───────────
      Error: `quo` must be a quosure
      Backtrace:
          █
       1. ├─rlang:::expect_reference(quo_get_env(quo), current_env()) test-quo.R:288:2
       2. │ ├─testthat::expect_true(is_reference(object, expected)) helper-rlang.R:70:2
       3. │ │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       4. │ │   └─rlang::eval_bare(expr, quo_get_env(quo))
       5. │ └─rlang::is_reference(object, expected)
       6. └─rlang::quo_get_env(quo)
      
      [ FAIL 1 | WARN 2 | SKIP 56 | PASS 2721 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# shiny

<details>

* Version: 1.7.0
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2021-09-22 10:20:02 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "shiny")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a character vector ('', NA)
      ── Failure (test-utils.R:233:3): dateYMD works ─────────────────────────────────
      expect_warning(dateYMD(c("2019/11/05", NA))) (`actual`) not identical to c("2019/11/05", NA) (`expected`).
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a character vector ('2019/11/05', NA)
      ── Failure (test-utils.R:237:3): dateYMD works ─────────────────────────────────
      expect_warning(dateYMD(c("2019/11/05", ""))) (`actual`) not identical to c("2019/11/05", "") (`expected`).
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a character vector ('2019/11/05', '')
      
      [ FAIL 5 | WARN 0 | SKIP 13 | PASS 1535 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        www   7.2Mb
    ```

# TreeTools

<details>

* Version: 1.5.0
* GitHub: https://github.com/ms609/TreeTools
* Source code: https://github.com/cran/TreeTools
* Date/Publication: 2021-09-08 08:00:07 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "TreeTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual`:   FALSE
      `expected`: TRUE 
      ── Failure (test-tree_rearrange.R:296:3): KeepTip() works ──────────────────────
      all.equal(...) is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 4 | WARN 0 | SKIP 3 | PASS 2503 ]
      Deleting unused snapshots:
      * Support/labelsplits-names.svg
      * Support/labelsplits.svg
      * mst/mst-plotting.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

# vegawidget

<details>

* Version: 0.3.2
* GitHub: https://github.com/vegawidget/vegawidget
* Source code: https://github.com/cran/vegawidget
* Date/Publication: 2021-01-12 08:40:08 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "vegawidget")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$message` is a character vector ('Spec has no `$schema` element, adding `$schema` element for Vega-Lite major-version')
      `expected$message` is absent
      
      `actual$call` is a call
      `expected$call` is absent
      
      `actual$trace` is an S3 object of class <rlang_trace>, a list
      `expected$trace` is absent
      
      `actual$$schema` is absent
      `expected$$schema` is a character vector ('https://vega.github.io/schema/vega-lite/v4.json')
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 71 ]
      Error: Test failures
      Execution halted
    ```

