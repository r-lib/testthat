# batata

<details>

* Version: 0.2.1
* GitHub: https://github.com/feddelegrand7/batata
* Source code: https://github.com/cran/batata
* Date/Publication: 2021-03-08 09:50:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "batata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-display_starred.R:8'): display_starred() returns a character vector ──
      `output` has type 'NULL', not 'character'.
      ── Failure ('test-display_starred.R:14'): display_starred() returns a vector
                of length superior than 0 ──
      length(output) is not strictly more than 0. Difference: 0
      ── Failure ('test-display_starred.R:20'): display_starred() returns a coherent length ──
      length(output2) not equal to 10.
      1/1 mismatches
      [1] 0 - 10 == -10
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# brew

<details>

* Version: 1.0-7
* GitHub: NA
* Source code: https://github.com/cran/brew
* Date/Publication: 2022-02-04 11:50:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "brew")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-brew.R’
      Running ‘test-error.R’
    Running the tests in ‘tests/test-error.R’ failed.
    Last 13 lines of output:
      <rlib_error_3_0/rlib_error/error/condition>
      Error in `"lapply(text, glue_cmd, .envir = .envir)"`: ! Could not parse cli `{}` expression: ` anotherStackLay…`.
      Caused by error in `parse(text = code, keep.source = FALSE)`:
      ! <text>:1:176: unexpected symbol
      1:     anotherStackLayer <- function() {        yetAnotherStackLayer <- function() {            brew("error.brew", envir = new.env(), extendedErrorReport = TRUE)        }        yetAnotherStackLa
                                                                                                                                                                                         ^
      Backtrace:
        1. testthat::expect_snapshot(anotherStackLayer(), variant = "extraStackLayers")
       25. base::.handleSimpleError(...)
       26. h(simpleError(msg, call))
       27. throw_error(err, parent = e)
      
      Error in reporter$stop_if_needed() : Test failed
      Calls: test_that -> <Anonymous>
      Execution halted
    ```

# freshr

<details>

* Version: 1.0.1
* GitHub: https://github.com/shawnlinxl/freshr
* Source code: https://github.com/cran/freshr
* Date/Publication: 2022-08-27 08:22:37 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "freshr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
      > 
      > library(testthat)
      > library(freshr)
      > 
      > test_check("freshr")
      Test passed 😀
      [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
      Error in teardown_env() : `teardown_env()` has not been initialized
      ℹ This is an internal error that was detected in the testthat package.
        Please report it at <https://github.com/r-lib/testthat/issues> with a reprex (<https://https://tidyverse.org/help/>) and the full backtrace.
      Calls: test_check ... test_dir -> test_files -> test_files_serial -> <Anonymous>
      Execution halted
    ```

# log4r

<details>

* Version: 0.4.2
* GitHub: https://github.com/johnmyleswhite/log4r
* Source code: https://github.com/cran/log4r
* Date/Publication: 2021-11-04 05:20:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "log4r")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘run-all.R’
    Running the tests in ‘tests/run-all.R’ failed.
    Last 13 lines of output:
      Backtrace:
          ▆
       1. ├─testthat::expect_silent(appender("INFO", "Message")) at test-appenders.R:20:2
       2. │ └─testthat:::quasi_capture(enquo(object), NULL, evaluate_promise)
       3. │   ├─testthat (local) .capture(...)
       4. │   │ ├─withr::with_output_sink(...)
       5. │   │ │ └─base::force(code)
       6. │   │ ├─base::withCallingHandlers(...)
       7. │   │ └─base::withVisible(code)
       8. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       9. └─log4r (local) appender("INFO", "Message")
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 81 ]
      Error: Test failures
      Execution halted
    ```

# r2dii.plot

<details>

* Version: 0.3.0
* GitHub: https://github.com/2DegreesInvesting/r2dii.plot
* Source code: https://github.com/cran/r2dii.plot
* Date/Publication: 2022-05-05 23:20:10 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "r2dii.plot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `plot_techmix(example_tech_mix())` did not generate error with class 'warning'
      Backtrace:
          ▆
       1. └─testthat::expect_snapshot_error(...) at test-plot_techmix.R:296:2
       2.   └─testthat:::expect_snapshot_condition(...)
      ── Failure ('test-plot_trajectory.R:204'): throws expected warning about API change ──
      `plot_trajectory(example_market_share())` did not generate error with class 'warning'
      Backtrace:
          ▆
       1. └─testthat::expect_snapshot_error(...) at test-plot_trajectory.R:204:2
       2.   └─testthat:::expect_snapshot_condition(...)
      
      [ FAIL 3 | WARN 3 | SKIP 43 | PASS 103 ]
      Error: Test failures
      Execution halted
    ```

# reprex

<details>

* Version: 2.0.2
* GitHub: https://github.com/tidyverse/reprex
* Source code: https://github.com/cran/reprex
* Date/Publication: 2022-08-17 07:40:05 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "reprex")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (65)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-utils-io.R:16'): retrofit_files() works ──────────────────────
      `x <- retrofit_files(wd = "this", outfile = "that")` did not generate warning
      Backtrace:
          ▆
       1. └─testthat::expect_snapshot_warning(...) at test-utils-io.R:16:2
       2.   └─testthat:::expect_snapshot_condition(...)
      
      [ FAIL 1 | WARN 1 | SKIP 65 | PASS 63 ]
      Error: Test failures
      Execution halted
    ```

# WeMix

<details>

* Version: 3.2.2
* GitHub: https://github.com/American-Institutes-for-Research/WeMix
* Source code: https://github.com/cran/WeMix
* Date/Publication: 2022-09-23 16:40:02 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "WeMix")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat_tests.R’
    Running the tests in ‘tests/testthat_tests.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
      • On CRAN (12)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
      ── Failure ('test-1-main.R:111'): Agrees with lme4 3,handles missing data ──────
      unname(wm2$vars) not equal to unname(lmewm2vars)^2.
      3/3 mismatches (average diff: 0.0369)
      [1] 582.9 - 583.0 == -0.101022
      [2]  33.8 -  33.8 ==  0.000533
      [3] 656.5 - 656.5 ==  0.009146
      
      [ FAIL 1 | WARN 0 | SKIP 12 | PASS 89 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Introduction_to_Mixed_Effects_Models_With_WeMix.Rmd’ using rmarkdown
    A new version of TeX Live has been released. If you need to install or update any LaTeX packages, you have to upgrade TinyTeX with tinytex::reinstall_tinytex(repository = "illinois").
    
    tlmgr: Local TeX Live (2021) is older than remote repository (2022).
    Cross release updates are only supported with
      update-tlmgr-latest(.sh/.exe) --update
    See https://tug.org/texlive/upgrade.html for details.
    Warning in system2("tlmgr", args, ...) :
      running command ''tlmgr' search --file --global '/colortbl.sty'' had status 1
    ...
    Error: processing vignette 'Weighted_Linear_Mixed_Effects_Models.Rmd' failed with diagnostics:
    LaTeX failed to compile /tmp/workdir/WeMix/new/WeMix.Rcheck/vign_test/WeMix/vignettes/Weighted_Linear_Mixed_Effects_Models.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Weighted_Linear_Mixed_Effects_Models.log for more info.
    --- failed re-building ‘Weighted_Linear_Mixed_Effects_Models.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Introduction_to_Mixed_Effects_Models_With_WeMix.Rmd’
      ‘Weighted_Linear_Mixed_Effects_Models.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

