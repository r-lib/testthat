# bayes4psy

<details>

* Version: 1.2.11
* GitHub: https://github.com/bstatcomp/bayes4psy
* Source code: https://github.com/cran/bayes4psy
* Date/Publication: 2023-03-22 20:30:02 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "bayes4psy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      17: test_code(test = NULL, code = exprs, env = env, default_reporter = StopReporter$new())
      18: source_file(path, env(env), wrap = wrap)
      19: FUN(X[[i]], ...)
      20: lapply(test_paths, test_one_file, env = env, wrap = wrap)
      21: doTryCatch(return(expr), name, parentenv, handler)
      22: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      23: tryCatchList(expr, classes, parentenv, handlers)
      24: tryCatch(code, testthat_abort_reporter = function(cnd) {    cat(conditionMessage(cnd), "\n")    NULL})
      25: with_reporter(reporters$multi, lapply(test_paths, test_one_file,     env = env, wrap = wrap))
      26: test_files_serial(test_dir = test_dir, test_package = test_package,     test_paths = test_paths, load_helpers = load_helpers, reporter = reporter,     env = env, stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package)
      27: test_files(test_dir = path, test_paths = test_paths, test_package = package,     reporter = reporter, load_helpers = load_helpers, env = env,     stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package, parallel = parallel)
      28: test_dir("testthat", package = package, reporter = reporter,     ..., load_package = "installed")
      29: test_check("bayes4psy")
      An irrecoverable exception occurred. R is aborting now ...
      Segmentation fault (core dumped)
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 156.3Mb
      sub-directories of 1Mb or more:
        libs  154.2Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# covidcast

<details>

* Version: 0.5.0
* GitHub: https://github.com/cmu-delphi/covidcast
* Source code: https://github.com/cran/covidcast
* Date/Publication: 2023-06-01 20:10:02 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::cloud_details(, "covidcast")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘correlation-utils.Rmd’ using rmarkdown
    --- finished re-building ‘correlation-utils.Rmd’
    
    --- re-building ‘covidcast.Rmd’ using rmarkdown
    --- finished re-building ‘covidcast.Rmd’
    
    --- re-building ‘external-data.Rmd’ using rmarkdown
    --- finished re-building ‘external-data.Rmd’
    
    ...
    ℹ In index: 1.
    Caused by error in `match.arg()`:
    ! 'arg' should be one of "day", "week"
    --- failed re-building ‘plotting-signals.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘multi-signals.Rmd’ ‘plotting-signals.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# xpose

<details>

* Version: 0.4.16
* GitHub: https://github.com/UUPharmacometrics/xpose
* Source code: https://github.com/cran/xpose
* Date/Publication: 2023-04-18 20:50:02 UTC
* Number of recursive dependencies: 109

Run `revdepcheck::cloud_details(, "xpose")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │     ├─purrr:::with_indexed_errors(...)
        5. │     │ └─base::withCallingHandlers(...)
        6. │     ├─purrr:::call_with_cleanup(...)
        7. │     └─xpose (local) .f(.x[[i]], ...)
        8. │       └─base::do.call(...) at tests/testthat/helper-test_that_for_all.R:20:6
        9. ├─testthat (local) `<fn>`(...)
       10. │ └─base::new.env(parent = env)
       11. └─base::.handleSimpleError(...)
       12.   └─purrr (local) h(simpleError(msg, call))
       13.     └─cli::cli_abort(...)
       14.       └─rlang::abort(...)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 380 ]
      Error: Test failures
      Execution halted
    ```

