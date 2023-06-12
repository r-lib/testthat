# appler

<details>

* Version: 0.2.0
* GitHub: https://github.com/ashbaldry/appler
* Source code: https://github.com/cran/appler
* Date/Publication: 2023-02-02 20:00:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "appler")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘introduction.Rmd’ using rmarkdown
    
    Quitting from lines 86-88 [lookup] (introduction.Rmd)
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    Service Unavailable (HTTP 503).
    --- failed re-building ‘introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# batata

<details>

* Version: 0.2.1
* GitHub: https://github.com/feddelegrand7/batata
* Source code: https://github.com/cran/batata
* Date/Publication: 2021-03-08 09:50:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "batata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-display_starred.R:8:3'): display_starred() returns a character vector ──
      `output` has type 'NULL', not 'character'.
      ── Failure ('test-display_starred.R:14:3'): display_starred() returns a vector
                of length superior than 0 ──
      length(output) is not strictly more than 0. Difference: 0
      ── Failure ('test-display_starred.R:20:3'): display_starred() returns a coherent length ──
      length(output2) not equal to 10.
      1/1 mismatches
      [1] 0 - 10 == -10
      
      [ FAIL 3 | WARN 2 | SKIP 1 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

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

# paws.common

<details>

* Version: 0.5.6
* GitHub: NA
* Source code: https://github.com/cran/paws.common
* Date/Publication: 2023-03-06 12:20:02 UTC
* Number of recursive dependencies: 46

Run `revdepcheck::cloud_details(, "paws.common")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1/1 mismatches
      x[1]: "qQ9YF6l[2/\\_Q:7M'[KJyfY4]5H4sChI\"V6,GD(*28\"%7o0UdiC)FCeJm?HISuy?1XQ6&D
      x[1]: 4cKlJcBp-)S~'Od<f`)N<<t(8$SIe(&1r$x73|.0R=3ctS 0idH'g([AZuBp%]TcEiz:g+I#OJ
      x[1]: +vp{Vo7{J^nTXu\"77|3'Ps+>z!cq-,&LUEr401#AnM%N2 ZYA^$a'OX<K'7?!662fe=:`l4\v
      x[1]: Yktbz_AZ/lN/&~UqDJ{'#NJ3s#}tVs?yN?_#u$FGF2[]DT(!#zU[~ :XxP&pe ,?!va{bLA}AP
      x[1]: cDAa;$/{{W5e5S@e/1Eu4!XA{U^)@Ui\":\x8fnTfP}[Tg'[-;.QjpvF~c<`R3%#;_=%-~`...
      y[1]: "qQ9YF6l[2/\\_Q:7M'[KJyfY4]5H4sChI\"V6,GD(*28\"%7o0UdiC)FCeJm?HISuy?1XQ6&D
      y[1]: 4cKlJcBp-)S~'Od<f`)N<<t(8$SIe(&1r$x73|.0R=3ctS 0idH'g([AZuBp%]TcEiz:g+I#OJ
      y[1]: +vp{Vo7{J^nTXu\"77|3'Ps+>z!cq-,&LUEr401#AnM%N2 ZYA^$a'OX<K'7?!662fe=:`l4%0
      y[1]: BYktbz_AZ/lN/&~UqDJ{'#NJ3s#}tVs?yN?_#u$FGF2[]DT(!#zU[~ :XxP&pe ,?!va{bLA}A
      y[1]: PcDAa;$/{{W5e5S@e/1Eu4!XA{U^)@Ui\":%8FnTfP}[Tg'[-;.QjpvF~c<`R3%#;_=%-~`...
      
      [ FAIL 1 | WARN 0 | SKIP 9 | PASS 741 ]
      Error: Test failures
      Execution halted
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

