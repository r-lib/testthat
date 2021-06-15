# bbotk

<details>

* Version: 0.3.2
* GitHub: https://github.com/mlr-org/bbotk
* Source code: https://github.com/cran/bbotk
* Date/Publication: 2021-03-18 13:20:07 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "bbotk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test_Optimizer.R:15:3): Optimizer assertions work ────────────────────
      Error: attempt to apply non-function
      Backtrace:
          █
       1. └─testthat::expect_error(optimizer$optimize(instance), class = "packageNotFoundError") test_Optimizer.R:15:2
       2.   └─testthat:::expect_condition_matching(...)
       3.     └─testthat:::quasi_capture(...)
       4.       ├─testthat:::.capture(...)
       5.       │ └─base::withCallingHandlers(...)
       6.       └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
      
      [ FAIL 1 | WARN 6 | SKIP 1 | PASS 384 ]
      Error: Test failures
      Execution halted
    ```

# bignum

<details>

* Version: 0.2.0
* GitHub: https://github.com/davidchall/bignum
* Source code: https://github.com/cran/bignum
* Date/Publication: 2021-06-13 04:40:29 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "bignum")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("bignum")
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (22)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-biginteger.R:153:3): difficult cases work ─────────────────────
      expect_warning(biginteger(c(1, 1e-10)), class = "bignum_warning_cast_lossy") (`actual`) not equal to biginteger(c("1", "0")) (`expected`).
      
      `actual` is an S3 object of class <bignum_warning_cast_lossy/vctrs_error_cast_lossy/warning/condition>, a list
      `expected` is an S3 object of class <bignum_biginteger/bignum_vctr/vctrs_vctr>, a character vector
      
      [ FAIL 1 | WARN 0 | SKIP 22 | PASS 459 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.0Mb
      sub-directories of 1Mb or more:
        libs  13.7Mb
    ```

# bslib

<details>

* Version: 0.2.5.1
* GitHub: https://github.com/rstudio/bslib
* Source code: https://github.com/cran/bslib
* Date/Publication: 2021-05-18 15:00:02 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "bslib")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Error (test-theme-base-colors.R:117:3): bs3 accent colors ───────────────────
      Error: `theme` must be a `bs_theme()` object
      Backtrace:
          █
       1. ├─testthat::expect_identical(...) test-theme-base-colors.R:117:2
       2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─bslib::bs_get_variables(theme, varnames)
       5.   └─bslib:::assert_bs_theme(theme)
      
      [ FAIL 2 | WARN 0 | SKIP 3 | PASS 185 ]
      Deleting unused snapshots:
      * _snaps/zzzz-bs-sass/bootstrap.scss
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        fonts   2.4Mb
        lib     3.9Mb
    ```

# clock

<details>

* Version: 0.3.0
* GitHub: https://github.com/r-lib/clock
* Source code: https://github.com/cran/clock
* Date/Publication: 2021-04-22 17:40:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "clock")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$message` is a character vector ('Failed to parse 1 string at location 1. Returning `NA` at that location.')
      `expected$message` is absent
      
      `actual$trace` is an S3 object of class <rlang_trace>, a list
      `expected$trace` is absent
      
      `actual$ticks` is absent
      `expected$ticks` is an integer vector (NA)
      
      `actual$ticks_of_day` is absent
      `expected$ticks_of_day` is an integer vector (NA)
      
      [ FAIL 13 | WARN 0 | SKIP 202 | PASS 853 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 48.4Mb
      sub-directories of 1Mb or more:
        libs  46.9Mb
    ```

# crosstable

<details>

* Version: 0.2.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2021-03-08 09:20:02 UTC
* Number of recursive dependencies: 125

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
      Error: no applicable method for 'as_flextable' applied to an object of class "c('crosstable_effect_warning', 'warning', 'condition')"
      Backtrace:
          █
       1. └─flextable::as_flextable(x)
      
      [ FAIL 2 | WARN 0 | SKIP 14 | PASS 335 ]
      Error: Test failures
      Execution halted
    ```

# curl

<details>

* Version: 4.3.1
* GitHub: https://github.com/jeroen/curl
* Source code: https://github.com/cran/curl
* Date/Publication: 2021-04-30 13:50:07 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "curl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘engine.R’
      Comparing ‘engine.Rout’ to ‘engine.Rout.save’ ...4d3
    < Using libcurl 7.68.0 with GnuTLS/3.6.13
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(curl)
      Using libcurl 7.68.0 with GnuTLS/3.6.13
      > 
      > # Comply with CRAN policy: skip tests if no internet
      > if(curl::has_internet()){
      +   test_check("curl")
      + }
      This is libcurl version 7.68.0 with GnuTLS/3.6.13 
      Using test server: http://hb.opencpu.org 
      Aborted (core dumped)
    ```

## In both

*   checking compiled code ... NOTE
    ```
    File ‘curl/libs/curl.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# dplyr

<details>

* Version: 1.0.6
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2021-05-05 15:40:05 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "dplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$call` is a call
      `expected$call` is absent
      
      `actual$trace` is an S3 object of class <rlang_trace>, a list
      `expected$trace` is absent
      
      `actual$a...1` is absent
      `expected$a...1` is a double vector (1)
      
      `actual$a...2` is absent
      `expected$a...2` is a double vector (2)
      
      [ FAIL 1 | WARN 0 | SKIP 60 | PASS 1977 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# earthtide

<details>

* Version: 0.0.11
* GitHub: https://github.com/jkennel/earthtide
* Source code: https://github.com/cran/earthtide
* Date/Publication: 2021-06-04 19:30:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "earthtide")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      26: test_code(NULL, exprs, env)
      27: source_file(path, child_env(env), wrap = wrap)
      28: FUN(X[[i]], ...)
      29: lapply(test_paths, test_one_file, env = env, wrap = wrap)
      30: force(code)
      31: doWithOneRestart(return(expr), restart)
      32: withOneRestart(expr, restarts[[1L]])
      33: withRestarts(testthat_abort_reporter = function() NULL, force(code))
      34: with_reporter(reporters$multi, lapply(test_paths, test_one_file,     env = env, wrap = wrap))
      35: test_files(test_dir = test_dir, test_package = test_package,     test_paths = test_paths, load_helpers = load_helpers, reporter = reporter,     env = env, stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package)
      36: test_files(test_dir = path, test_paths = test_paths, test_package = package,     reporter = reporter, load_helpers = load_helpers, env = env,     stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package, parallel = parallel)
      37: test_dir("testthat", package = package, reporter = reporter,     ..., load_package = "installed")
      38: test_check("earthtide")
      An irrecoverable exception occurred. R is aborting now ...
      Segmentation fault (core dumped)
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs   5.3Mb
    ```

# egor

<details>

* Version: 1.21.6
* GitHub: https://github.com/tilltnet/egor
* Source code: https://github.com/cran/egor
* Date/Publication: 2021-06-11 21:00:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "egor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       11. ├─dplyr::select(., -V1, -V2)
       12. ├─dplyr::left_join(., aaties, by = c(from = ".srcID", to = ".tgtID"))
       13. ├─dplyr::mutate(...)
       14. ├─dplyr:::mutate.data.frame(...)
       15. │ └─dplyr:::mutate_cols(.data, ..., caller_env = caller_env())
       16. │   ├─base::withCallingHandlers(...)
       17. │   └─mask$eval_all_mutate(quo)
       18. ├─base::factor(...)
       19. │ └─base::stop(...)
       20. └─base::.handleSimpleError(...)
       21.   └─dplyr:::h(simpleError(msg, call))
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 208 ]
      Error: Test failures
      Execution halted
    ```

# finreportr

<details>

* Version: 1.0.2
* GitHub: https://github.com/sewardlee337/finreportr
* Source code: https://github.com/cran/finreportr
* Date/Publication: 2020-06-13 06:10:02 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "finreportr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─finreportr::CompanyInfo("TSLA")
        5.   ├─xml2::read_html(url)
        6.   └─xml2:::read_html.default(url)
        7.     ├─base::suppressWarnings(...)
        8.     │ └─base::withCallingHandlers(...)
        9.     ├─xml2::read_xml(x, encoding = encoding, ..., as_html = TRUE, options = options)
       10.     └─xml2:::read_xml.character(...)
       11.       └─xml2:::read_xml.connection(...)
       12.         ├─base::open(x, "rb")
       13.         └─base::open.connection(x, "rb")
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

## Newly fixed

*   checking examples ... ERROR
    ```
    Running examples in ‘finreportr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: AnnualReports
    > ### Title: Acquire listing of company annual reports.
    > ### Aliases: AnnualReports
    > 
    > ### ** Examples
    > 
    > AnnualReports("TSLA")
    Error in open.connection(x, "rb") : HTTP error 403.
    Calls: AnnualReports -> <Anonymous> -> read_html.default
    Execution halted
    ```

# fundiversity

<details>

* Version: 0.2.0
* GitHub: https://github.com/Bisaloo/fundiversity
* Source code: https://github.com/cran/fundiversity
* Date/Publication: 2021-05-14 07:40:16 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "fundiversity")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > if (requireNamespace("testthat", quietly = TRUE)) {
      +   library(testthat)
      +   options(fundiversity.memoise = TRUE)
      +   test_check("fundiversity")
      + }
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-fric_intersect.R:80:3): Functional Richness Intersection edge cases ──
      expect_message(fd_fric_intersect(traits_birds[1:4, ], site_sp_birds)[["FRic_intersect"]])[c(1, 2, 3)] absent from NA_real_
      ── Failure (test-fric_intersect.R:80:3): Functional Richness Intersection edge cases ──
      NA_real_[1] absent from expect_message(fd_fric_intersect(traits_birds[1:4, ], site_sp_birds)[["FRic_intersect"]])
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 155 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘geometry’
      All declared Imports should be used.
    ```

# furrr

<details>

* Version: 0.2.2
* GitHub: https://github.com/DavisVaughan/furrr
* Source code: https://github.com/cran/furrr
* Date/Publication: 2021-01-29 15:30:05 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "furrr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$seed` is an integer vector (1)
      
      `actual$scheduling` is absent
      `expected$scheduling` is an integer vector (2)
      
      `actual$chunk_size` is absent
      `expected$chunk_size` is NULL
      
      `actual$prefix` is absent
      `expected$prefix` is NULL
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 809 ]
      Error: Test failures
      In addition: There were 50 or more warnings (use warnings() to see the first 50)
      Execution halted
    ```

# hail

<details>

* Version: 0.1.1
* GitHub: https://github.com/ironholds/hail
* Source code: https://github.com/cran/hail
* Date/Publication: 2017-01-05 10:39:51
* Number of recursive dependencies: 31

Run `cloud_details(, "hail")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("hail")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test.R:4:3): hail_hydra works ────────────────────────────────────────
      Error: cannot open the connection to 'https://or.water.usgs.gov/precip/walmart_ecoroof.rain'
      Backtrace:
          █
       1. └─hail::hail_hydra("Walmart Eco Roof") test.R:4:2
       2.   └─hail:::hydra_base(station_data$urls, station_data$stations)
       3.     └─base::readLines(url)
       4.       └─base::file(con, "r")
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# haven

<details>

* Version: 2.4.1
* GitHub: https://github.com/tidyverse/haven
* Source code: https://github.com/cran/haven
* Date/Publication: 2021-04-23 19:50:09 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "haven")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(haven)
      > 
      > test_check("haven")
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (11)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-haven-sas.R:147:3): using cols_only warns about deprecation, but works ──
      Names of `out` ('message', 'call', 'trace') don't match 'id'
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 386 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dplyr’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hms

<details>

* Version: 1.1.0
* GitHub: https://github.com/tidyverse/hms
* Source code: https://github.com/cran/hms
* Date/Publication: 2021-05-17 17:20:15 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "hms")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          █
       1. └─hms:::expect_hms_equal(...) test-coercion-deprecated.R:4:2
       2.   └─testthat::expect_s3_class(x, "hms") helper-compare.R:2:2
      ── Error (test-coercion-deprecated.R:4:3): coercion in ─────────────────────────
      Error: 'list' object cannot be coerced to type 'double'
      Backtrace:
          █
       1. └─hms:::expect_hms_equal(...) test-coercion-deprecated.R:4:2
       2.   └─testthat::expect_equal(as.numeric(x), as.numeric(y)) helper-compare.R:4:2
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 4 | WARN 0 | SKIP 1 | PASS 197 ]
      Error: Test failures
      Execution halted
    ```

# httptest

<details>

* Version: 4.0.0
* GitHub: https://github.com/nealrichardson/httptest
* Source code: https://github.com/cran/httptest
* Date/Publication: 2021-02-01 06:10:04 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "httptest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (8)
      • TODO: handle URL escaping (1)
      • TODO: prettify when simplify=FALSE (1)
      • third_edition is TRUE (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-fake-http.R:118:3): fake_request gets covered directly (not just in tracer) ──
      expect_message(...) inherits from 'simpleMessage'/'message'/'condition' not 'response'.
      ── Failure (test-fake-http.R:125:3): fake_request gets covered directly (not just in tracer) ──
      expect_message(...) inherits from 'simpleMessage'/'message'/'condition' not 'response'.
      
      [ FAIL 2 | WARN 0 | SKIP 12 | PASS 286 ]
      Error: Test failures
      Execution halted
    ```

# jstor

<details>

* Version: 0.3.9
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2020-06-04 04:50:03 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "jstor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    ```

# ldaPrototype

<details>

* Version: 0.3.0
* GitHub: https://github.com/JonasRieger/ldaPrototype
* Source code: https://github.com/cran/ldaPrototype
* Date/Publication: 2020-12-02 13:30:03 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "ldaPrototype")` for more info

</details>

## Newly broken

*   checking tests ...DONE
    ```
    Status: 1 ERROR
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning message:
      package ‘stats’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       read failed on /opt/R/4.0.3/lib/R/library/stats/R/stats.rdb
      During startup - Warning message:
      package ‘stats’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       read failed on /opt/R/4.0.3/lib/R/library/stats/R/stats.rdb
      During startup - Warning message:
      package ‘stats’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       read failed on /opt/R/4.0.3/lib/R/library/stats/R/stats.rdb
      During startup - Warning message:
      package ‘stats’ in options("defaultPackages") was not found 
      Killed
    ```

# lightr

<details>

* Version: 1.4
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2021-03-21 10:30:03 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "lightr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Run `snapshot_accept('getspec')` if this is a deliberate change
      ── Failure (test_getspec.R:38:3): get_spec range ───────────────────────────────
      nrow(res) (`actual`) not identical to 101L (`expected`).
      
      `actual` is NULL
      `expected` is an integer vector (101)
      ── Failure (test_getspec.R:53:3): get_spec interpolate ─────────────────────────
      nrow(res) (`actual`) not identical to 1992L (`expected`).
      
      `actual` is NULL
      `expected` is an integer vector (1992)
      
      [ FAIL 5 | WARN 0 | SKIP 3 | PASS 511 ]
      Error: Test failures
      Execution halted
    ```

# LMMELSM

<details>

* Version: 0.1.0
* GitHub: https://github.com/stephenSRMMartin/LMMELSM
* Source code: https://github.com/cran/LMMELSM
* Date/Publication: 2021-03-13 13:30:02 UTC
* Number of recursive dependencies: 64

Run `cloud_details(, "LMMELSM")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 97.9Mb
      sub-directories of 1Mb or more:
        libs  96.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Newly fixed

*   checking whether package ‘LMMELSM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/LMMELSM/old/LMMELSM.Rcheck/00install.out’ for details.
    ```

# rlang

<details>

* Version: 0.4.11
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2021-04-30 23:20:02 UTC
* Number of recursive dependencies: 65

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

# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## Newly broken

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 125.1Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.9Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘RNiftyReg’ ...
** package ‘RNiftyReg’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:245:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::ReturnByValue<OtherDerived>&) [with OtherDerived = Eigen::MatrixSquareRootReturnValue<Eigen::Matrix<double, 4, 4> >; _Scalar = double; int _Rows = 4; int _Cols = 4; int _Options = 0; int _MaxRows = 4; int _MaxCols = 4]’
reg-lib/cpu/_reg_maths_eigen.cpp:234:15:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: reg-lib/cpu/_reg_maths_eigen.o] Error 1
ERROR: compilation failed for package ‘RNiftyReg’
* removing ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/RNiftyReg’


```
### CRAN

```
* installing *source* package ‘RNiftyReg’ ...
** package ‘RNiftyReg’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (RNiftyReg)


```
# shinymeta

<details>

* Version: 0.2.0
* GitHub: https://github.com/rstudio/shinymeta
* Source code: https://github.com/cran/shinymeta
* Date/Publication: 2021-06-15 08:10:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "shinymeta")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        8.       │   │ └─domain$wrapSync(expr)
        9.       │   ├─shiny::withReactiveDomain(...)
       10.       │   │ └─promises::with_promise_domain(...)
       11.       │   │   └─domain$wrapSync(expr)
       12.       │   │     └─base::force(expr)
       13.       │   └─env$runWith(self, func)
       14.       │     └─shiny:::contextFunc()
       15.       │       └─shiny::..stacktraceon..(expr)
       16.       └─testthat::expect_equal(...) test-comments.R:192:2
      
      [ FAIL 4 | WARN 22 | SKIP 4 | PASS 201 ]
      Deleting unused snapshots:
      * _snaps/report/template.Rmd
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘digest’ ‘magrittr’
      All declared Imports should be used.
    ```

# tibble

<details>

* Version: 3.1.2
* GitHub: https://github.com/tidyverse/tibble
* Source code: https://github.com/cran/tibble
* Date/Publication: 2021-05-16 08:00:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$internal` is a list
      `expected$internal` is absent
      
      `actual$V1` is absent
      `expected$V1` is a double vector (1, 0, 0)
      
      `actual$V2` is absent
      `expected$V2` is a double vector (0, 1, 0)
      
      `actual$V3` is absent
      `expected$V3` is a double vector (0, 0, 1)
      
      [ FAIL 1 | WARN 0 | SKIP 131 | PASS 1336 ]
      Error: Test failures
      Execution halted
    ```

# vegawidget

<details>

* Version: 0.3.2
* GitHub: https://github.com/vegawidget/vegawidget
* Source code: https://github.com/cran/vegawidget
* Date/Publication: 2021-01-12 08:40:08 UTC
* Number of recursive dependencies: 98

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

# vroom

<details>

* Version: 1.5.0
* GitHub: https://github.com/r-lib/vroom
* Source code: https://github.com/cran/vroom
* Date/Publication: 2021-06-14 14:10:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "vroom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      probs2$actual[[4]] (`actual`) not equal to "4 columns" (`expected`).
      
      `actual` is NULL
      `expected` is a character vector ('4 columns')
      ── Failure (test-vroom.R:341:3): vroom uses the number of rows when guess_max = Inf ──
      res[["x"]] has type 'NULL', not 'double'.
      ── Failure (test-vroom.R:342:3): vroom uses the number of rows when guess_max = Inf ──
      is.na(res[["x"]][[NROW(res)]]) is not TRUE
      
      `actual`:       
      `expected`: TRUE
      
      [ FAIL 18 | WARN 0 | SKIP 4 | PASS 897 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.3Mb
      sub-directories of 1Mb or more:
        libs  22.8Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# wk

<details>

* Version: 0.4.1
* GitHub: https://github.com/paleolimbot/wk
* Source code: https://github.com/cran/wk
* Date/Publication: 2021-03-16 13:50:03 UTC
* Number of recursive dependencies: 44

Run `cloud_details(, "wk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      is.na(parsed) is not TRUE
      
      `actual`:   FALSE FALSE FALSE
      `expected`: TRUE             
      ── Failure (test-wkt.R:44:3): parse_wkt() works ────────────────────────────────
      attr(parsed, "problems") is not an S3 object
      ── Failure (test-wkt.R:45:3): parse_wkt() works ────────────────────────────────
      nrow(attr(parsed, "problems")) (`actual`) not identical to 1L (`expected`).
      
      `actual` is NULL
      `expected` is an integer vector (1)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 834 ]
      Error: Test failures
      Execution halted
    ```

