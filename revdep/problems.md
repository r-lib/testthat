# bookdown

<details>

* Version: 0.33
* GitHub: https://github.com/rstudio/bookdown
* Source code: https://github.com/cran/bookdown
* Date/Publication: 2023-03-06 23:50:02 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "bookdown")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
      Running ‘test-rmd.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (9)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-bs4_book.R:4:1'): (code run outside of `test_that()`) ──────────
    ...
      Error in `vapply(bs4_book_deps(), skip_if_not_installed, logical(1L), USE.NAMES = FALSE)`: values must be length 1,
       but FUN(X[[1]]) result is length 0
      Backtrace:
          ▆
       1. └─bookdown:::skip_if_bs4_book_deps_missing() at test-bs4_book.R:4:0
       2.   └─base::vapply(...) at tests/testthat/helper-bs4_book.R:4:2
      
      [ FAIL 1 | WARN 0 | SKIP 9 | PASS 57 ]
      Error: Test failures
      Execution halted
    ```

# crosstable

<details>

* Version: 0.6.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2023-04-04 15:50:05 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (35)
      • On Linux (12)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-by_factor.R:290:3'): By multiple errors ──────────────────────
      `.` did not throw the expected error.
      Backtrace:
          ▆
       1. ├─... %>% expect_error(class = "crosstable_all_na_by_warning") at test-by_factor.R:290:2
       2. └─testthat::expect_error(., class = "crosstable_all_na_by_warning")
      
      [ FAIL 1 | WARN 3 | SKIP 47 | PASS 329 ]
      Error: Test failures
      Execution halted
    ```

# curl

<details>

* Version: 5.0.0
* GitHub: https://github.com/jeroen/curl
* Source code: https://github.com/cran/curl
* Date/Publication: 2023-01-12 18:10:01 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "curl")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘intro.Rmd’ using rmarkdown
    Quitting from lines 48-52 (intro.Rmd) 
    Error: processing vignette 'intro.Rmd' failed with diagnostics:
    lexical error: invalid char in json text.
                                           <html>  <head><title>502 Bad Ga
                         (right here) ------^
    
    --- failed re-building ‘intro.Rmd’
    
    --- re-building ‘windows.Rmd’ using rmarkdown
    --- finished re-building ‘windows.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘intro.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘engine.R’
      Comparing ‘engine.Rout’ to ‘engine.Rout.save’ ...4d3
    < Using libcurl 7.68.0 with GnuTLS/3.6.13
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      + }
      This is libcurl version 7.68.0 with GnuTLS/3.6.13 
      Using test server: http://hb.opencpu.org 
    ...
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (3)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-handle.R:130:3'): Custom URL parser ──────────────────────────
      `curl_fetch_memory("httpbin.org/delay/10", handle = h)` did not throw an error.
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 218 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking compiled code ... NOTE
    ```
    File ‘curl/libs/curl.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# extras

<details>

* Version: 0.5.0
* GitHub: https://github.com/poissonconsulting/extras
* Source code: https://github.com/cran/extras
* Date/Publication: 2022-10-30 04:20:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "extras")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-bern.R:47:3'): rbern ───────────────────────────────────────────
      Error in `expect_error(rbern(NA, 1), NA_real_)`: `pattern` must be a single string, `NA`, or `NULL`, not a numeric `NA`.
      Backtrace:
          ▆
       1. └─testthat::expect_error(...) at test-bern.R:47:2
       2.   └─testthat:::expect_condition_matching(...)
       3.     └─testthat:::cnd_matcher(...)
       4.       └─testthat:::check_string(...)
       5.         └─testthat:::stop_input_type(...)
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1002 ]
      Error: Test failures
      Execution halted
    ```

# morpheus

<details>

* Version: 1.0-4
* GitHub: https://github.com/yagu0/morpheus
* Source code: https://github.com/cran/morpheus
* Date/Publication: 2023-02-09 11:20:12 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::cloud_details(, "morpheus")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • empty test (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-optimParams.R:102:5'): W computed in C and in R are the same ───
      Error in `eS$vectors %*% diag(sqrt(pmax(ev, 0)), p) %*% t(X)`: non-conformable arguments
      Backtrace:
          ▆
       1. └─morpheus::generateSampleIO(n, theta$p, theta$beta, theta$b, link) at test-optimParams.R:102:4
       2.   └─MASS::mvrnorm(classes[i], zero_mean, id_sigma)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 314 ]
      Error: Test failures
      Execution halted
    ```

# PKNCA

<details>

* Version: 0.10.1
* GitHub: https://github.com/billdenney/pknca
* Source code: https://github.com/cran/PKNCA
* Date/Publication: 2023-01-11 10:23:28 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "PKNCA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          filter
      
      > 
      > test_check("PKNCA")
      Found column named duration, using it for the attribute of the same name.
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-class-PKNCAdose.R:443:3'): setDuration ───────────────────────
      `expect_error(...)` did not throw the expected warning.
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      Error: Test failures
      Execution halted
    ```

# rlang

<details>

* Version: 1.1.0
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2023-03-14 08:20:06 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        7. └─rlang (local) f(foo)
        8.   └─rlang::check_dots_empty(error = hnd) at test-dots-ellipsis.R:95:7
        9.     └─rlang:::action_dots(...)
       10.       ├─rlang (local) try_dots(...)
       11.       │ └─rlang::try_fetch(expr, error = error)
       12.       │   ├─base::tryCatch(...)
       13.       │   │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       14.       │   │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       15.       │   │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
       16.       │   └─base::withCallingHandlers(...)
       17.       └─rlang (local) action(...)
      
      [ FAIL 1 | WARN 2 | SKIP 249 | PASS 3869 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# tinytiger

<details>

* Version: 0.0.4
* GitHub: https://github.com/alarm-redist/tinytiger
* Source code: https://github.com/cran/tinytiger
* Date/Publication: 2022-08-27 13:40:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::cloud_details(, "tinytiger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-puma.R:2:3'): tt_puma works ────────────────────────────────────
      Error in `value[[3L]](cond)`: HTTP error 503.
      Backtrace:
          ▆
       1. └─tinytiger:::maybe_304(tt_puma("DE")) at test-puma.R:2:2
       2.   └─base::tryCatch(...) at tests/testthat/setup.R:5:2
       3.     └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       4.       └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       5.         └─value[[3L]](cond)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 41 ]
      Error: Test failures
      Execution halted
    ```

