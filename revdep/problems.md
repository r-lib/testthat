# analogueExtra

<details>

* Version: 0.1-1
* Source code: https://github.com/cran/analogueExtra
* URL: https://github.com/gavinsimpson/analogueExtra
* BugReports: https://github.com/gavinsimpson/analogueExtra/issues
* Date/Publication: 2016-04-10 00:27:48
* Number of recursive dependencies: 67

Run `cloud_details(, "analogueExtra")` for more info

</details>

## Newly broken

*   checking whether package ‘analogueExtra’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/analogueExtra/new/analogueExtra.Rcheck/00install.out’ for details.
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
      [33mFailure[39m (test-has-color.r:64:3): closure based memoization works
      [33mFailure[39m (test-has-color.r:69:3): closure based memoization works
      [33mFailure[39m (test-vectors.r:13:3): Coloring and highlighting works
      [33mFailure[39m (test-vectors.r:15:3): Coloring and highlighting works
      [33mFailure[39m (test-vectors.r:17:3): Coloring and highlighting works
      [33mFailure[39m (test-vectors.r:24:3): Applying multiple styles at once works
      [33mFailure[39m (test-vectors.r:27:3): Applying multiple styles at once works
      [33mFailure[39m (test-vectors.r:34:3): Nested styles are supported
      [33mFailure[39m (test-vectors.r:45:3): Nested styles of the same type are supported
      [33mFailure[39m (test-vectors.r:53:3): Reset all styles
      [33mFailure[39m (test-vectors.r:60:3): Variable number of arguments
      
      [ [33mFAIL[39m 23 | [35mWARN[39m 0 | [34mSKIP[39m 2 | [32mPASS[39m 523 ]
      Error: Test failures
      Execution halted
    ```

# DiceKriging

<details>

* Version: 1.5.6
* Source code: https://github.com/cran/DiceKriging
* URL: https://dicekrigingclub.github.io/www/
* Date/Publication: 2018-10-08 10:50:13 UTC
* Number of recursive dependencies: 30

Run `cloud_details(, "DiceKriging")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Backtrace:
          █
       1. └─DiceKriging:::test_that.km(...) test-km.R:43:0
       2.   └─testthat::test_that(...) test-km.R:17:4
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
      Duration: 38.7 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● empty test (3)
      
      [ FAIL 3 | WARN 8 | SKIP 3 | PASS 602 ]
      Error: Test failures
      Execution halted
    ```

# fgeo.analyze

<details>

* Version: 1.1.13
* Source code: https://github.com/cran/fgeo.analyze
* URL: https://github.com/forestgeo/fgeo.analyze
* BugReports: https://github.com/forestgeo/fgeo.analyze/issues
* Date/Publication: 2020-03-23 14:50:05 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "fgeo.analyze")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test-byyr.R:35:3): basal_area_byyr and abundance_byyr fail with informative errors
      FAILURE (test-byyr.R:38:3): basal_area_byyr and abundance_byyr fail with informative errors
      Warning (test-byyr.R:40:3): basal_area_byyr and abundance_byyr fail with informative errors
      Warning (test-byyr.R:41:3): basal_area_byyr and abundance_byyr fail with informative errors
      Warning (test-byyr.R:42:3): basal_area_byyr and abundance_byyr fail with informative errors
      Warning (test-byyr.R:127:5): abundance_byyr and basa_area_byyr return expected output: outputs basal area multiplied by the abundance
      Warning (test-fgeo_topography.R:130:3): warns if input to eleve is unexpected
      Warning (test-fgeo_topography.R:130:3): warns if input to eleve is unexpected
      Warning (test-tt_test.R:97:3): tt_test fails gracefully with bad input
      Warning (test-tt_test.R:97:3): tt_test fails gracefully with bad input
      Warning (test-tt_test.R:97:3): tt_test fails gracefully with bad input
      
      [ FAIL 4 | WARN 15 | SKIP 14 | PASS 303 ]
      Error: Test failures
      Execution halted
    ```

# ggdag

<details>

* Version: 0.2.2
* Source code: https://github.com/cran/ggdag
* URL: https://github.com/malcolmbarrett/ggdag
* BugReports: https://github.com/malcolmbarrett/ggdag/issues
* Date/Publication: 2020-02-13 05:20:02 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "ggdag")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    ✖ Column `v` doesn't exist.
    Backtrace:
         █
      1. └─ggdag::ggdag(dagitty::randomDAG(5, 0.5))
      2.   ├─`%>%`(...)
      3.   │ └─base::eval(lhs, parent, parent)
      4.   │   └─base::eval(lhs, parent, parent)
      5.   └─ggdag:::if_not_tidy_daggity(.tdy_dag, ...)
      6.     └─ggdag::tidy_dagitty(.dagitty, ...)
      7.       └─`%>%`(...)
      8.         ├─base::withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))
      9.         └─base::eval(quote(`_fseq`(`_lhs`)), env, env)
     10.           └─base::eval(quote(`_fseq`(`_lhs`)), env, env)
     11.             └─ggdag:::`_fseq`(`_lhs`)
     12.               └─magrittr::freduce(value, `_function_list`)
     13.                 └─function_list[[i]](value)
     14.                   ├─dplyr::select(., v, w)
     15.                   └─dplyr:::select.data.frame(., v, w)
     16.                     └─tidyselect::eval_select(expr(c(...)), .data)
     17.                      
    Execution halted
    ```

# HandTill2001

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/HandTill2001
* URL: https://gitlab.com/fvafrCU/HandTill2001
* Date/Publication: 2019-12-19 17:30:05 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "HandTill2001")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘runit.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │   │ ├─testthat:::.capture(...)
        5. │   │ │ └─base::withCallingHandlers(...)
        6. │   │ └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. │   └─testthat:::cnd_matcher(class %||% base_class, regexp, ...)
        8. ├─HandTill2001:::throw(string)
        9. │ └─base::stop(condition)
       10. └─(function (cnd) ...
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-classes.R:376:3): extraneous response levels
      ERROR (test-throw.R:5:3): throw the HandTill2001 exception
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ROCR’, ‘caTools’
    ```

# httptest

<details>

* Version: 3.3.0
* Source code: https://github.com/cran/httptest
* URL: https://enpiar.com/r/httptest, https://github.com/nealrichardson/httptest
* BugReports: https://github.com/nealrichardson/httptest/issues
* Date/Publication: 2020-01-28 21:40:02 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "httptest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test-expect-header.R:12:13): expect_header with fake HTTP
      Warning (test-expect-header.R:15:13): expect_header with fake HTTP
      Warning (test-expect-header.R:15:13): expect_header with fake HTTP
      Warning (test-expect-header.R:26:13): expect_header with mock API
      Warning (test-expect-header.R:29:13): expect_header with mock API
      Warning (test-expect-header.R:32:13): expect_header with mock API
      Warning (test-expect-header.R:32:13): expect_header with mock API
      ERROR (test-expect-header.R:32:13): expect_header with mock API
      Warning (test-expect-header.R:40:13): expect_header ignore.case
      Warning (test-expect-header.R:52:13): expect_header without_internet
      ERROR (test-without-internet.R:52:13): max.print option
      
      [ FAIL 2 | WARN 10 | SKIP 9 | PASS 268 ]
      Error: Test failures
      Execution halted
    ```

# IBCF.MTME

<details>

* Version: 1.6-0
* Source code: https://github.com/cran/IBCF.MTME
* URL: https://github.com/frahik/IBCF.MTME
* BugReports: https://github.com/frahik/IBCF.MTME/issues/new
* Date/Publication: 2019-03-23 05:18:07 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "IBCF.MTME")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test.R:132:3): IBCF Test - With RP for 3 Envs without Traits
      Warning (test.R:132:3): IBCF Test - With RP for 3 Envs without Traits
      Warning (test.R:157:3): IBCF Test - With RP for 4 Traits without Env
      Warning (test.R:157:3): IBCF Test - With RP for 4 Traits without Env
      Warning (test.R:181:3): IBCFY function
      Warning (test.R:183:3): IBCFY function
      FAILURE (test.R:184:3): IBCFY function
      FAILURE (test.R:185:3): IBCFY function
      Warning (test.R:208:3): IBCFY function one Trait for test
      Warning (test.R:231:3): IBCFY function for one year and one trait
      Warning (test.R:254:3): IBCFY function with Wheat_IBCF Training
      
      [ FAIL 4 | WARN 19 | SKIP 0 | PASS 121 ]
      Error: Test failures
      Execution halted
    ```

# ivdoctr

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/ivdoctr
* BugReports: https://github.com/emallickhossain/ivdoctr/issues
* Date/Publication: 2020-07-03 11:00:09 UTC
* Number of recursive dependencies: 111

Run `cloud_details(, "ivdoctr")` for more info

</details>

## Newly broken

*   checking whether package ‘ivdoctr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/ivdoctr/new/ivdoctr.Rcheck/00install.out’ for details.
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 58 marked UTF-8 strings
    ```

# lme4

<details>

* Version: 1.1-23
* Source code: https://github.com/cran/lme4
* URL: https://github.com/lme4/lme4/
* BugReports: https://github.com/lme4/lme4/issues
* Date/Publication: 2020-04-07 10:00:21 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "lme4")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘AAAtest-all.R’
    Running the tests in ‘tests/AAAtest-all.R’ failed.
    Last 13 lines of output:
      ERROR (???): na_exclude
      ERROR (???): start_vals
      ERROR (test-oldRZXfailure.R:10:3): RZX is being calculated properly
      ERROR (test-predict.R:253:5): only look for columns that exist in re.form
      ERROR (test-predict.R:293:5): simulation works with non-factor
      ERROR (test-predict.R:304:1): (code run outside of `test_that()`)
      ERROR (test-ranef.R:10:1): (code run outside of `test_that()`)
      ERROR (test-rank.R:60:5): glmerRank
      ERROR (test-resids.R:32:5): glmer
      ERROR (test-start.R:48:5): glmer
      ERROR (test-stepHalving.R:9:3): Step-halving works properly
      
      [ FAIL 21 | WARN 30 | SKIP 0 | PASS 639 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 28.6Mb
      sub-directories of 1Mb or more:
        R          1.4Mb
        doc        2.4Mb
        libs      22.1Mb
        testdata   1.6Mb
    ```

# mcmcr

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/mcmcr
* URL: https://github.com/poissonconsulting/mcmcr
* BugReports: https://github.com/poissonconsulting/mcmcr/issues
* Date/Publication: 2020-07-13 18:10:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "mcmcr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Attributes: < Component "row.names": Modes: numeric, character >
      Attributes: < Component "row.names": target is numeric, current is character >
      
      -- FAILURE (test-ess.R:23:3): ess.mcmcr as df ----------------------------------
      ess(mcmcr_example, as_df = TRUE, by = "parameter") not identical to structure(...).
      Attributes: < Component "row.names": Modes: numeric, character >
      Attributes: < Component "row.names": target is numeric, current is character >
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-converged.R:11:3): converged.mcmcr
      FAILURE (test-ess.R:23:3): ess.mcmcr as df
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 411 ]
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

# modelbased

<details>

* Version: 0.1.2
* Source code: https://github.com/cran/modelbased
* URL: https://github.com/easystats/modelbased
* BugReports: https://github.com/easystats/modelbased/issues
* Date/Publication: 2020-03-12 06:00:03 UTC
* Number of recursive dependencies: 164

Run `cloud_details(, "modelbased")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test-estimate_means.R:11:5): estimate_means
      Warning (test-estimate_means.R:11:5): estimate_means
      Warning (test-estimate_means.R:15:5): estimate_means
      Warning (test-estimate_means.R:15:5): estimate_means
      Warning (test-estimate_means.R:15:5): estimate_means
      Warning (test-estimate_response.R:19:5): estimate_response - Bayesian
      Warning (test-estimate_response.R:19:5): estimate_response - Bayesian
      Warning (test-estimate_response.R:19:5): estimate_response - Bayesian
      Warning (test-estimate_response.R:33:5): estimate_response - Frequentist
      Warning (test-estimate_response.R:36:5): estimate_response - Frequentist
      ERROR (test-visualisation_matrix.R:9:5): visualisation_matrix
      
      [ FAIL 1 | WARN 25 | SKIP 1 | PASS 56 ]
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

# msm

<details>

* Version: 1.6.8
* Source code: https://github.com/cran/msm
* URL: https://github.com/chjackson/msm
* BugReports: https://github.com/chjackson/msm/issues
* Date/Publication: 2019-12-16 15:30:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "msm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test_base.R’
    Running the tests in ‘tests/test_base.R’ failed.
    Last 13 lines of output:
      Warning (test_models.r:588:1): error handling: covinits
      Warning (test_models.r:592:1): error handling: covinits
      Warning (test_models.r:595:1): error handling: covinits
      Warning (test_models.r:595:1): error handling: covinits
      Warning (test_models.r:624:5): error handling: check states
      Warning (test_models.r:643:5): error handling: check times
      Warning (test_models.r:643:5): error handling: check times
      FAILURE (test_models.r:643:5): error handling: check times
      Warning (test_models.r:667:5): error handling: check model
      Warning (test_models_misc.r:60:5): misclassification model with est.initprobs
      Warning (test_models_misc.r:106:5): data inconsistent with initprobs/ematrix
      
      [ FAIL 1 | WARN 13 | SKIP 2 | PASS 473 ]
      Error: Test failures
      Execution halted
    ```

# pillar

<details>

* Version: 1.4.6
* Source code: https://github.com/cran/pillar
* URL: https://github.com/r-lib/pillar
* BugReports: https://github.com/r-lib/pillar/issues
* Date/Publication: 2020-07-10 17:10:13 UTC
* Number of recursive dependencies: 40

Run `cloud_details(, "pillar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test-format_multi.R:293:5): strings with varying widths
      FAILURE (test-format_multi.R:298:5): strings with varying widths
      FAILURE (test-format_multi.R:298:5): strings with varying widths
      FAILURE (test-format_multi.R:303:5): strings with varying widths
      FAILURE (test-format_multi.R:303:5): strings with varying widths
      FAILURE (test-format_multi.R:308:5): strings with varying widths
      FAILURE (test-format_multi.R:308:5): strings with varying widths
      FAILURE (test-format_multi.R:313:5): strings with varying widths
      FAILURE (test-format_multi.R:313:5): strings with varying widths
      FAILURE (test-title.R:11:5): with and without title
      FAILURE (test-title.R:11:5): with and without title
      
      [ FAIL 82 | WARN 0 | SKIP 0 | PASS 340 ]
      Error: Test failures
      Execution halted
    ```

# prt

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/prt
* URL: https://nbenn.github.io/prt/
* BugReports: https://github.com/nbenn/prt/issues
* Date/Publication: 2020-08-18 09:40:06 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "prt")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      FAILURE (test-format.R:69:3): trunc_dt output matches known output
      FAILURE (test-format.R:75:3): trunc_dt output matches known output
      FAILURE (test-format.R:80:3): trunc_dt output matches known output
      FAILURE (test-format.R:85:3): trunc_dt output matches known output
      FAILURE (test-format.R:102:3): trunc_mat for POSIXct columns
      FAILURE (test-format.R:115:3): trunc_mat for wide-character columns
      FAILURE (test-glimpse.R:53:3): glimpse output matches known output
      FAILURE (test-glimpse.R:58:3): glimpse output matches known output
      FAILURE (test-glimpse.R:76:3): glimpse output matches known output
      FAILURE (test-glimpse.R:82:3): glimpse output matches known output
      Warning (test-nse.R:55:3): nse subsetting
      
      [ FAIL 18 | WARN 1 | SKIP 0 | PASS 255 ]
      Error: Test failures
      Execution halted
    ```

# ps

<details>

* Version: 1.3.4
* Source code: https://github.com/cran/ps
* URL: https://github.com/r-lib/ps#readme
* BugReports: https://github.com/r-lib/ps/issues
* Date/Publication: 2020-08-11 14:30:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "ps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ✔ |   6       | winver
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 12.4 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● Cannot test in RStudio (2)
      ● Needs working IPv6 connection (1)
      ● On CRAN (9)
      ● no terminal (1)
      ● socat is not available (7)
      
      [ FAIL 3 | WARN 0 | SKIP 20 | PASS 415 ]
      Error: Test failures
      Execution halted
    ```

# rcmdcheck

<details>

* Version: 1.3.3
* Source code: https://github.com/cran/rcmdcheck
* URL: https://github.com/r-Lib/rcmdcheck#readme
* BugReports: https://github.com/r-Lib/rcmdcheck/issues
* Date/Publication: 2019-05-07 12:00:02 UTC
* Number of recursive dependencies: 48

Run `cloud_details(, "rcmdcheck")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      -- Skip (test-rcmdcheck.R:161:3): check arguments ------------------------------
      Reason: On CRAN
      
      -- Skip (test-rcmdcheck.R:188:3): check_dir and rcmdcheck_process --------------
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (17)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-errors.R:21:3): error is thrown as needed, with the correct type
      
      [ FAIL 1 | WARN 0 | SKIP 17 | PASS 17 ]
      Error: Test failures
      Execution halted
    ```

# renv

<details>

* Version: 0.11.0
* Source code: https://github.com/cran/renv
* URL: https://rstudio.github.io/renv
* BugReports: https://github.com/rstudio/renv/issues
* Date/Publication: 2020-06-26 06:10:12 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "renv")` for more info

</details>

## Newly broken

*   checking package dependencies ... ERROR
    ```
    Packages suggested but not available:
      'covr', 'knitr', 'packrat', 'remotes', 'reticulate', 'rmarkdown',
      'uuid'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    The suggested packages are required for a complete check.
    Checking can be attempted without them by setting the environment
    variable _R_CHECK_FORCE_SUGGESTS_ to a false value.
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 3. Failure: dependencies specified in R Markdown site generators are found (@
      "bookdown" %in% deps$Package isn't true.
      
      ── 4. Failure: library permissions are validated before restore (@test-restore.R
      renv_install_preflight_permissions(inaccessible) isn't false.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 357 | SKIPPED: 62 | WARNINGS: 0 | FAILED: 4 ]
      1. Failure: package installation does not fail with non-writable cache (@test-cache.R#79) 
      2. Failure: dependencies specified in R Markdown site generators are found (@test-dependencies.R#187) 
      3. Failure: dependencies specified in R Markdown site generators are found (@test-dependencies.R#192) 
      4. Failure: library permissions are validated before restore (@test-restore.R#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking running R code from vignettes ... ERROR
    ```
    ...
    
      When running vignette ‘python.Rmd’:
    Error: No such vignette ‘python.Rmd’
    Execution halted
    when running code in ‘renv.Rmd’
      ...
    
      When running vignette ‘renv.Rmd’:
    Error: No such vignette ‘renv.Rmd’
    Execution halted
    
      ‘ci.Rmd’using ‘UTF-8’... failed
      ‘collaborating.Rmd’using ‘UTF-8’... failed
      ‘docker.Rmd’using ‘UTF-8’... failed
      ‘faq.Rmd’using ‘UTF-8’... failed
      ‘local-sources.Rmd’using ‘UTF-8’... failed
      ‘lockfile.Rmd’using ‘UTF-8’... failed
      ‘mran.Rmd’using ‘UTF-8’... failed
      ‘packages.Rmd’using ‘UTF-8’... failed
      ‘python.Rmd’using ‘UTF-8’... failed
      ‘renv.Rmd’using ‘UTF-8’... failed
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

# ssdtools

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/ssdtools
* URL: https://github.com/bcgov/ssdtools
* BugReports: https://github.com/bcgov/ssdtools/issues
* Date/Publication: 2020-07-09 23:00:05 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "ssdtools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test-gamma.R:94:3): fit gamma quinoline
      Warning (test-gamma.R:94:3): fit gamma quinoline
      Warning (test-gompertz.R:97:3): sgompertz
      Warning (test-gompertz.R:128:3): fit gompertz cis
      Warning (test-llog.R:13:3): deprecated llog
      Warning (test-llog.R:13:3): deprecated llog
      Warning (test-test-data.R:37:3): test_data Quinoline
      Warning (test-test-data.R:37:3): test_data Quinoline
      Warning (test-test-data.R:37:3): test_data Quinoline
      Warning (test-test-data.R:50:3): test_data Quinoline
      Warning (test-test-data.R:50:3): test_data Quinoline
      
      [ FAIL 1 | WARN 23 | SKIP 0 | PASS 715 ]
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

# storr

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/storr
* URL: https://github.com/richfitz/storr
* BugReports: https://github.com/richfitz/storr/issues
* Date/Publication: 2018-10-18 11:10:03 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "storr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘storr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: test_driver
    > ### Title: Test a storr driver
    > ### Aliases: test_driver
    > 
    > ### ** Examples
    > 
    > ## Testing the environment driver is nice and fast:
    > if (requireNamespace("testthat")) {
    +   create_env <- function(dr = NULL, ...) {
    +     driver_environment(dr$envir, ...)
    +   }
    +   test_driver(create_env)
    + }
    Loading required namespace: testthat
    Error in test_files(test_dir = dirname(path), test_package = package,  : 
      unused argument (start_end_reporter = FALSE)
    Calls: test_driver -> lapply -> FUN
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (6)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-auto.R:2:3): environment
      ERROR (test-auto.R:7:3): rds
      ERROR (test-auto.R:16:5): dbi (sqlite)
      ERROR (test-auto.R:40:3): multistorr (env + rds)
      ERROR (test-driver-remote.R:9:3): storr spec
      ERROR (test-spec.R:5:3): reporter handling
      
      [ FAIL 6 | WARN 0 | SKIP 6 | PASS 285 ]
      Error: Test failures
      Execution halted
    ```

# testextra

<details>

* Version: 0.1.0.1
* Source code: https://github.com/cran/testextra
* URL: https://github.com/RDocTaskForce/testextra
* BugReports: https://github.com/RDocTaskForce/testextra/issues
* Date/Publication: 2019-12-18 09:15:29 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "testextra")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > # This file was created by `documentation::extract_tests` on 2018-11-12 16:19:15.
      > # Once present, this file will not be overwritten and changes will persist.
      > # To recreate the default version of this file delete and rerun `extract_tests`.
      > library(testthat)
      > test_check("testextra")
      Loading required package: testextra
      -- FAILURE (extract_tests.R:387:1): .extract_tests_to_file no test blocks ------
      `x <- .extract_tests_to_file(tmp.in, tmp.out, verbose = TRUE)` did not throw the expected message.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (extract_tests.R:387:1): .extract_tests_to_file no test blocks
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 144 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘stringi’ ‘utils’
      All declared Imports should be used.
    ```

# thor

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/thor
* URL: https://github.com/richfitz/thor
* BugReports: https://github.com/richfitz/thor/issues
* Date/Publication: 2020-05-15 14:20:03 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "thor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          █
       1. └─storr::test_driver(...) test-storr.R:5:2
       2.   └─base::lapply(...)
       3.     └─testthat:::FUN(X[[i]], ...)
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-storr.R:5:3): spec
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 509 ]
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

# vdiffr

<details>

* Version: 0.3.2.2
* Source code: https://github.com/cran/vdiffr
* URL: https://github.com/r-lib/vdiffr
* BugReports: https://github.com/r-lib/vdiffr/issues
* Date/Publication: 2020-07-07 06:11:10 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "vdiffr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
    ...
        ='stroke-width: 1.07; stroke: none; stroke-linecap: square; str
        oke-linejoin: miter; fill: #595959;' clip-path='url(#cpMjcuODl8
        NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                              
      > <line x1='417.00' y1='545.13' x2='417.00' y2='22.77' style='str
      : oke-width: 1.07; stroke-linecap: butt;' clip-path='url(#cpMjcuO
      : Dl8NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                           
        <rect x='27.89' y='22.77' width='686.64' height='522.36' style=
        'stroke-width: 1.07; stroke: #333333;' clip-path='url(#cpMjcuOD
        l8NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                            
        <defs>                                                         
      
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > if (getRversion() < "4.1.0") {
      +   library("testthat")
      +   library("vdiffr")
      +   test_check("vdiffr")
      + }
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘freetypeharfbuzz’
      All declared Imports should be used.
    ```

