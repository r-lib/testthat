# adjclust

<details>

* Version: 0.6.10
* GitHub: https://github.com/pneuvial/adjclust
* Source code: https://github.com/cran/adjclust
* Date/Publication: 2024-10-08 08:10:02 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::cloud_details(, "adjclust")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library("adjclust")
      > 
      > test_check("adjclust")
      object has no names - using numeric order for row/column names
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 171 ]
      
    ...
          ▆
       1. └─testthat::expect_message(regexp = fit3$correction) at test_modify.R:19:3
       2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 171 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc    2.1Mb
        libs   2.6Mb
    ```

# APackOfTheClones

<details>

* Version: 1.3.0
* GitHub: https://github.com/Qile0317/APackOfTheClones
* Source code: https://github.com/cran/APackOfTheClones
* Date/Publication: 2025-08-18 16:50:02 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::cloud_details(, "APackOfTheClones")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
    ...
      - "TRAV8-3.TRAJ42.TRAC;TGTGCTGTGGGTGAGAAGGGTTATGGAGGAAGCCAAGGAAATCTCATCTTT_TRBV12-4.None.TRBJ1-6.TRBC1;TRBV7-6.None.TRBJ1-4.TRBC1;TGTGCCAGCAGTTTCCGACCGCCGGGTTCACCCCTCCACTTT;TGTGCCAGCCACGGCGCCAGGGGTGATGGCTTTTGTGAAAAACTGTTTTTT"
      + "TRAV27.TRAJ58.TRAC;TGTGCAGGAGCTGCGGAAACCAGTGGCTCTAGGTTGACCTTT_TRBV12-4.None.TRBJ2-7.TRBC2;TGTGCCAGCAGCCGGTTGAGGACAGGGGCCCTATACGAGCAGTACTTC"
      - "TRAV8-6.TRAJ34.TRAC;TGTGCTGTGACCTTCCATTATAACACCGACAAGCTCATCTTT_TRBV4-1.None.TRBJ2-7.TRBC2;TGCGCCAGCAGCCAAGACCGGACGGGACTAGACTACGAGCAGTACTTC"
      + "TRAV12-2.TRAJ6.TRAC;TGTGCCGAGAGGGGTTCGGGAGGAAGCTACATACCTACATTT_TRBV7-9.None.TRBJ2-3.TRBC2;TGTGCCAGCAGCGACCCGAGTGGACGACAGGGTCCGAGGTGGGATACGCAGTATTTT"
      
      
      [ FAIL 3 | WARN 0 | SKIP 15 | PASS 242 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        help   1.1Mb
        libs   5.2Mb
    ```

# autodb

<details>

* Version: 3.0.0
* GitHub: https://github.com/CharnelMouse/autodb
* Source code: https://github.com/cran/autodb
* Date/Publication: 2025-06-25 21:40:02 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "autodb")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(autodb)
      
      Attaching package: 'autodb'
      
      The following object is masked from 'package:stats':
    ...
        8.               ├─hedgehog:::as.expectation(e)
        9.               └─hedgehog:::as.expectation.error(e)
       10.                 └─testthat::expectation("error", msg, srcref)
       11.                   └─testthat::new_expectation(...)
       12.                     └─base::structure(...)
      
      [ FAIL 19 | WARN 0 | SKIP 1 | PASS 694 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# aws.comprehend

<details>

* Version: 0.2.1
* GitHub: https://github.com/cloudyr/aws.comprehend
* Source code: https://github.com/cran/aws.comprehend
* Date/Publication: 2020-03-18 14:30:06 UTC
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "aws.comprehend")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(aws.comprehend)
      > 
      > test_check("aws.comprehend")
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 10 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-detect_syntax.R:27:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 10 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# bgmfiles

<details>

* Version: 0.0.6
* GitHub: https://github.com/AustralianAntarcticDivision/bgmfiles
* Source code: https://github.com/cran/bgmfiles
* Date/Publication: 2016-08-10 10:06:56
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "bgmfiles")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(bgmfiles)
      > 
      > test_check("bgmfiles")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 2 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-files.R:7:3'): files are present ───────────────────────────────
      Error: 'is_true' is not an exported object from 'namespace:testthat'
      Backtrace:
          ▆
       1. └─testthat::expect_that(all(file.exists(bgmfiles())), testthat::is_true()) at test-files.R:7:3
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 2 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# bindr

<details>

* Version: 0.1.2
* GitHub: https://github.com/krlmlr/bindr
* Source code: https://github.com/cran/bindr
* Date/Publication: 2024-11-21 21:30:14 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "bindr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(bindr)
      > 
      > test_check("bindr")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-error.R:9:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# caretEnsemble

<details>

* Version: 4.0.1
* GitHub: https://github.com/zachmayer/caretEnsemble
* Source code: https://github.com/cran/caretEnsemble
* Date/Publication: 2024-09-12 21:50:09 UTC
* Number of recursive dependencies: 174

Run `revdepcheck::cloud_details(, "caretEnsemble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > testthat::test_check("caretEnsemble")
      Loading required package: caretEnsemble
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 614 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-caretList.R:315:3'): caretList supports models that return an array or matrix ──
      Error in `UseMethod("predict")`: no applicable method for 'predict' applied to an object of class "character"
      Backtrace:
          ▆
       1. └─stats::predict(models, head(X, 10L)) at test-caretList.R:315:3
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 614 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# clinDataReview

<details>

* Version: 1.6.2
* GitHub: https://github.com/openanalytics/clinDataReview
* Source code: https://github.com/cran/clinDataReview
* Date/Publication: 2025-04-11 22:10:02 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::cloud_details(, "clinDataReview")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(clinDataReview)
      > 
      > test_check("clinDataReview")
        adding: report.html (deflated 63%)
        adding: report_dependencies128b5d5f1fed/ (stored 0%)
        adding: report_dependencies128b5d5f1fed/file128b74c69cf6.html (deflated 8%)
    ...
      `names(expected)`: "height" "width" 
      
        `actual`: 300.0 100.0
      `expected`: 100.0 300.0
      
      
      [ FAIL 16 | WARN 0 | SKIP 31 | PASS 501 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc   4.3Mb
    ```

# cnd

<details>

* Version: 0.1.0
* GitHub: https://github.com/jmbarbone/cnd
* Source code: https://github.com/cran/cnd
* Date/Publication: 2025-02-26 14:00:02 UTC
* Number of recursive dependencies: 46

Run `revdepcheck::cloud_details(, "cnd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-condition.R:226:3'): cnd(condition) handling ─────────────────
      Expected zero successes.
      Actually succeeded 1 times
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 81 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# coenocliner

<details>

* Version: 0.2-3
* GitHub: https://github.com/gavinsimpson/coenocliner
* Source code: https://github.com/cran/coenocliner
* Date/Publication: 2021-02-14 16:50:09 UTC
* Number of recursive dependencies: 28

Run `revdepcheck::cloud_details(, "coenocliner")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > ## Test `coenocliner` using the `testthat` package
      > 
      > ## Setup
      > library("testthat")
      > 
      > ## Runs the tests in inst/tests
      > test_check("coenocliner")
    ...
      ── Error ('test-coenocline.R:55:5'): coenocline() returns an integer matrix with x and y gradients ──
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(typeof(sim) == "integer", is_true()) at test-coenocline.R:55:5
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 85 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# conflr

<details>

* Version: 0.1.1
* GitHub: https://github.com/line/conflr
* Source code: https://github.com/cran/conflr
* Date/Publication: 2020-04-08 12:50:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "conflr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Copyright (C) 2019 LINE Corporation
      > #
      > # conflr is free software; you can redistribute it and/or modify it under the
      > # terms of the GNU General Public License as published by the Free Software
      > # Foundation, version 3.
      > #
      > # conflr is distributed in the hope that it will be useful, but WITHOUT ANY
    ...
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:93:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 14 | WARN 0 | SKIP 4 | PASS 92 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# countdown

<details>

* Version: 0.4.0
* GitHub: https://github.com/gadenbuie/countdown
* Source code: https://github.com/cran/countdown
* Date/Publication: 2022-08-16 09:00:08 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::cloud_details(, "countdown")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(countdown)
      > 
      > test_check("countdown")
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 43 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(requireNamespace = function(...) FALSE, expect_error(countdown_app())) at test-shiny.R:7:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 43 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘xaringan’, ‘beepr’
    ```

# covdepGE

<details>

* Version: 1.0.1
* GitHub: https://github.com/JacobHelwig/covdepGE
* Source code: https://github.com/cran/covdepGE
* Date/Publication: 2022-09-16 15:56:08 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "covdepGE")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
      Expected one failure.
      Actually failed 0 times
      ── Failure ('test-covdepGE.R:511:3'): No title summary ─────────────────────────
      Expected one failure.
      Actually failed 0 times
      
      [ FAIL 25 | WARN 16 | SKIP 31 | PASS 57 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# covr

<details>

* Version: 3.6.4
* GitHub: https://github.com/r-lib/covr
* Source code: https://github.com/cran/covr
* Date/Publication: 2023-11-09 08:10:06 UTC
* Number of recursive dependencies: 57

Run `revdepcheck::cloud_details(, "covr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > ops <- options("crayon.enabled" = FALSE, warn = 1)
      > library(testthat)
      > library("covr")
      > 
      > # Skip tests on Solaris as gcc is not in the PATH and I do not have an easy way
      > # to mimic the CRAN build environment
      > if (!tolower(Sys.info()[["sysname"]]) == "sunos") {
    ...
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:27:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 22 | WARN 0 | SKIP 11 | PASS 185 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# datarobot

<details>

* Version: 2.18.6
* GitHub: NA
* Source code: https://github.com/cran/datarobot
* Date/Publication: 2024-03-13 20:40:02 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "datarobot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(datarobot)
      Did not connect to DataRobot on package startup. Use `ConnectToDataRobot`.
      To connect by default on startup, you can put a config file at: /root/.config/datarobot/drconfig.yaml
      > 
      > test_check("datarobot")
      [ FAIL 9 | WARN 0 | SKIP 32 | PASS 98 ]
    ...
          ▆
       1. └─testthat::with_mock(...) at test-StartAutopilot.R:461:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 32 | PASS 98 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# DiceKriging

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/DiceKriging
* Date/Publication: 2021-02-23 17:30:03 UTC
* Number of recursive dependencies: 30

Run `revdepcheck::cloud_details(, "DiceKriging")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > ## load dependencies
      > library(testthat)
      > 
      > ## test package
      > test_check('DiceKriging')
      Loading required package: DiceKriging
      [1] "SK  ; trend.reestim= FALSE"
    ...
      ── Error ('test-scaling.R:3:1'): Test predict ──────────────────────────────────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(max(abs(p$sd - p.test$sd)) < 1e-06, is_true())
      
      [ FAIL 12 | WARN 6 | SKIP 12 | PASS 85 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# dictionar6

<details>

* Version: 0.1.3
* GitHub: https://github.com/xoopR/dictionar6
* Source code: https://github.com/cran/dictionar6
* Date/Publication: 2021-09-13 04:40:02 UTC
* Number of recursive dependencies: 25

Run `revdepcheck::cloud_details(, "dictionar6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("dictionar6")
      Loading required package: dictionar6
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 165 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-Dictionary.R:56:3'): add untyped ─────────────────────────────
    ...
      
      Backtrace:
          ▆
       1. └─dictionar6:::expect_equal_dictionary(...) at test-Dictionary.R:56:3
       2.   └─testthat::expect_mapequal(x$items, y$items) at ./helpers.R:10:3
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 165 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# difNLR

<details>

* Version: 1.5.1-4
* GitHub: https://github.com/adelahladka/difNLR
* Source code: https://github.com/cran/difNLR
* Date/Publication: 2025-06-30 16:40:06 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::cloud_details(, "difNLR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
        `actual$se`: 0.23443593 0.13252404 0.16037916 0.14521814 0.12357220
      `expected$se`: 0.23443320 0.13252301 0.16037792 0.14521746 0.12357061
      
      
      [ FAIL 25 | WARN 0 | SKIP 16 | PASS 317 ]
      Deleting unused snapshots: 'difNLR/plot-fit1-gen.svg',
      'difNLR/plot-fit2-gen.svg', and 'difNLR/plot-stat-gen.svg'
      Error:
      ! Test failures.
      Execution halted
    ```

# digitize

<details>

* Version: 0.0.4
* GitHub: https://github.com/tpoisot/digitize
* Source code: https://github.com/cran/digitize
* Date/Publication: 2016-08-27 07:52:45
* Number of recursive dependencies: 29

Run `revdepcheck::cloud_details(, "digitize")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(digitize)
      > 
      > test_check("digitize")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-unit.r:9:13
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# disprofas

<details>

* Version: 0.2.1
* GitHub: https://github.com/piusdahinden/disprofas
* Source code: https://github.com/cran/disprofas
* Date/Publication: 2025-03-24 01:00:07 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "disprofas")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(disprofas)
      > 
      > test_check("disprofas")
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 694 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Expected `expect_output(print(re3), "MIMCR")` to be an S3 object.
      Actual OO type: none.
      ── Failure ('test-generic_mztia.R:43:3'): print_and_thus_summary.mztia_succeeds ──
      Expected `expect_output(print(re), "Martinez & Zhao")` to be an S3 object.
      Actual OO type: none.
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 694 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# distances

<details>

* Version: 0.1.12
* GitHub: https://github.com/fsavje/distances
* Source code: https://github.com/cran/distances
* Date/Publication: 2025-04-01 14:00:02 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "distances")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(distances)
      > 
      > test_check("distances")
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 419 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect_error(class = c("error", "condition")) at test_input_check.R:300:3
       2.   └─testthat:::check_string(class, allow_null = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 419 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# distro

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/distro
* Date/Publication: 2020-11-09 09:50:02 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "distro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(distro)
      > 
      > test_check("distro")
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       4. └─distro (local) with_mock_system_release(...)
       5.   └─testthat::with_mock(...) at test-system-release.R:2:3
       6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       7.       └─lifecycle:::deprecate_stop0(msg)
       8.         └─rlang::cnd_signal(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# EDISON

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/EDISON
* Date/Publication: 2016-03-30 21:04:12
* Number of recursive dependencies: 26

Run `revdepcheck::cloud_details(, "EDISON")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("EDISON")
      Loading required package: EDISON
      Loading required package: corpcor
      Loading required package: MASS
      [1] "Initialisation successful."
      [1] "Starting tvDBN iterations..."
    ...
      ── Error ('test-structure-moves.r:336:1'): output not null ─────────────────────
      Error in `is_false()`: could not find function "is_false"
      Backtrace:
          ▆
       1. └─testthat::expect_that(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# ergm

<details>

* Version: 4.10.1
* GitHub: https://github.com/statnet/ergm
* Source code: https://github.com/cran/ergm
* Date/Publication: 2025-08-27 08:40:08 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "ergm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘requireNamespaceTest.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > #  File tests/testthat.R in package ergm, part of the Statnet suite of packages
      > #  for network analysis, https://statnet.org .
      > #
      > #  This software is distributed under the GPL-3 license.  It is free, open
      > #  source, and has the attribution requirements (GPL Section 7) at
      > #  https://statnet.org/attribution .
    ...
      x | Expected `off <- ergm(nw ~ edges + offset(triangle), offset.coef = 0.1)` to throw a message.
      ── Failure ('test-term-Offset.R:23:3'): Estimation with Offset() operator works ──
      Expected failure message to match regexp ".* did not throw the expected message.*".
      Actual message:
      x | Expected `Off <- ergm(nw ~ edges + Offset(~triangle, which = 1, coef = 0.1))` to throw a message.
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 4275 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.3Mb
        help   1.6Mb
        libs   2.9Mb
    ```

# expstudy

<details>

* Version: 2.0.0
* GitHub: https://github.com/cb12991/expstudy
* Source code: https://github.com/cran/expstudy
* Date/Publication: 2024-02-05 14:20:10 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "expstudy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(expstudy)
      
      Attaching package: 'expstudy'
      
      The following object is masked from 'package:stats':
      
    ...
      Expected `as.list(summarise_measures(mortexp))` to be equal to `lapply(...)`.
      Differences:
      `attr(actual, 'measure_sets')` is a list
      `attr(expected, 'measure_sets')` is absent
      
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# fabletools

<details>

* Version: 0.5.1
* GitHub: https://github.com/tidyverts/fabletools
* Source code: https://github.com/cran/fabletools
* Date/Publication: 2025-09-01 08:20:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "fabletools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(dplyr)
      
      Attaching package: 'dplyr'
      
      The following objects are masked from 'package:stats':
      
    ...
          ▆
       1. ├─... %>% expect_identical("mdeaths") at test-mable.R:81:3
       2. └─testthat::expect_identical(., "mdeaths")
       3.   └─testthat::quasi_label(enquo(object), label)
       4.     └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 291 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# futile.logger

<details>

* Version: 1.4.3
* GitHub: NA
* Source code: https://github.com/cran/futile.logger
* Date/Publication: 2016-07-10 16:57:47
* Number of recursive dependencies: 27

Run `revdepcheck::cloud_details(, "futile.logger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(futile.logger)
      > test_check("futile.logger")
      [ FAIL 12 | WARN 1 | SKIP 0 | PASS 40 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test_layout.R:7:3'): Embedded format string ─────────────────────────
    ...
      ── Error ('test_logger.R:80:3'): carp returns output ───────────────────────────
      Error in `is_false()`: could not find function "is_false"
      Backtrace:
          ▆
       1. └─testthat::expect_that(flog.carp(), is_false()) at test_logger.R:80:3
      
      [ FAIL 12 | WARN 1 | SKIP 0 | PASS 40 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# ggeffects

<details>

* Version: 2.3.1
* GitHub: https://github.com/strengejacke/ggeffects
* Source code: https://github.com/cran/ggeffects
* Date/Publication: 2025-08-20 20:20:16 UTC
* Number of recursive dependencies: 292

Run `revdepcheck::cloud_details(, "ggeffects")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ggeffects)
      > test_check("ggeffects")
      You are calculating adjusted predictions on the population-level (i.e.
        `type = "fixed"`) for a *generalized* linear mixed model.
        This may produce biased estimates due to Jensen's inequality. Consider
        setting `bias_correction = TRUE` to correct for this bias.
    ...
      Expected `pr$predicted` to be equal to `c(...)`.
      Differences:
        `actual`: 0.4594 0.2668 0.2737 0.3307 0.2754 0.3939 0.1975 0.2378 0.5647
      `expected`: 0.4489 0.2713 0.2798 0.3200 0.2776 0.4024 0.1888 0.2358 0.5754
      
      
      [ FAIL 1 | WARN 0 | SKIP 70 | PASS 504 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# ggseg

<details>

* Version: 1.6.5
* GitHub: https://github.com/ggseg/ggseg
* Source code: https://github.com/cran/ggseg
* Date/Publication: 2022-06-13 11:10:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::cloud_details(, "ggseg")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > test_check("ggseg")
      Loading required package: ggseg
      merging atlas and data by 'region'
      merging atlas and data by 'region'
    ...
          ▆
       1. └─testthat::expect_warning(regexp = 3) at test-brain_palettes.R:10:3
       2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 106 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking package subdirectories ... NOTE
    ```
    Problems with news in ‘NEWS.md’:
      Cannot extract version info from the following section titles:
        * Changes all data options to .data to decrease possibility of column naming overlap
    ```

# gips

<details>

* Version: 1.2.3
* GitHub: https://github.com/PrzeChoj/gips
* Source code: https://github.com/cran/gips
* Date/Publication: 2025-03-18 08:30:10 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "gips")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(gips)
      > 
      > test_check("gips")
      Loading required package: MASS
      Loading required package: mvtnorm
    ...
      Expected `expect_output(...)` to be equal to `-log(94914.4439516766)`.
      Differences:
      `actual` is a character vector ('The permutation (1,2,3)(4,5) is exp(-11.461) times more likely than the (1,2,3,4,5) permutation.\nThat means, the second permutation is more likely.')
      `expected` is a double vector (-11.4607311748255)
      
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 464 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# graphhopper

<details>

* Version: 0.1.2
* GitHub: https://github.com/crazycapivara/graphhopper-r
* Source code: https://github.com/cran/graphhopper
* Date/Publication: 2021-02-06 16:50:02 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "graphhopper")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(graphhopper)
      > 
      > test_check("graphhopper")
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 6 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_route.R:9:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 6 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# greeks

<details>

* Version: 1.4.4
* GitHub: https://github.com/ahudde/greeks
* Source code: https://github.com/cran/greeks
* Date/Publication: 2025-03-02 13:30:04 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::cloud_details(, "greeks")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(greeks)
      > 
      > test_check("greeks")
      [1] "custom payoff"
      [1] "custom payoff"
      [1] "custom payoff"
    ...
      Backtrace:
          ▆
       1. └─testthat::expect(...) at test-Implied_Volatility.R:90:3
       2.   └─testthat::succeed(failure_message)
       3.     └─base::paste(c(message, info), collapse = "\n")
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

# HandTill2001

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/HandTill2001
* Date/Publication: 2025-05-24 23:50:09 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::cloud_details(, "HandTill2001")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘runit.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library("HandTill2001")
      > 
      > test_check("HandTill2001")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 15 ]
      
    ...
          ▆
       1. └─testthat::expect_error(class = c("error", "HandTill2001", "condition")) at test-throw.R:5:3
       2.   └─testthat:::check_string(class, allow_null = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 15 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘consensus_auc.Rnw’ using Sweave
    Loading required package: class
    Loaded mda 0.5-5
    
    Error: processing vignette 'consensus_auc.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'consensus_auc.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `grfext.sty' not found.
    
    ...
    l.179   \RequirePackage{grfext}\relax
                                         ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘consensus_auc.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘consensus_auc.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# hdcuremodels

<details>

* Version: 0.0.5
* GitHub: https://github.com/kelliejarcher/hdcuremodels
* Source code: https://github.com/cran/hdcuremodels
* Date/Publication: 2025-07-31 21:02:06 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "hdcuremodels")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      Backtrace:
          ▆
       1. └─testthat::expect(is.call(formula(fit))) at test-formula.R:11:3
       2.   └─testthat::succeed(failure_message)
       3.     └─base::paste(c(message, info), collapse = "\n")
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 556 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# hedgehog

<details>

* Version: 0.1
* GitHub: https://github.com/hedgehogqa/r-hedgehog
* Source code: https://github.com/cran/hedgehog
* Date/Publication: 2018-08-22 16:50:03 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "hedgehog")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test_hedgehog.R’
    Running the tests in ‘tests/test_hedgehog.R’ failed.
    Complete output:
      > library(testthat)
      > options(testthat.use_colours = FALSE)
      > test_check("hedgehog")
      Loading required package: hedgehog
      [ FAIL 4 | WARN 1 | SKIP 0 | PASS 27 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
        8.               ├─hedgehog:::as.expectation(e)
        9.               └─hedgehog:::as.expectation.error(e)
       10.                 └─testthat::expectation("error", msg, srcref)
       11.                   └─testthat::new_expectation(...)
       12.                     └─base::structure(...)
      
      [ FAIL 4 | WARN 1 | SKIP 0 | PASS 27 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# htmltools

<details>

* Version: 0.5.8.1
* GitHub: https://github.com/rstudio/htmltools
* Source code: https://github.com/cran/htmltools
* Date/Publication: 2024-04-04 05:03:00 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::cloud_details(, "htmltools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > library(htmltools)
      > 
      > test_check("htmltools")
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 10196 ]
      
      ══ Skipped tests (7) ═══════════════════════════════════════════════════════════
    ...
       11.               └─base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
       12.                 └─htmltools (local) `<fn>`(dots[[1L]][[1L]], dots[[2L]][[1L]])
       13.                   └─testthat::expect_equal(y$parent, NULL) at ./helper-tags.R:8:7
       14.                     └─testthat::quasi_label(enquo(object), label)
       15.                       └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 10196 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘knitr’
    ```

# httptest

<details>

* Version: 4.2.2
* GitHub: https://github.com/nealrichardson/httptest
* Source code: https://github.com/cran/httptest
* Date/Publication: 2024-01-23 19:40:02 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::cloud_details(, "httptest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("httptest")
      Loading required package: httptest
      [ FAIL 2 | WARN 0 | SKIP 12 | PASS 289 ]
      
      ══ Skipped tests (12) ══════════════════════════════════════════════════════════
    ...
       5. │       └─testthat:::quasi_capture(...)
       6. │         ├─testthat (local) .capture(...)
       7. │         │ └─base::withCallingHandlers(...)
       8. │         └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       9. └─testthat::expect_failure(...)
      
      [ FAIL 2 | WARN 0 | SKIP 12 | PASS 289 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# httptest2

<details>

* Version: 1.2.1
* GitHub: https://github.com/nealrichardson/httptest2
* Source code: https://github.com/cran/httptest2
* Date/Publication: 2025-07-27 21:00:02 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "httptest2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("httptest2")
      Loading required package: httptest2
      [ FAIL 5 | WARN 0 | SKIP 2 | PASS 233 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
       11. │         │ └─base::withCallingHandlers(...)
       12. │         └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       13. └─httr2::req_perform(this_req)
       14.   └─httptest2 (local) mock(req)
       15.     └─rlang::abort(out, mockfile = req$mockfile, class = "httptest2_request")
      
      [ FAIL 5 | WARN 0 | SKIP 2 | PASS 233 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# humanize

<details>

* Version: 0.2.0
* GitHub: https://github.com/newtux/humanize
* Source code: https://github.com/cran/humanize
* Date/Publication: 2018-04-04 04:16:58 UTC
* Number of recursive dependencies: 31

Run `revdepcheck::cloud_details(, "humanize")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(humanize)
      > 
      > test_check("humanize")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 96 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_time.R:214:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 96 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# HurreconR

<details>

* Version: 1.1
* GitHub: https://github.com/hurrecon-model/hurreconR
* Source code: https://github.com/cran/HurreconR
* Date/Publication: 2023-06-13 20:40:03 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "HurreconR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
       1. └─testthat::expect_snapshot_value(tolerance = test.expected) at test_HurreconR.R:14:1
       2.   └─testthat:::check_number_decimal(tolerance, min = 0)
       3.     └─testthat:::.stop_not_number(...)
       4.       └─testthat:::stop_input_type(...)
       5.         └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 0 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# IMEC

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/IMEC
* Date/Publication: 2020-11-27 10:10:03 UTC
* Number of recursive dependencies: 101

Run `revdepcheck::cloud_details(, "IMEC")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(IMEC)
      > 
      > test_check("IMEC")
      [1] "The used edge weight is 0.333333333333333"
      [1] "The used edge weight is 0.5"
      [1] "The used edge weight is 0.333333333333333"
    ...
      Backtrace:
          ▆
       1. └─testthat::expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]])) at test-0-basictests.R:60:3
       2.   └─testthat::succeed(failure_message)
       3.     └─base::paste(c(message, info), collapse = "\n")
      
      [ FAIL 2 | WARN 2 | SKIP 1 | PASS 2 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# installr

<details>

* Version: 0.23.4
* GitHub: https://github.com/talgalili/installr
* Source code: https://github.com/cran/installr
* Date/Publication: 2022-11-12 22:50:01 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::cloud_details(, "installr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(installr)
      
      Welcome to installr version 0.23.4
      
      More information is available on the installr project website:
      https://github.com/talgalili/installr/
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_setequal(!!generated_warnings, !!expected_warnings) at test-copy_site_files.R:213:5
       2.   └─testthat:::check_vector(object)
       3.     └─testthat:::is_vector(x)
      
      [ FAIL 64 | WARN 0 | SKIP 2 | PASS 33 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ask.user.yn.question.Rd:44: Lost braces; missing escapes or markup?
        44 | menu in the {utils} package, yesno in the {devtools} package.
           |             ^
    checkRd: (-1) ask.user.yn.question.Rd:44: Lost braces; missing escapes or markup?
        44 | menu in the {utils} package, yesno in the {devtools} package.
           |                                           ^
    checkRd: (-1) install.FFmpeg.Rd:25: Lost braces; missing escapes or markup?
        25 | This function is useful for saveVideo() in the {animation} package.
           |                                                ^
    checkRd: (-1) install.SWFTools.Rd:27: Lost braces; missing escapes or markup?
        27 | This function is useful for saveSWF() in the {animation} package.
           |                                              ^
    checkRd: (-1) os.shutdown.Rd:25: Lost braces; missing escapes or markup?
        25 | This function is a modified version of Yihui's shutdown function from the {fun} package.
           |                                                                           ^
    ```

# itan

<details>

* Version: 3.1.1
* GitHub: https://github.com/arielarmijo/itan
* Source code: https://github.com/cran/itan
* Date/Publication: 2022-02-10 13:40:06 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "itan")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(itan)
      > 
      > test_check("itan")
      [ FAIL 4 | WARN 50 | SKIP 0 | PASS 101 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      `expected$E` is a double vector (21, 0, 0, 1, 7, ...)
      
      `actual$NA` is an integer vector (2, 1, 2, 1, 1, ...)
      `expected$NA` is a double vector (2, 1, 2, 1, 1, ...)
      
      
      [ FAIL 4 | WARN 50 | SKIP 0 | PASS 101 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# latrend

<details>

* Version: 1.6.2
* GitHub: https://github.com/niekdt/latrend
* Source code: https://github.com/cran/latrend
* Date/Publication: 2025-07-04 14:40:02 UTC
* Number of recursive dependencies: 237

Run `revdepcheck::cloud_details(, "latrend")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(latrend)
      > 
      > test_check('latrend')
      [ FAIL 1 | WARN 0 | SKIP 12 | PASS 2350 ]
      
      ══ Skipped tests (12) ══════════════════════════════════════════════════════════
    ...
      target is NULL, current is numeric
      Backtrace:
          ▆
       1. ├─... %T>% ... at test-models.R:62:3
       2. └─testthat::expect_equal(nrow(.), 0)
      
      [ FAIL 1 | WARN 0 | SKIP 12 | PASS 2350 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# leaflet.minicharts

<details>

* Version: 0.6.2
* GitHub: NA
* Source code: https://github.com/cran/leaflet.minicharts
* Date/Publication: 2021-05-11 09:20:10 UTC
* Number of recursive dependencies: 95

Run `revdepcheck::cloud_details(, "leaflet.minicharts")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(leaflet.minicharts)
      > 
      > test_check("leaflet.minicharts")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 106 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-minicharts.R:12:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 106 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# learnr

<details>

* Version: 0.11.5
* GitHub: https://github.com/rstudio/learnr
* Source code: https://github.com/cran/learnr
* Date/Publication: 2023-09-28 05:00:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "learnr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > if (requireNamespace("testthat")) {
      +   library(testthat)
      +   library(learnr)
      + 
      +   test_check("learnr")
      + }
    ...
       2. │ └─testthat:::capture_success_failure(expr)
       3. │   └─base::withCallingHandlers(...)
       4. └─testthat::expect_match(ex_show, hidden_solution, fixed = TRUE)
       5.   └─testthat:::expect_match_(...)
       6.     └─testthat:::show_text(act$val, condition)
      
      [ FAIL 3 | WARN 0 | SKIP 20 | PASS 790 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# lightr

<details>

* Version: 1.9.0
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2025-07-21 16:00:34 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "lightr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(lightr) # nolint
      > 
      > if (requireNamespace("testthat", quietly = TRUE)) {
      +   library(testthat)
      +   test_check("lightr")
      + }
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_setequal(...) at test_convert.R:18:3
       2.   └─testthat:::check_vector(object)
       3.     └─testthat:::is_vector(x)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 390 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# lintr

<details>

* Version: 3.2.0
* GitHub: https://github.com/r-lib/lintr
* Source code: https://github.com/cran/lintr
* Date/Publication: 2025-02-12 15:00:02 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::cloud_details(, "lintr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(lintr)
      > 
      > # suppress printing environment name (noisy)
      > invisible({
      +   loadNamespace("patrick")
      +   loadNamespace("withr")
    ...
      Expected one failure.
      Actually failed 2 times
      ── Failure ('test-expect_lint.R:50:3'): multiple checks ────────────────────────
      Expected one success.
      Actually succeeded 3 times
      
      [ FAIL 13 | WARN 0 | SKIP 5 | PASS 6551 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘data.table’
    ```

# luajr

<details>

* Version: 0.2.0
* GitHub: https://github.com/nicholasdavies/luajr
* Source code: https://github.com/cran/luajr
* Date/Publication: 2025-09-08 14:00:08 UTC
* Number of recursive dependencies: 42

Run `revdepcheck::cloud_details(, "luajr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      Expected `attributes(x)` to be equal to `list(...)`.
      Differences:
      `actual$at2` is an integer vector (1)
      `expected$at2` is a double vector (1)
      
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 184 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# madrat

<details>

* Version: 3.15.6
* GitHub: https://github.com/pik-piam/madrat
* Source code: https://github.com/cran/madrat
* Date/Publication: 2024-12-19 16:10:01 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::cloud_details(, "madrat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(madrat)
      Loading required package: magclass
      > 
      > test_check("madrat")
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 657 ]
      
    ...
       [9] "AZE"  - "ARG"    [9]             
      [10] "BDI"  - "ARM"    [10]            
       ... ...      ...      and 239 more ...
      
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 657 ]
      Error:
      ! Test failures.
      Execution halted
      Ran 3/3 deferred expressions
    ```

# mailmerge

<details>

* Version: 0.2.5
* GitHub: https://github.com/andrie/mailmerge
* Source code: https://github.com/cran/mailmerge
* Date/Publication: 2022-08-14 20:30:02 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "mailmerge")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(mailmerge)
      > 
      > test_check("mailmerge")
      Sent preview to viewer
      Sent preview to viewer
    ...
      
      Backtrace:
          ▆
       1. ├─... %>% expect_null() at test-mail_merge.R:104:3
       2. └─testthat::expect_null(.)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 19 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# MakefileR

<details>

* Version: 1.0
* GitHub: https://github.com/krlmlr/MakefileR
* Source code: https://github.com/cran/MakefileR
* Date/Publication: 2016-01-08 15:55:12
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "MakefileR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(MakefileR)
      > 
      > test_check("MakefileR")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 31 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-rule.R:30:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 31 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# manipulateWidget

<details>

* Version: 0.11.1
* GitHub: https://github.com/rte-antares-rpackage/manipulateWidget
* Source code: https://github.com/cran/manipulateWidget
* Date/Publication: 2021-10-05 08:50:09 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::cloud_details(, "manipulateWidget")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(manipulateWidget)
      > 
      > test_check("manipulateWidget")
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 650 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
       2. │ └─base::withCallingHandlers(...)
       3. └─testthat::with_mock(...) at test-on_done.R:24:23
       4.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       5.     └─lifecycle:::deprecate_stop0(msg)
       6.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 650 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) manipulateWidget.Rd:113-117: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) manipulateWidget.Rd:118-120: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) manipulateWidget.Rd:121-123: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) manipulateWidget.Rd:124-127: Lost braces in \itemize; meant \describe ?
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# markmyassignment

<details>

* Version: 0.8.8
* GitHub: NA
* Source code: https://github.com/cran/markmyassignment
* Date/Publication: 2024-01-29 09:20:06 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "markmyassignment")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("markmyassignment")
      Loading required package: markmyassignment
      [ FAIL 2 | WARN 0 | SKIP 6 | PASS 145 ]
      
      ══ Skipped tests (6) ═══════════════════════════════════════════════════════════
      • On CRAN (6): 'test-set_assignment.R:5:3', 'test-set_assignment.R:47:3',
    ...
      ✖ │ 'markmyassignment' not found in the body of `base::mean`
      ── Failure ('test-expectation.R:45:3'): expect_no_forbidden_function_code() ────
      Expected failure message to match regexp "Forbidden code 'UseMethod' is found in the body of base::mean".
      Actual message:
      ✖ │ Forbidden code 'UseMethod' is found in the body of `base::mean`
      
      [ FAIL 2 | WARN 0 | SKIP 6 | PASS 145 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# maybe

<details>

* Version: 1.1.0
* GitHub: https://github.com/armcn/maybe
* Source code: https://github.com/cran/maybe
* Date/Publication: 2023-08-07 13:30:02 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "maybe")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(maybe)
      > 
      > test_check("maybe")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 133 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
        9.                 ├─hedgehog:::as.expectation(e)
       10.                 └─hedgehog:::as.expectation.error(e)
       11.                   └─testthat::expectation("error", msg, srcref)
       12.                     └─testthat::new_expectation(...)
       13.                       └─base::structure(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 133 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# mbbe

<details>

* Version: 0.1.0
* GitHub: https://github.com/certara/mbbe
* Source code: https://github.com/cran/mbbe
* Date/Publication: 2024-02-03 11:20:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "mbbe")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
          ▆
       1. └─testthat::with_mock(...) at test-check_requirements.R:39:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# MetaComp

<details>

* Version: 1.1.2
* GitHub: https://github.com/seninp-bioinfo/MetaComp
* Source code: https://github.com/cran/MetaComp
* Date/Publication: 2018-06-18 20:06:45 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::cloud_details(, "MetaComp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(MetaComp)
      > 
      > test_check("MetaComp")
      [1] "gottcha"
      [1] "kraken"
      [ FAIL 15 | WARN 21 | SKIP 0 | PASS 108 ]
    ...
      ── Error ('test_plot_pangia_assignment.R:31:1'): (code run outside of `test_that()`) ──
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(file.exists(png_name), is_true()) at test_plot_pangia_assignment.R:31:1
      
      [ FAIL 15 | WARN 21 | SKIP 0 | PASS 108 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# metaDigitise

<details>

* Version: 1.0.1
* GitHub: https://github.com/daniel1noble/metaDigitise
* Source code: https://github.com/cran/metaDigitise
* Date/Publication: 2020-03-13 06:10:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "metaDigitise")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > library(testthat)
      > library(metaDigitise)
      > library(mockery)
      > 
      > testthat::test_check("metaDigitise")
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 35 ]
    ...
       4. └─metaDigitise (local) point_extraction_tester_func(object = list(plot_type = "mean_error"))
       5.   └─testthat::with_mock(...) at test-point_extraction.R:9:9
       6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       7.       └─lifecycle:::deprecate_stop0(msg)
       8.         └─rlang::cnd_signal(...)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 35 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# mknapsack

<details>

* Version: 0.1.0
* GitHub: https://github.com/madedotcom/mknapsack
* Source code: https://github.com/cran/mknapsack
* Date/Publication: 2018-04-10 12:45:53 UTC
* Number of recursive dependencies: 35

Run `revdepcheck::cloud_details(, "mknapsack")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > suppressPackageStartupMessages({
      +   library(testthat)
      +   library(data.table)
      + })
      > 
      > test_check("mknapsack")
      Loading required package: mknapsack
    ...
          ▆
       1. └─testthat::with_mock(...) at test-packing.R:146:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# mlr3pipelines

<details>

* Version: 0.9.0
* GitHub: https://github.com/mlr-org/mlr3pipelines
* Source code: https://github.com/cran/mlr3pipelines
* Date/Publication: 2025-07-31 23:20:11 UTC
* Number of recursive dependencies: 164

Run `revdepcheck::cloud_details(, "mlr3pipelines")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > if (requireNamespace("testthat", quietly = TRUE)) {
      +   library("checkmate")
      +   library("testthat")
      +   library("mlr3")
      +   library("paradox")
      +   library("mlr3pipelines")
      +   test_check("mlr3pipelines")
    ...
      ── Failure ('test_Graph.R:240:3'): assert_graph test ───────────────────────────
      Expected `expect_deep_clone(po, po)` to throw a error with class <error>.
      ── Failure ('test_meta.R:12:3'): expect_deep_clone catches non-deep clones ─────
      Expected zero successes.
      Actually succeeded 16 times
      
      [ FAIL 57 | WARN 0 | SKIP 96 | PASS 12541 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        help   1.5Mb
    ```

# modeltests

<details>

* Version: 0.1.7
* GitHub: https://github.com/alexpghayes/modeltests
* Source code: https://github.com/cran/modeltests
* Date/Publication: 2025-07-24 15:30:02 UTC
* Number of recursive dependencies: 43

Run `revdepcheck::cloud_details(, "modeltests")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(modeltests)
      > 
      > test_check("modeltests")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 400 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─modeltests::check_arguments(augment_wrong_newdata, strict = TRUE)
       7.   └─testthat::expect_null(arglist$newdata, info = "`newdata` argument must default to `NULL`.")
       8.     └─testthat::quasi_label(enquo(object), label)
       9.       └─testthat:::labelled_value(value, label)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 400 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘broom’
    ```

# moexer

<details>

* Version: 0.3.0
* GitHub: https://github.com/x1o/moexer
* Source code: https://github.com/cran/moexer
* Date/Publication: 2024-03-12 12:30:03 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "moexer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(moexer)
      > 
      > test_check("moexer")
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-iss.R:3:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 0 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# MolgenisArmadillo

<details>

* Version: 2.9.1
* GitHub: https://github.com/molgenis/molgenis-r-armadillo
* Source code: https://github.com/cran/MolgenisArmadillo
* Date/Publication: 2025-06-13 13:10:02 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "MolgenisArmadillo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tibble)
      > library(MolgenisArmadillo)
      > library(webmockr)
      > 
      > test_check("MolgenisArmadillo")
      crul not installed, skipping enable
    ...
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:11:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 237 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# multiverse

<details>

* Version: 0.6.2
* GitHub: https://github.com/MUCollective/multiverse
* Source code: https://github.com/cran/multiverse
* Date/Publication: 2024-10-07 23:20:03 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "multiverse")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(multiverse)
      Loading required package: knitr
      > 
      > test_check("multiverse")
      
      Attaching package: 'dplyr'
    ...
      Expected `expect_mapequal(M.obj$conditions, list())` to throw a warning.
      ── Failure ('test-multiverse.R:31:3'): accessor functions work on newly initialised object ──
      Expected `expect_mapequal(parameters(M), list())` to throw a warning.
      ── Failure ('test-multiverse.R:32:3'): accessor functions work on newly initialised object ──
      Expected `expect_mapequal(conditions(M), list())` to throw a warning.
      
      [ FAIL 4 | WARN 3 | SKIP 0 | PASS 242 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# nanoarrow

<details>

* Version: 0.7.0
* GitHub: https://github.com/apache/arrow-nanoarrow
* Source code: https://github.com/cran/nanoarrow
* Date/Publication: 2025-07-03 18:00:02 UTC
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "nanoarrow")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Licensed to the Apache Software Foundation (ASF) under one
      > # or more contributor license agreements.  See the NOTICE file
      > # distributed with this work for additional information
      > # regarding copyright ownership.  The ASF licenses this file
      > # to you under the Apache License, Version 2.0 (the
      > # "License"); you may not use this file except in compliance
      > # with the License.  You may obtain a copy of the License at
    ...
      Expected `expect_output(str(vctr), "^<nanoarrow_vctr int32")` to be identical to `vctr`.
      Differences:
      `actual` is a character vector ('<nanoarrow_vctr int32[0]>\n list()')
      `expected` is an S3 object of class <nanoarrow_vctr>, an integer vector
      
      
      [ FAIL 4 | WARN 0 | SKIP 8 | PASS 1602 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# NasdaqDataLink

<details>

* Version: 1.0.0
* GitHub: https://github.com/nasdaq/data-link-r
* Source code: https://github.com/cran/NasdaqDataLink
* Date/Publication: 2022-06-22 07:50:05 UTC
* Number of recursive dependencies: 48

Run `revdepcheck::cloud_details(, "NasdaqDataLink")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("NasdaqDataLink")
      Loading required package: NasdaqDataLink
      Loading required package: xts
      Loading required package: zoo
      
      Attaching package: 'zoo'
    ...
          ▆
       1. └─testthat::with_mock(...) at test-search.r:4:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 2 | PASS 4 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# nettskjemar

<details>

* Version: 1.0.3
* GitHub: https://github.com/capro-uio/nettskjemar
* Source code: https://github.com/cran/nettskjemar
* Date/Publication: 2025-09-04 18:30:08 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "nettskjemar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Load necessary libraries
      > library(nettskjemar)
      > library(testthat)
      > 
      > test_check("nettskjemar")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 136 ]
    ...
      ── Failure ('test-ns-codebook.R:89:3'): returns formatted string ───────────────
      Expected `formatted` to contain all values in "# Nettskjema raw codebook for form 123".
      Actual: "[1] \"text\"            \"multiple_choice\""
      Expected: "# Nettskjema raw codebook for form 123"
      Missing: "# Nettskjema raw codebook for form 123"
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 136 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# nhlapi

<details>

* Version: 0.1.4
* GitHub: https://github.com/jozefhajnala/nhlapi
* Source code: https://github.com/cran/nhlapi
* Date/Publication: 2021-02-20 01:20:05 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "nhlapi")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(nhlapi)
      > 
      > test_check("nhlapi")
      [ FAIL 17 | WARN 0 | SKIP 38 | PASS 147 ]
      
      ══ Skipped tests (38) ══════════════════════════════════════════════════════════
    ...
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─testthat::with_mock(...)
       5.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       6.     └─lifecycle:::deprecate_stop0(msg)
       7.       └─rlang::cnd_signal(...)
      
      [ FAIL 17 | WARN 0 | SKIP 38 | PASS 147 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# nodiv

<details>

* Version: 1.4.2
* GitHub: https://github.com/mkborregaard/nodiv
* Source code: https://github.com/cran/nodiv
* Date/Publication: 2023-08-21 08:12:36 UTC
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "nodiv")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(nodiv)
      > 
      > test_check("nodiv")
      
        |                                                                            
        |                                                                      |   0%
    ...
      Backtrace:
          ▆
       1. └─testthat::expect(is.null(coquettes$shape)) at test_adding.R:4:3
       2.   └─testthat::succeed(failure_message)
       3.     └─base::paste(c(message, info), collapse = "\n")
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 63 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# operator.tools

<details>

* Version: 1.6.3
* GitHub: https://github.com/decisionpatterns/operator.tools
* Source code: https://github.com/cran/operator.tools
* Date/Publication: 2017-02-28 23:13:22
* Number of recursive dependencies: 25

Run `revdepcheck::cloud_details(, "operator.tools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(operator.tools)
      > 
      > test_check("operator.tools")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-operators.R:6:1'): opetators ───────────────────────────────────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(...) at test-operators.R:6:1
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# optigrab

<details>

* Version: 0.9.2.1
* GitHub: https://github.com/decisionpatterns/optigrab
* Source code: https://github.com/cran/optigrab
* Date/Publication: 2019-01-07 18:40:03 UTC
* Number of recursive dependencies: 42

Run `revdepcheck::cloud_details(, "optigrab")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(optigrab)
      > 
      > test_check("optigrab")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-opt_expand.r:98:1'): (code run outside of `test_that()`) ───────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(is.character(expanded), is_true()) at test-opt_expand.r:98:1
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) gnu_style.Rd:24: Lost braces
        24 | [GNU Command Line Standards]{http://www.gnu.org/prep/standards/standards.html}
           |                             ^
    ```

# ottr

<details>

* Version: 1.5.2
* GitHub: NA
* Source code: https://github.com/cran/ottr
* Date/Publication: 2025-07-02 03:00:02 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "ottr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
      
      Backtrace:
          ▆
       1. └─ottr (local) run_test(...) at test_integration.R:51:3
       2.   └─testthat::expect_equal(want, got) at test_integration.R:31:5
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 212 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# owmr

<details>

* Version: 0.8.2
* GitHub: https://github.com/crazycapivara/owmr
* Source code: https://github.com/cran/owmr
* Date/Publication: 2020-01-11 14:30:02 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::cloud_details(, "owmr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(owmr)
      owmr 0.8.2
         another crazy way to talk to OpenWeatherMap's API
         Documentation: type ?owmr or https://crazycapivara.github.io/owmr/
         Issues, notes and bleeding edge: https://github.com/crazycapivara/owmr/
      
    ...
          ▆
       1. └─testthat::with_mock(...) at test_forecast.R:8:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 3 | SKIP 0 | PASS 28 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# oxcAAR

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/oxcAAR
* Date/Publication: 2021-07-05 17:20:02 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::cloud_details(, "oxcAAR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(oxcAAR)
      > 
      > test_check("oxcAAR")
      [ FAIL 6 | WARN 1 | SKIP 1 | PASS 50 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_simulate.R:12:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 1 | SKIP 1 | PASS 50 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘basic-usage.Rmd’ using rmarkdown
    trying URL 'https://c14.arch.ox.ac.uk/OxCalDistribution.zip'
    
    Quitting from basic-usage.Rmd:23-31 [unnamed-chunk-1]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <error/rlang_error>
    Error in `invokeRestart()`:
    ! no 'restart' 'muffleWarning' found
    ---
    ...
    
    Error: processing vignette 'basic-usage.Rmd' failed with diagnostics:
    no 'restart' 'muffleWarning' found
    --- failed re-building ‘basic-usage.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘basic-usage.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# parquetize

<details>

* Version: 0.5.7
* GitHub: https://github.com/ddotta/parquetize
* Source code: https://github.com/cran/parquetize
* Date/Publication: 2024-03-04 14:10:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "parquetize")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
       8.   └─testthat::expect_equal(nrow(dataset), with_lines)
      ── Failure ('test-testthat-helpers.R:9:3'): expect_parquet fails on file's number of line ──
      Expected `expect_parquet(parquetize_example("iris_dataset"), with_lines = 25)` to throw a error.
      
      [ FAIL 2 | WARN 0 | SKIP 3 | PASS 192 ]
      Error:
      ! Test failures.
      Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# passport

<details>

* Version: 0.3.0
* GitHub: https://github.com/alistaire47/passport
* Source code: https://github.com/cran/passport
* Date/Publication: 2020-11-07 07:30:03 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "passport")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(passport)
      > 
      > test_check("passport")
      [ FAIL 1 | WARN 4 | SKIP 1 | PASS 37 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─testthat::with_mock(...)
       7.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 4 | SKIP 1 | PASS 37 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# patrick

<details>

* Version: 0.3.0
* GitHub: https://github.com/google/patrick
* Source code: https://github.com/cran/patrick
* Date/Publication: 2025-01-27 18:40:05 UTC
* Number of recursive dependencies: 33

Run `revdepcheck::cloud_details(, "patrick")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Copyright 2018 Google LLC
      > #
      > # Licensed under the Apache License, Version 2.0 (the "License");
      > # you may not use this file except in compliance with the License.
      > # You may obtain a copy of the License at
      > #
      > #     http://www.apache.org/licenses/LICENSE-2.0
    ...
        | 
      Backtrace:
          ▆
       1. ├─rlang::eval_tidy(code, args)
       2. └─testthat::expect_failure(testthat::expect_true(case), failure_message) at test-with_parameters.R:22:7
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 24 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# PCRedux

<details>

* Version: 1.2-0
* GitHub: https://github.com/PCRuniversum/PCRedux
* Source code: https://github.com/cran/PCRedux
* Date/Publication: 2025-06-13 05:00:02 UTC
* Number of recursive dependencies: 148

Run `revdepcheck::cloud_details(, "PCRedux")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(PCRedux)
      > 
      > test_check("PCRedux")
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 23 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test_qPCR2fdata.R:11:3'): qPCR2fdata gives the correct dimensions and properties ──
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(...) at test_qPCR2fdata.R:11:3
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 23 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# photon

<details>

* Version: 0.3.5
* GitHub: https://github.com/jslth/photon
* Source code: https://github.com/cran/photon
* Date/Publication: 2025-02-24 13:00:02 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "photon")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      Actually succeeded 1 times
      Backtrace:
          ▆
       1. ├─testthat::with_mocked_bindings(...) at test-utils.R:59:3
       2. └─testthat::expect_failure(expect_in("tbl", class(as_data_frame(data.frame()))))
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 49 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# pocketapi

<details>

* Version: 0.1
* GitHub: https://github.com/CorrelAid/pocketapi
* Source code: https://github.com/cran/pocketapi
* Date/Publication: 2020-11-20 10:20:02 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "pocketapi")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(pocketapi)
      > 
      > test_check("pocketapi")
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 45 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_pocket_unfavorite.R:22:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 45 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# pointblank

<details>

* Version: 0.12.2
* GitHub: https://github.com/rstudio/pointblank
* Source code: https://github.com/cran/pointblank
* Date/Publication: 2024-10-23 03:50:02 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::cloud_details(, "pointblank")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(pointblank)
      > library(dittodb)
      Loading required package: DBI
      > test_check("pointblank")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1824 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-tidyselect_integration.R:73:3'): Full range of tidyselect features available in column selection ──
      Expected one success.
      Actually succeeded 2 times
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1824 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# pollen

<details>

* Version: 0.82.0
* GitHub: https://github.com/Nowosad/pollen
* Source code: https://github.com/cran/pollen
* Date/Publication: 2021-12-03 12:20:02 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "pollen")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library("pollen")
      > 
      > test_check("pollen")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 7 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-zeros.R:4:3'): zero is zero ────────────────────────────────────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(is_zero(0), is_true()) at test-zeros.R:4:3
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 7 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# prism

<details>

* Version: 0.2.3
* GitHub: https://github.com/ropensci/prism
* Source code: https://github.com/cran/prism
* Date/Publication: 2025-03-25 15:50:05 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "prism")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > suppressPackageStartupMessages(library(prism))
      > 
      > test_check("prism")
      
      
      ***************************************
    ...
          ▆
       1. └─testthat::expect_setequal(object = prism_archive_clean("ppt", "daily", years = 2020)) at test-prism_archive_clean.R:51:3
       2.   └─testthat:::check_vector(object)
       3.     └─testthat:::stop_input_type(x, "a vector", arg = error_arg, call = error_call)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 186 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# productplots

<details>

* Version: 0.1.1
* GitHub: https://github.com/hadley/productplots
* Source code: https://github.com/cran/productplots
* Date/Publication: 2016-07-02 07:38:04
* Number of recursive dependencies: 57

Run `revdepcheck::cloud_details(, "productplots")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(productplots)
      > 
      > test_check("productplots")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 43 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-labels.r:35:3'): vbar, vspine and fluct all have rows ──────────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(div_has_rows(c("hspine", "vbar")), is_true()) at test-labels.r:35:3
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 43 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# projmgr

<details>

* Version: 0.1.1
* GitHub: https://github.com/emilyriederer/projmgr
* Source code: https://github.com/cran/projmgr
* Date/Publication: 2024-01-24 05:10:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "projmgr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(projmgr)
      > 
      > test_check("projmgr")
      [ FAIL 4 | WARN 1 | SKIP 3 | PASS 106 ]
      
      ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...)
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 1 | SKIP 3 | PASS 106 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# pyinit

<details>

* Version: 1.1.3
* GitHub: https://github.com/dakep/pyinit
* Source code: https://github.com/cran/pyinit
* Date/Publication: 2022-04-26 20:50:08 UTC
* Number of recursive dependencies: 26

Run `revdepcheck::cloud_details(, "pyinit")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘debug.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > if (require(testthat)) {
      +   library(pyinit)
      +   test_check("pyinit")
      + } else {
      +   warning("'pyinit' requires 'testthat' for tests.")
      + }
    ...
      Error in `expect_known_hash(round(res$coefficients[, obj_order], 4), "30f3b173bb32999ace3f3072ed")`: The package "digest" is required.
      Backtrace:
          ▆
       1. └─testthat::expect_known_hash(...) at test-exact_fit.R:41:5
       2.   └─rlang::check_installed("digest")
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# quadmesh

<details>

* Version: 0.5.5
* GitHub: https://github.com/hypertidy/quadmesh
* Source code: https://github.com/cran/quadmesh
* Date/Publication: 2022-08-31 06:50:02 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "quadmesh")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(quadmesh)
      > 
      > test_check("quadmesh")
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 27 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_equal(bi$tri, tri) at test-barycentric.R:17:3
       2.   └─testthat::quasi_label(enquo(object), label)
       3.     └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 27 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# Quandl

<details>

* Version: 2.11.0
* GitHub: https://github.com/quandl/quandl-r
* Source code: https://github.com/cran/Quandl
* Date/Publication: 2021-08-11 16:00:02 UTC
* Number of recursive dependencies: 48

Run `revdepcheck::cloud_details(, "Quandl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("Quandl")
      Loading required package: Quandl
      Loading required package: xts
      Loading required package: zoo
      
      Attaching package: 'zoo'
    ...
          ▆
       1. └─testthat::with_mock(...) at test-search.r:4:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 2 | PASS 4 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# r2dii.analysis

<details>

* Version: 0.5.2
* GitHub: https://github.com/RMI-PACTA/r2dii.analysis
* Source code: https://github.com/cran/r2dii.analysis
* Date/Publication: 2025-06-17 23:10:07 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "r2dii.analysis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(r2dii.analysis)
      > 
      > test_check("r2dii.analysis")
      [ FAIL 5 | WARN 0 | SKIP 4 | PASS 270 ]
      
    ...
      [3] "region"                 | "region"                 [3]
      [4] "scenario_source"        | "scenario_source"        [4]
      [5] "emission_factor_metric" - "sector"                 [5]
      [6] "emission_factor_value"  - "year"                   [6]
      
      
      [ FAIL 5 | WARN 0 | SKIP 4 | PASS 270 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# r2dii.match

<details>

* Version: 0.4.1
* GitHub: https://github.com/RMI-PACTA/r2dii.match
* Source code: https://github.com/cran/r2dii.match
* Date/Publication: 2025-06-17 23:10:02 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "r2dii.match")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("OMP_THREAD_LIMIT" = 2)
      > 
      > library(testthat)
      > library(r2dii.match)
      > 
      > test_check("r2dii.match")
    ...
      [13] "double"    -                 
      [14] "character" | "character" [14]
      [15] "character" | "character" [15]
      [16] "character" | "character" [16]
      
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 191 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# r2dii.plot

<details>

* Version: 0.5.2
* GitHub: https://github.com/RMI-PACTA/r2dii.plot
* Source code: https://github.com/cran/r2dii.plot
* Date/Publication: 2025-06-21 13:30:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "r2dii.plot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(r2dii.plot)
      > 
      > test_check("r2dii.plot")
      Scale for colour is already present.
      Adding another scale for colour, which will replace the existing scale.
    ...
       [8] "double"    - "character" [8]           
       [9] "character" | "character" [9]           
      [10] "double"    | "double"    [10]          
       ... ...           ...         and 2 more ...
      
      
      [ FAIL 3 | WARN 0 | SKIP 41 | PASS 133 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# rags2ridges

<details>

* Version: 2.2.8
* GitHub: https://github.com/CFWP/rags2ridges
* Source code: https://github.com/cran/rags2ridges
* Date/Publication: 2025-08-29 16:30:02 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::cloud_details(, "rags2ridges")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rags2ridges)
      > 
      > test_check("rags2ridges")
      [ FAIL 830 | WARN 320 | SKIP 0 | PASS 984 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ── Error ('test-xfcvl.R:26:3'): .xfcl functions works properly on degenerated data ──
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(TRUE, is_true()) at test-xfcvl.R:26:3
      
      [ FAIL 830 | WARN 320 | SKIP 0 | PASS 984 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

# rbedrock

<details>

* Version: 0.4.1
* GitHub: https://github.com/reedacartwright/rbedrock
* Source code: https://github.com/cran/rbedrock
* Date/Publication: 2025-08-24 23:10:07 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::cloud_details(, "rbedrock")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rbedrock)
      > 
      > test_check("rbedrock")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 670 ]
      
    ...
      [4] "0330135a1b88f2de" - "53a23166a81fcbe3" [4]
      [5] "f9a08eb7b8b46589" - "0330135a1b88f2de" [5]
      [6] "f824fbf1a4758e68" - "87d69f8d9fa15478" [6]
      [7] "53a23166a81fcbe3" - "c2ef515c775cfbc3" [7]
      
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 670 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        extdata   1.1Mb
        libs      5.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# regmedint

<details>

* Version: 1.0.1
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2024-01-13 00:50:02 UTC
* Number of recursive dependencies: 153

Run `revdepcheck::cloud_details(, "regmedint")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(regmedint)
      > 
      > test_check("regmedint")
      [ FAIL 4 | WARN 0 | SKIP 2 | PASS 4128 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-05_calc_myreg.R:235:9
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 2 | PASS 4128 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# Rexperigen

<details>

* Version: 0.2.1
* GitHub: https://github.com/aquincum/Rexperigen
* Source code: https://github.com/cran/Rexperigen
* Date/Publication: 2016-08-26 02:48:12
* Number of recursive dependencies: 26

Run `revdepcheck::cloud_details(, "Rexperigen")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(Rexperigen)
      > 
      > test_check("Rexperigen")
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 23 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Expected `getOption("Rexperigen.password")` to equal "".
      Differences:
      1/1 mismatches
      x[1]: "korte"
      y[1]: ""
      
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 23 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rjstat

<details>

* Version: 0.4.3
* GitHub: https://github.com/ajschumacher/rjstat
* Source code: https://github.com/cran/rjstat
* Date/Publication: 2023-09-05 09:20:02 UTC
* Number of recursive dependencies: 29

Run `revdepcheck::cloud_details(, "rjstat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rjstat)
      > 
      > test_check("rjstat")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 141 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       1. ├─... %>% expect_equal(1) at test-classes.R:12:5
       2. ├─testthat::expect_equal(., 1)
       3. │ └─testthat::quasi_label(enquo(object), label)
       4. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       5. └─base::getElement(., "value")
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 141 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# rlang

<details>

* Version: 1.1.6
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2025-04-11 08:40:10 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Workaround for loadNamespace() failure on R 3.2
      > requireNamespace("rlang")
      Loading required namespace: rlang
      > 
      > library("testthat")
      > library("rlang")
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_identical(sym(""), missing_arg()) at test-sym.R:17:3
       2.   └─testthat::quasi_label(enquo(object), label)
       3.     └─testthat:::labelled_value(value, label)
      
      [ FAIL 8 | WARN 1 | SKIP 251 | PASS 3797 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# rosetteApi

<details>

* Version: 1.14.4
* GitHub: NA
* Source code: https://github.com/cran/rosetteApi
* Date/Publication: 2020-06-17 23:00:02 UTC
* Number of recursive dependencies: 46

Run `revdepcheck::cloud_details(, "rosetteApi")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rosetteApi)
      > 
      > test_check("rosetteApi")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 13 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_api.R:14:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 13 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# Rpolyhedra

<details>

* Version: 0.5.6
* GitHub: https://github.com/ropensci/Rpolyhedra
* Source code: https://github.com/cran/Rpolyhedra
* Date/Publication: 2024-11-06 15:10:02 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::cloud_details(, "Rpolyhedra")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(Rpolyhedra)
      > library(stringr)
      > library(lgr)
      > library(rgl)
      > library(geometry)
      > library(testthat)
      > 
    ...
          ▆
       1. └─testthat::with_mock(...) at test_package_lib.R:22:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 646 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# RPresto

<details>

* Version: 1.4.7
* GitHub: https://github.com/prestodb/RPresto
* Source code: https://github.com/cran/RPresto
* Date/Publication: 2025-01-08 05:40:17 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "RPresto")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Copyright (c) Meta Platforms, Inc. and affiliates.
      > # All rights reserved.
      > #
      > # This source code is licensed under the BSD-style license found in the
      > # LICENSE file in the root directory of this source tree.
      > 
      > library("testthat")
    ...
       1. └─RPresto:::setup_mock_connection() at test-fetch.R:26:3
       2.   └─testthat::with_mock(...) at ./helper-mock_connection.R:8:3
       3.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       4.       └─lifecycle:::deprecate_stop0(msg)
       5.         └─rlang::cnd_signal(...)
      
      [ FAIL 30 | WARN 0 | SKIP 83 | PASS 36 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# RTD

<details>

* Version: 0.4.1
* GitHub: https://github.com/treasure-data/RTD
* Source code: https://github.com/cran/RTD
* Date/Publication: 2020-07-26 23:10:22 UTC
* Number of recursive dependencies: 114

Run `revdepcheck::cloud_details(, "RTD")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(mockery)
      > library(RTD)
      > 
      > test_check("RTD")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
      
    ...
          ▆
       1. └─testthat::with_mock(...) at test-td.R:32:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# saeSim

<details>

* Version: 0.11.0
* GitHub: https://github.com/wahani/saeSim
* Source code: https://github.com/cran/saeSim
* Date/Publication: 2022-02-07 16:40:02 UTC
* Number of recursive dependencies: 92

Run `revdepcheck::cloud_details(, "saeSim")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > library(saeSim)
      > 
      > test_check("saeSim")
      
      # A data frame: 100 × 3
          idD      x      e
    ...
      ── Error ('test-sim_setup.R:8:3'): sim_setup ───────────────────────────────────
      Error in `is_true()`: could not find function "is_true"
      Backtrace:
          ▆
       1. └─testthat::expect_that(...) at test-sim_setup.R:8:3
      
      [ FAIL 3 | WARN 249 | SKIP 0 | PASS 128 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) sim_setup_preconfigured.Rd:24: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:25: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:26: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:28: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:29: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:30: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sim_setup_preconfigured.Rd:31: Lost braces in \itemize; meant \describe ?
    ```

# scorematchingad

<details>

* Version: 0.1.4
* GitHub: https://github.com/kasselhingee/scorematchingad
* Source code: https://github.com/cran/scorematchingad
* Date/Publication: 2025-09-01 02:30:02 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "scorematchingad")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > test_check("scorematchingad")
      Loading required package: scorematchingad
      The Jacobian of the Hessian was non-zero for row 1 of xmat and dynmat
      [ FAIL 2 | WARN 0 | SKIP 18 | PASS 427 ]
      
    ...
       5. │     │ └─base::withCallingHandlers(...)
       6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       7. └─testthat::expect_equal(dir3_m, vMF_m(Y))
      ── Failure ('test-vMF.R:102:3'): vMF matches for simulated weights, ignoring SE, which shouldn't match ──
      Expected `expect_equal(dir3_m, vMF_m(Y))` to throw a error.
      
      [ FAIL 2 | WARN 0 | SKIP 18 | PASS 427 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 42.2Mb
      sub-directories of 1Mb or more:
        cppad    10.2Mb
        include   4.9Mb
        libs     26.3Mb
    ```

# seqminer

<details>

* Version: 9.7
* GitHub: https://github.com/zhanxw/seqminer
* Source code: https://github.com/cran/seqminer
* Date/Publication: 2024-10-02 06:10:02 UTC
* Number of recursive dependencies: 31

Run `revdepcheck::cloud_details(, "seqminer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > ## follow http://adv-r.had.co.nz/Testing.html
      > print(sprintf("Test seqminer [version %s]", packageVersion("seqminer")))
      [1] "Test seqminer [version 9.7]"
      > print("Platform")
      [1] "Platform"
      > print(str(.Platform))
      List of 8
    ...
      Backtrace:
          ▆
       1. └─testthat::expect(nchar(cfh) > 0) at test-vcf.R:181:5
       2.   └─testthat::succeed(failure_message)
       3.     └─base::paste(c(message, info), collapse = "\n")
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 72 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.9Mb
      sub-directories of 1Mb or more:
        libs  13.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# seriation

<details>

* Version: 1.5.8
* GitHub: https://github.com/mhahsler/seriation
* Source code: https://github.com/cran/seriation
* Date/Publication: 2025-08-20 18:10:02 UTC
* Number of recursive dependencies: 158

Run `revdepcheck::cloud_details(, "seriation")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > 
      > library("seriation")
      > test_check("seriation")
      [ FAIL 47 | WARN 0 | SKIP 1 | PASS 391 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
      Expected `o` to be equal to `c(a = 1, b = 2, c = 3, d = 4)`.
      Differences:
      `actual` is an integer vector (3, 4, 2, 1)
      `expected` is a double vector (1, 2, 3, 4)
      
      
      [ FAIL 47 | WARN 0 | SKIP 1 | PASS 391 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘seriation.Rnw’ using Sweave
    Error: processing vignette 'seriation.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'seriation.tex' failed.
    LaTeX errors:
    ! Package babel Error: Unknown option 'english'. Either you misspelled it
    (babel)                or the language definition file english.ldf
    (babel)                was not found.
    (babel)                There is a locale ini file for this language.
    ...
    l.4208 \ProcessOptions*
                           
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘seriation.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘seriation.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# shiny

<details>

* Version: 1.11.1
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2025-07-03 06:20:02 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "shiny")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(shiny)
      > 
      > test_check("shiny")
      [ FAIL 4 | WARN 0 | SKIP 19 | PASS 1642 ]
      
      ══ Skipped tests (19) ══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_true(all(run$pass)) at test-test-server-app.R:55:3
       2.   └─testthat::quasi_label(enquo(object), label)
       3.     └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 4 | WARN 0 | SKIP 19 | PASS 1642 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.0Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        help   1.7Mb
        www    6.8Mb
    ```

# shiny.benchmark

<details>

* Version: 0.1.1
* GitHub: https://github.com/Appsilon/shiny.benchmark
* Source code: https://github.com/cran/shiny.benchmark
* Date/Publication: 2023-01-20 09:50:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "shiny.benchmark")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(shiny.benchmark)
      > 
      > test_check("shiny.benchmark")
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 7 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       2.   └─base::eval(...)
       3.     └─testthat::local_mock(menu = function(...) 2) at test-load_example.R:74:5
       4.       └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
       5.         └─lifecycle:::deprecate_stop0(msg)
       6.           └─rlang::cnd_signal(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 7 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# shinyShortcut

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/shinyShortcut
* Date/Publication: 2017-03-19 18:13:08 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "shinyShortcut")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(shinyShortcut)
      > 
      > test_check("shinyShortcut")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-shinyShortcut.R:5:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# SIAtools

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/SIAtools
* Date/Publication: 2025-06-09 15:20:02 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "SIAtools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
    ...
       4.     └─snapshotter$take_snapshot(...)
       5.       └─testthat (local) load(old_raw)
       6.         └─testthat:::reparse(x)
       7.           ├─base::eval(parse(text = x), env)
       8.           └─base::parse(text = x)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 65 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# SpaDES.tools

<details>

* Version: 2.0.7
* GitHub: https://github.com/PredictiveEcology/SpaDES.tools
* Source code: https://github.com/cran/SpaDES.tools
* Date/Publication: 2024-05-15 09:00:11 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::cloud_details(, "SpaDES.tools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      Expected `length(spreadState[["indices"]])` to be equal to `maxSize1`.
      Differences:
        `actual`:   4.0
      `expected`: 100.0
      
      
      [ FAIL 4 | WARN 0 | SKIP 3 | PASS 2256 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# spaero

<details>

* Version: 0.6.0
* GitHub: https://github.com/e3bo/spaero
* Source code: https://github.com/cran/spaero
* Date/Publication: 2020-09-26 23:50:03 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "spaero")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(spaero)
      > 
      > test_check("spaero")
      [ FAIL 1 | WARN 4 | SKIP 7 | PASS 47 ]
      
      ══ Skipped tests (7) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-simulator.R:6:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 4 | SKIP 7 | PASS 47 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘earlywarnings’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘earlywarnings’ in Rd xrefs
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# spatialsample

<details>

* Version: 0.6.0
* GitHub: https://github.com/tidymodels/spatialsample
* Source code: https://github.com/cran/spatialsample
* Date/Publication: 2024-10-02 18:20:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "spatialsample")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(spatialsample)
      > 
      > sf::sf_extSoftVersion()
                GEOS           GDAL         proj.4 GDAL_with_GEOS     USE_PROJ_H 
            "3.12.1"        "3.8.4"        "9.4.0"         "true"         "true" 
                PROJ 
    ...
      [ FAIL 1 | WARN 0 | SKIP 26 | PASS 535 ]
      Deleting unused snapshots: 'autoplot/buffered-llo-set-plot.svg',
      'autoplot/buffered-llo-split-plot.svg', 'autoplot/buffered-rsample-plot.svg',
      'autoplot/buffered-rset-plot.svg', 'autoplot/buffered-vfold-plot.svg',
      'autoplot/buffered-vfold-split.svg', 'autoplot/repeated-block-cv.svg',
      'autoplot/repeated-llo.svg', 'autoplot/repeated-vfold.svg', and
      'autoplot/snake-flips-rows-the-right-way.svg'
      Error:
      ! Test failures.
      Execution halted
    ```

# spex

<details>

* Version: 0.7.1
* GitHub: https://github.com/mdsumner/spex
* Source code: https://github.com/cran/spex
* Date/Publication: 2020-06-20 09:50:02 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "spex")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(spex)
      > 
      > test_check("spex")
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 33 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
       2. └─testthat::expect_s3_class(., "sf")
      ── Failure ('test-sf-from-raster.R:28:3'): we can also qm_raster here ──────────
      Expected `nrow(pd)` to equal 5694.
      Differences:
      target is NULL, current is numeric
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 33 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# tabularaster

<details>

* Version: 0.7.2
* GitHub: https://github.com/hypertidy/tabularaster
* Source code: https://github.com/cran/tabularaster
* Date/Publication: 2023-11-01 06:10:03 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "tabularaster")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tabularaster)
      > 
      > test_check("tabularaster")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 23 ]
      
    ...
      Backtrace:
          ▆
       1. └─testthat::expect_that(nrow(tib), equals(917L)) at test-all-major-funs.R:12:3
       2.   └─testthat (local) condition(object)
       3.     └─testthat::expect_equal(x, expected, ..., expected.label = label)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 23 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# testdat

<details>

* Version: 0.4.3
* GitHub: https://github.com/socialresearchcentre/testdat
* Source code: https://github.com/cran/testdat
* Date/Publication: 2025-08-19 04:30:02 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "testdat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(testdat)
      > 
      > test_check("testdat")
      [ FAIL 95 | WARN 0 | SKIP 0 | PASS 111 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Component "failed_records": Numeric: lengths (4, 2) differ
      ...
      ── Failure ('test-testdata.R:9:3'): set_testdata/get_testdata work correctly ───
      Expected one failure.
      Actually failed 2 times
      
      [ FAIL 95 | WARN 0 | SKIP 0 | PASS 111 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# texreg

<details>

* Version: 1.39.4
* GitHub: https://github.com/leifeld/texreg
* Source code: https://github.com/cran/texreg
* Date/Publication: 2024-07-24 12:20:01 UTC
* Number of recursive dependencies: 109

Run `revdepcheck::cloud_details(, "texreg")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library("texreg")
      Version:  1.39.4
      Date:     2024-07-23
      Author:   Philip Leifeld (University of Manchester)
      
      Consider submitting praise using the praise or praise_interactive functions.
    ...
          ▆
       1. └─testthat::with_mock(...) at test-texreg.R:319:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 1 | SKIP 33 | PASS 201 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘texreg.Rnw’ using Sweave
    Error: processing vignette 'texreg.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'texreg.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `thumbpdf.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
    l.8 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘texreg.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘texreg.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'AER', 'alpaca', 'betareg', 'Bergm', 'bife', 'biglm', 'brglm',
      'brms', 'btergm', 'dynlm', 'eha', 'ergm', 'feisr', 'fGarch',
      'fixest', 'forecast', 'gamlss', 'gamlss.inf', 'gee', 'glmmTMB',
      'gmm', 'gnm', 'h2o', 'latentnet', 'lfe', 'logitr', 'lqmm', 'maxLik',
      'metaSEM', 'mfx', 'mhurdle', 'miceadds', 'mlogit', 'MuMIn', 'oglmx',
      'ordinal', 'pglm', 'plm', 'relevent', 'remify', 'remstats',
      'remstimate', 'rms', 'robust', 'simex', 'spatialreg', 'spdep',
      'speedglm', 'truncreg', 'VGAM'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘h2o’, ‘spatialreg’, ‘eha’, ‘MuMIn’, ‘Bergm’, ‘mfx’, ‘betareg’, ‘bife’, ‘biglm’, ‘brglm’, ‘brms’, ‘btergm’, ‘ordinal’, ‘dynlm’, ‘ergm’, ‘latentnet’, ‘forecast’, ‘fGarch’, ‘alpaca’, ‘feisr’, ‘lfe’, ‘fixest’, ‘gamlss’, ‘gamlss.inf’, ‘gee’, ‘gmm’, ‘miceadds’, ‘glmmTMB’, ‘gnm’, ‘AER’, ‘robust’, ‘lqmm’, ‘rms’, ‘maxLik’, ‘mhurdle’, ‘mlogit’, ‘plm’, ‘pglm’, ‘relevent’, ‘remstimate’, ‘simex’, ‘speedglm’, ‘truncreg’, ‘VGAM’, ‘metaSEM’
    Unknown package ‘oglmx’ in Rd xrefs
    ```

# ThankYouStars

<details>

* Version: 0.2.0
* GitHub: https://github.com/ksmzn/ThankYouStars
* Source code: https://github.com/cran/ThankYouStars
* Date/Publication: 2017-11-12 04:21:17 UTC
* Number of recursive dependencies: 30

Run `revdepcheck::cloud_details(, "ThankYouStars")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ThankYouStars)
      > 
      > test_check("ThankYouStars")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-starring.R:3:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# tibblify

<details>

* Version: 0.3.1
* GitHub: https://github.com/mgirlich/tibblify
* Source code: https://github.com/cran/tibblify
* Date/Publication: 2024-01-11 07:30:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "tibblify")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tibblify)
      > 
      > test_check("tibblify")
      [ FAIL 1 | WARN 0 | SKIP 85 | PASS 541 ]
      
    ...
       2.   └─testthat:::expect_snapshot_(...)
       3.     ├─testthat:::with_is_snapshotting(...)
       4.     └─testthat:::verify_exec(quo_get_expr(x), quo_get_env(x), replay)
       5.       └─evaluate::evaluate(source, envir = env, new_device = FALSE, output_handler = handler)
       6.         └─evaluate::parse_all(input, filename = filename)
      
      [ FAIL 1 | WARN 0 | SKIP 85 | PASS 541 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lifecycle’
      All declared Imports should be used.
    ```

# tinyProject

<details>

* Version: 0.6.1
* GitHub: NA
* Source code: https://github.com/cran/tinyProject
* Date/Publication: 2019-06-14 11:40:03 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::cloud_details(, "tinyProject")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tinyProject)
      > 
      > test_check("tinyProject")
      [ FAIL 1 | WARN 5 | SKIP 0 | PASS 73 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test-commandArgs.R:3:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 5 | SKIP 0 | PASS 73 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# trip

<details>

* Version: 1.10.0
* GitHub: https://github.com/Trackage/trip
* Source code: https://github.com/cran/trip
* Date/Publication: 2023-06-29 14:30:02 UTC
* Number of recursive dependencies: 109

Run `revdepcheck::cloud_details(, "trip")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(trip)
      > 
      > test_check("trip")
      
      Longitudes contain values greater than 180, 
    ...
                 - "tripDuration" [5]
                 - "tripDistance" [6]
                 - "meanSpeed"    [7]
                 - "maxSpeed"     [8]
      
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 110 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# tryCatchLog

<details>

* Version: 1.3.1
* GitHub: https://github.com/aryoda/tryCatchLog
* Source code: https://github.com/cran/tryCatchLog
* Date/Publication: 2021-10-25 07:10:07 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "tryCatchLog")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tryCatchLog)
      Using futile.logger for logging...
      > 
      > 
      > 
      > # Set to something like [1] "en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/de_DE.UTF-8"
    ...
          ▆
       1. └─testthat::with_mock(...) at test_platform_functions.R:37:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 436 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘log2console’
    ```

# vein

<details>

* Version: 1.3.0
* GitHub: https://github.com/atmoschem/vein
* Source code: https://github.com/cran/vein
* Date/Publication: 2025-03-29 05:30:02 UTC
* Number of recursive dependencies: 56

Run `revdepcheck::cloud_details(, "vein")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(vein)
      > 
      > test_check("vein")
      Running tests in parallel requires the 3rd edition.
      Weighted mean =  6 
      [[1]]
    ...
          ▆
       1. └─testthat::expect_warning(regexp = 1) at test-make_grid.R:26:3
       2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 640 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 49 marked UTF-8 strings
    ```

# WhatIf

<details>

* Version: 1.5-10
* GitHub: https://github.com/IQSS/WhatIf
* Source code: https://github.com/cran/WhatIf
* Date/Publication: 2020-11-14 14:20:06 UTC
* Number of recursive dependencies: 26

Run `revdepcheck::cloud_details(, "WhatIf")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(WhatIf)
      > 
      > test_check("WhatIf")
      
        |                                                                            
        |                                                                      |   0%
    ...
          ▆
       1. └─testthat::with_mock(...) at test-whatif_convexhull.R:16:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 2 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# whirl

<details>

* Version: 0.3.1
* GitHub: https://github.com/NovoNordisk-OpenSource/whirl
* Source code: https://github.com/cran/whirl
* Date/Publication: 2025-08-25 14:50:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "whirl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      - "name"
      + name"Step 1"
      - "paths"
      + paths"/tmp/workdir/whirl/new/whirl.Rcheck/tests/testthat/scripts/success.R"
      
      
      [ FAIL 1 | WARN 0 | SKIP 23 | PASS 125 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# wk

<details>

* Version: 0.9.4
* GitHub: https://github.com/paleolimbot/wk
* Source code: https://github.com/cran/wk
* Date/Publication: 2024-10-11 20:10:03 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::cloud_details(, "wk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(wk)
      > 
      > test_check("wk")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1679 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Expected `expect_output(print(xy_rcrd), "wk_rcrd")` to be identical to `xy_rcrd`.
      Differences:
      `actual` is a character vector ('<wk_rcrd[3]>\n   x    y \n1\\n2 2\\n2 ')
      `expected` is an S3 object of class <wk_rcrd>, a list
      
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1679 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        libs   1.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3881 marked UTF-8 strings
    ```

# xpose

<details>

* Version: 0.4.20
* GitHub: https://github.com/UUPharmacometrics/xpose
* Source code: https://github.com/cran/xpose
* Date/Publication: 2025-09-02 22:40:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::cloud_details(, "xpose")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(xpose)
      Loading required package: ggplot2
      
      Attaching package: 'xpose'
      
      The following object is masked from 'package:stats':
    ...
        8. │       └─base::do.call(...) at ./helper-test_that_for_all.R:20:7
        9. └─base::.handleSimpleError(...)
       10.   └─purrr (local) h(simpleError(msg, call))
       11.     └─cli::cli_abort(...)
       12.       └─rlang::abort(...)
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 379 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# zephyr

<details>

* Version: 0.1.3
* GitHub: https://github.com/novonordisk-opensource/zephyr
* Source code: https://github.com/cran/zephyr
* Date/Publication: 2025-08-22 05:50:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "zephyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
      Backtrace:
          ▆
       1. ├─withr::with_namespace(...) at test-verbosity_level.R:121:3
       2. │ └─base::force(code)
       3. └─testthat::expect_mapequal(...) at test-verbosity_level.R:127:5
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 96 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# ZillowR

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/ZillowR
* Date/Publication: 2022-05-05 02:10:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::cloud_details(, "ZillowR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ZillowR)
      > 
      > test_check("ZillowR")
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 125 ]
      
    ...
          ▆
       1. └─testthat::with_mock(...) at test-GetZestimate.R:7:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 125 ]
      Error:
      ! Test failures.
      Execution halted
    ```

