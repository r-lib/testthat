[1m# batata[22m

<details>

* Version: 0.2.1
* GitHub: https://github.com/feddelegrand7/batata
* Source code: https://github.com/cran/batata
* Date/Publication: 2021-03-08 09:50:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "batata")` for more info

</details>

[1m## Newly broken[22m

*   [31mchecking tests ... ERROR[39m
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-display_starred.R:8:3): display_starred() returns a character vector ──
      `output` has type 'NULL', not 'character'.
      ── Failure (test-display_starred.R:14:3): display_starred() returns a vector
                of length superior than 0 ──
      length(output) is not strictly more than 0. Difference: 0
      ── Failure (test-display_starred.R:20:3): display_starred() returns a coherent length ──
      length(output2) not equal to 10.
      1/1 mismatches
      [1] 0 - 10 == -10
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

[1m## In both[22m

*   [31mchecking LazyData ... NOTE[39m
    ```
      'LazyData' is specified without a 'data' directory
    ```

[1m# benthos[22m

<details>

* Version: 1.3-6
* GitHub: NA
* Source code: https://github.com/cran/benthos
* Date/Publication: 2019-03-17 22:43:20 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "benthos")` for more info

</details>

[1m## Newly broken[22m

*   [31mchecking re-building of vignette outputs ... WARNING[39m
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘benthos.Rmd’ using rmarkdown
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    ...
    ℹ The error occurred in group 5: HABITAT = "Polyhaline-Subtidal", YEAR = "2011".
    Caused by error:
    ! `env` must be an environment
    --- failed re-building ‘benthos.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘benthos.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

[1m# cdcfluview[22m

<details>

* Version: 0.9.4
* GitHub: https://github.com/hrbrmstr/cdcfluview
* Source code: https://github.com/cran/cdcfluview
* Date/Publication: 2021-05-22 12:20:02 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "cdcfluview")` for more info

</details>

[1m## Newly broken[22m

*   [31mchecking examples ... ERROR[39m
    ```
    Running examples in ‘cdcfluview-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: hospitalizations
    > ### Title: Laboratory-Confirmed Influenza Hospitalizations
    > ### Aliases: hospitalizations
    > 
    > ### ** Examples
    > 
    > hosp_fs <- hospitalizations("flusurv", years=2015)
    Error in hospitalizations("flusurv", years = 2015) : 
      Internal Server Error (HTTP 500).
    Calls: hospitalizations -> <Anonymous>
    Execution halted
    ```

[1m## In both[22m

*   [31mchecking tests ... ERROR[39m
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      <http_500/http_error/error/condition>
      Error in `geographic_spread(years = 2017)`: Internal Server Error (HTTP 500).
      Backtrace:
          ▆
       1. ├─testthat::expect_that(geographic_spread(years = 2017), is_a("data.frame")) at test-cdcfluview.R:7:2
       2. │ └─testthat condition(object)
       3. │   └─testthat::expect_is(x, class)
       4. │     └─testthat::quasi_label(enquo(object), label, arg = "object")
       5. │       └─rlang::eval_bare(expr, quo_get_env(quo))
       6. └─cdcfluview::geographic_spread(years = 2017)
       7.   └─httr::stop_for_status(res)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

[1m# hetu[22m

<details>

* Version: 1.0.1
* GitHub: https://github.com/ropengov/hetu
* Source code: https://github.com/cran/hetu
* Date/Publication: 2020-10-24 09:10:02 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "hetu")` for more info

</details>

[1m## Newly broken[22m

*   [31mchecking re-building of vignette outputs ... WARNING[39m
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘hetu.Rmd’ using rmarkdown
    Quitting from lines 175-177 (hetu.Rmd) 
    Error: processing vignette 'hetu.Rmd' failed with diagnostics:
    cannot take a sample larger than the population when 'replace = FALSE'
    --- failed re-building ‘hetu.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘hetu.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

[1m# lightgbm[22m

<details>

* Version: 3.3.2
* GitHub: https://github.com/Microsoft/LightGBM
* Source code: https://github.com/cran/lightgbm
* Date/Publication: 2022-01-14 13:12:42 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "lightgbm")` for more info

</details>

[1m## Newly broken[22m

*   [31mchecking tests ... ERROR[39m
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      71. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      72. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      73. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      ══ Failed ══════════════════════════════════════════════════════════════════════
      ── 1. Failure (test_lgb.Booster.R:474:7): Booster$eval() should work on a Datase
      `eval_in_mem` not identical to `eval_from_file`.
      Objects equal but not identical
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

[1m## In both[22m

*   [31mchecking installed package size ... NOTE[39m
    ```
      installed size is 82.4Mb
      sub-directories of 1Mb or more:
        libs  81.8Mb
    ```

