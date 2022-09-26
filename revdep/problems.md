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
      Test passed 😸
      [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
      Error in teardown_env() : `teardown_env()` has not been initialized
      ℹ This is an internal error that was detected in the testthat package.
        Please report it at <https://github.com/r-lib/testthat/issues> with a reprex (<https://https://tidyverse.org/help/>) and the full backtrace.
      Calls: test_check ... test_dir -> test_files -> test_files_serial -> <Anonymous>
      Execution halted
    ```

# lightgbm

<details>

* Version: 3.3.2
* GitHub: https://github.com/Microsoft/LightGBM
* Source code: https://github.com/cran/lightgbm
* Date/Publication: 2022-01-14 13:12:42 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "lightgbm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      71. Feature penalties work properly ('test_parameters.R:14') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      72. Feature penalties work properly ('test_parameters.R:14') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      73. Feature penalties work properly ('test_parameters.R:14') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      ══ Failed ══════════════════════════════════════════════════════════════════════
      ── 1. Failure ('test_lgb.Booster.R:474'): Booster$eval() should work on a Datase
      `eval_in_mem` not identical to `eval_from_file`.
      Objects equal but not identical
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 82.4Mb
      sub-directories of 1Mb or more:
        libs  81.8Mb
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
      3/3 mismatches (average diff: 0.0235)
      [1] 583.6 - 583.5 ==  0.06607
      [2]  33.3 -  33.3 == -0.00220
      [3] 657.2 - 657.2 == -0.00231
      
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
    
    tlmgr: Local TeX Live (2021) is older than remote repository (2022).
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

