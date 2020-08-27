# bayesCT

<details>

* Version: 0.99.3
* Source code: https://github.com/cran/bayesCT
* URL: https://github.com/thevaachandereng/bayesCT/
* BugReports: https://github.com/thevaachandereng/bayesCT/issues/
* Date/Publication: 2020-07-01 09:30:02 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "bayesCT")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │   │ ├─testthat:::.capture(...)
        5. │   │ │ └─base::withCallingHandlers(...)
        6. │   │ └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. │   └─testthat:::cnd_matcher(class %||% base_class, regexp, ...)
        8. ├─bayesCT::pw_exp_impute(time = 0.1, hazard = 0.02, cutpoint = 10)
        9. │ └─base::stop("cutpoint needs to be null if length of hazard is 1!")
       10. └─base::.handleSimpleError(...)
       11.   └─testthat:::h(simpleError(msg, call))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_pw_exp.R:25:3): The piecewise exponential impute are
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 72 ]
      Error: Test failures
      Execution halted
    ```

# crayon

<details>

* Version: 1.3.4
* Source code: https://github.com/cran/crayon
* URL: https://github.com/r-lib/crayon#readme
* BugReports: https://github.com/r-lib/crayon/issues
* Date/Publication: 2017-09-16 19:49:46 UTC
* Number of recursive dependencies: 24

Run `cloud_details(, "crayon")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1m[41mFailure[49m (test-has-color.r:64:3): closure based memoization works[22m
      [1m[41mFailure[49m (test-has-color.r:69:3): closure based memoization works[22m
      [1m[41mFailure[49m (test-vectors.r:13:3): Coloring and highlighting works[22m
      [1m[41mFailure[49m (test-vectors.r:15:3): Coloring and highlighting works[22m
      [1m[41mFailure[49m (test-vectors.r:17:3): Coloring and highlighting works[22m
      [1m[41mFailure[49m (test-vectors.r:24:3): Applying multiple styles at once works[22m
      [1m[41mFailure[49m (test-vectors.r:27:3): Applying multiple styles at once works[22m
      [1m[41mFailure[49m (test-vectors.r:34:3): Nested styles are supported[22m
      [1m[41mFailure[49m (test-vectors.r:45:3): Nested styles of the same type are supported[22m
      [1m[41mFailure[49m (test-vectors.r:53:3): Reset all styles[22m
      [1m[41mFailure[49m (test-vectors.r:60:3): Variable number of arguments[22m
      
      [ [41mFAIL[49m 23 | [45mWARN[49m 0 | [44mSKIP[49m 2 | [42mPASS[49m 523 ]
      Error: Test failures
      Execution halted
    ```

# diffobj

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/diffobj
* URL: https://github.com/brodieG/diffobj
* BugReports: https://github.com/brodieG/diffobj/issues
* Date/Publication: 2020-05-11 11:20:03 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "diffobj")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘run.R’
    Running the tests in ‘tests/run.R’ failed.
    Last 13 lines of output:
        8. diffobj::diffStr(a, b, extra = list(indent = "..."))
        9. diffobj:::.local(target, current, ...)
       10. diffobj:::capt_fun(...)
       11. base::match.call(...)
      ────────────────────────────────────────────────────────────────────────────────
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 36.2 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● empty test (3)
      
      [ FAIL 3 | WARN 8 | SKIP 3 | PASS 602 ]
      Error: Test failures
      Execution halted
    ```

# mlr3pipelines

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/mlr3pipelines
* URL: https://mlr3pipelines.mlr-org.com, https://github.com/mlr-org/mlr3pipelines
* BugReports: https://github.com/mlr-org/mlr3pipelines/issues
* Date/Publication: 2020-08-18 07:40:02 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "mlr3pipelines")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test_Graph.R:233:3): assert_graph test
      FAILURE (test_Graph.R:233:3): assert_graph test
      FAILURE (test_Graph.R:233:3): assert_graph test
      FAILURE (test_Graph.R:233:3): assert_graph test
      Warning (test_graphlearner.R:281:3): graphlearner predict type inference
      Warning (test_graphlearner.R:283:3): graphlearner predict type inference
      Warning (test_graphlearner.R:301:3): graphlearner predict type inference
      Warning (test_graphlearner.R:303:3): graphlearner predict type inference
      Warning (test_graphlearner.R:334:3): graphlearner predict type inference
      Warning (test_graphlearner.R:354:3): graphlearner predict type inference
      Warning (test_multichannels.R:192:3): vararg passes args through as it should
      
      [ FAIL 66 | WARN 7 | SKIP 67 | PASS 9888 ]
      Error: Test failures
      Execution halted
    ```

# Morpho

<details>

* Version: 2.8
* Source code: https://github.com/cran/Morpho
* URL: https://github.com/zarquon42b/Morpho
* BugReports: https://github.com/zarquon42b/Morpho/issues
* Date/Publication: 2020-03-09 13:30:10 UTC
* Number of recursive dependencies: 108

Run `cloud_details(, "Morpho")` for more info

</details>

## Newly broken

*   checking whether package ‘Morpho’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/Morpho/new/Morpho.Rcheck/00install.out’ for details.
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.3Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        libs  12.7Mb
    ```

# patrick

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/patrick
* Date/Publication: 2018-08-13 14:10:03 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "patrick")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      -- FAILURE (test-with_parameters.R:21:7): Running tests: fail ------------------
      exp\$message does not match "`case` isn't true".
      Actual value: "`case` is not TRUE\\n\\n`actual`:   FALSE\\n`expected`: TRUE "
      
      -- FAILURE (test-with_parameters.R:21:7): Running tests: null ------------------
      exp\$message does not match "`case` isn't true".
      Actual value: "`case` is not TRUE\\n\\n`actual` is NULL\\n`expected` is a logical vector \(TRUE\)"
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-with_parameters.R:21:7): Running tests: fail
      FAILURE (test-with_parameters.R:21:7): Running tests: null
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
    ```

# revdbayes

<details>

* Version: 1.3.7
* Source code: https://github.com/cran/revdbayes
* URL: https://paulnorthrop.github.io/revdbayes/, http://github.com/paulnorthrop/revdbayes
* BugReports: http://github.com/paulnorthrop/revdbayes/issues
* Date/Publication: 2020-06-26 18:20:02 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "revdbayes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Backtrace:
          █
       1. └─revdbayes:::test_function(x, test_string) test-bingp.R:37:2
       2.   └─testthat::test_that(...) test-bingp.R:22:2
       3.     └─testthat:::test_code(desc, code, env = parent.frame(), reporter = reporter)
       4.       └─reporter$start_test(context = reporter$.context, test = test)
       5.         └─testthat:::o_apply(self$reporters, "start_test", context, test)
       6.           └─base::lapply(objects, f)
       7.             └─testthat:::FUN(X[[i]], ...)
       8.               └─x$start_test(...)
      
      Error in self$old_snaps[[self$test]] : no such index at level 1
      Calls: test_check ... <Anonymous> -> o_apply -> lapply -> FUN -> <Anonymous>
      Execution halted
    ```

# simukde

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/simukde
* URL: https://github.com/galaamn/simukde
* BugReports: https://github.com/galaamn/simukde/issues
* Date/Publication: 2018-10-07 06:40:02 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "simukde")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       7. └─simukde::simulate_kde(x = x, n = n, seed = "seed")
       8.   └─base::set.seed(seed)
      
      -- Skip (test-simulate_kde.R:107:3): parallel computing ------------------------
      Reason: Please run some tests manually for parallel computing.
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● Please run some tests manually for parallel computing. (1)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-simulate_kde.R:101:3): non-parallel computing
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 67 ]
      Error: Test failures
      Execution halted
    ```

# skimr

<details>

* Version: 2.1.2
* Source code: https://github.com/cran/skimr
* URL: https://docs.ropensci.org/skimr (website), https://github.com/ropensci/skimr
* BugReports: https://github.com/ropensci/skimr/issues
* Date/Publication: 2020-07-06 05:10:03 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "skimr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test-skim_print.R:112:3): Print focused objects appropriately
      FAILURE (test-skim_print.R:118:3): Metadata is stripped from smaller consoles
      FAILURE (test-skim_print.R:142:3): skimr creates appropriate output for Jupyter
      FAILURE (test-skim_print.R:148:3): Metadata can be included: print
      FAILURE (test-skim_print.R:155:3): Metadata can be included: option
      FAILURE (test-skim_tee.R:5:3): Using skim_tee prints returns the object
      FAILURE (test-skim_tee.R:13:3): skim_tee prints only selected columns, but returns full object
      FAILURE (test-skim_tee.R:21:3): skim_tee supports dplyr helpers
      FAILURE (test-skim_tee.R:31:3): Skim_tee works with groups
      FAILURE (test-summary.R:19:3): The summary print method prints the correct object
      FAILURE (test-summary.R:32:3): The summary print method prints the correct object when piped
      
      [ FAIL 22 | WARN 0 | SKIP 1 | PASS 581 ]
      Error: Test failures
      Execution halted
    ```

# sse

<details>

* Version: 0.7-16
* Source code: https://github.com/cran/sse
* URL: http://r-forge.r-project.org/projects/power/
* BugReports: http://r-forge.r-project.org/projects/power/
* Date/Publication: 2020-02-17 21:40:02 UTC
* Number of recursive dependencies: 25

Run `cloud_details(, "sse")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Range of power observed:
           Min:  0.04 
           Max:  0.48 
      
      Example: Sample size evaluation for:
                 theta: 0.1
                 power: 0.9
         drop out rate: 0
      *------------------------------------------------*
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-standard.R:304:3): refine
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 54 ]
      Error: Test failures
      Execution halted
    ```

# stemmatology

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/stemmatology
* URL: https://github.com/Jean-Baptiste-Camps/stemmatology
* BugReports: https://github.com/Jean-Baptiste-Camps/stemmatology/issues
* Date/Publication: 2019-04-10 15:52:51 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "stemmatology")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      -- Skip (test-PCC.conflicts.R:127:3): PCC.conflicts correct output on Fournival 
      Reason: On CRAN
      
      -- Skip (test-PCC.equipollent.R:5:3): yields correct output on (cleaned) fourniv
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (4)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-PCC.Stemma.R:72:3): PCC.Stemma works properly when no group can be built
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 90 ]
      Error: Test failures
      Execution halted
    ```

# tibble

<details>

* Version: 3.0.3
* Source code: https://github.com/cran/tibble
* URL: https://tibble.tidyverse.org/, https://github.com/tidyverse/tibble
* BugReports: https://github.com/tidyverse/tibble/issues
* Date/Publication: 2020-07-10 20:40:03 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test-zzz-trunc-mat.R:55:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:70:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:75:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:85:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:90:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:100:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:105:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:110:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:119:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:124:3): trunc_mat output matches known output
      FAILURE (test-zzz-trunc-mat.R:141:3): trunc_mat for POSIXlt columns (#86)
      
      [ FAIL 28 | WARN 12 | SKIP 108 | PASS 1386 ]
      Error: Test failures
      Execution halted
    ```

