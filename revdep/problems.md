# adjclust

<details>

* Version: 0.6.10
* GitHub: https://github.com/pneuvial/adjclust
* Source code: https://github.com/cran/adjclust
* Date/Publication: 2024-10-08 08:10:02 UTC
* Number of recursive dependencies: 113

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
      [ FAIL 1 | WARN 1 | SKIP 3 | PASS 171 ]
      
    ...
          ▆
       1. └─testthat::expect_message(regexp = fit3$correction) at test_modify.R:19:3
       2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 1 | SKIP 3 | PASS 171 ]
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

# autodb

<details>

* Version: 3.1.0
* GitHub: https://github.com/CharnelMouse/autodb
* Source code: https://github.com/cran/autodb
* Date/Publication: 2025-09-18 08:10:07 UTC
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
      
      [ FAIL 20 | WARN 0 | SKIP 1 | PASS 710 ]
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

# clinUtils

<details>

* Version: 0.2.1
* GitHub: https://github.com/openanalytics/clinUtils
* Source code: https://github.com/cran/clinUtils
* Date/Publication: 2025-09-03 09:20:15 UTC
* Number of recursive dependencies: 102

Run `revdepcheck::cloud_details(, "clinUtils")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(clinUtils)
      > 
      > test_check("clinUtils")
      [ FAIL 2 | WARN 1 | SKIP 2 | PASS 305 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect(ok = cDefs[[which(cDefsFmtPercentage)]]$targets) at test_getClinDT.R:176:7
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 1 | SKIP 2 | PASS 305 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc   6.6Mb
    ```

# cmsafops

<details>

* Version: 1.4.1
* GitHub: https://github.com/cmsaf/cmsaf-r-tools
* Source code: https://github.com/cran/cmsafops
* Date/Publication: 2025-04-08 22:30:02 UTC
* Number of recursive dependencies: 121

Run `revdepcheck::cloud_details(, "cmsafops")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘cmsafops-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: extract.level
    > ### Title: Extract levels from 4-dimensional NetCDF files.
    > ### Aliases: extract.level
    > 
    > ### ** Examples
    > 
    > ## Create an example NetCDF file with a similar structure as used by CM
    ...
    > ## Extract all levels of the example CM SAF NetCDF file and write the
    > ## output to a new file.
    > extract.level(var = "SIS", infile = file.path(tempdir(),"CMSAF_example_file.nc"),
    +  outfile = file.path(tempdir(),"CMSAF_example_file_extract.level2.nc"),
    +  level = "all")
    Error in R_nc4_create: Permission denied (creation mode was 4096)
    Error in nc_create(outfile, c(vars, grid_vars), force_v4 = force_v4) : 
      Error in nc_create!
    Calls: extract.level -> write_output_file -> nc_create
    Execution halted
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
      Expected exactly one failure and no successes.
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
* Number of recursive dependencies: 68

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
      Expected exactly one failure and no successes.
      Actually failed 0 times
      ── Failure ('test-covdepGE.R:511:3'): No title summary ─────────────────────────
      Expected exactly one failure and no successes.
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

# DepLogo

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/DepLogo
* Date/Publication: 2024-02-15 17:00:02 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "DepLogo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(DepLogo)
      > 
      > test_check("DepLogo")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 67 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect(ok = min(num)) at test-Partitioning.R:29:9
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 67 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc       4.8Mb
        extdata   2.1Mb
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
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 165 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-Dictionary.R:56:3'): add untyped ─────────────────────────────
    ...
      
      Backtrace:
          ▆
       1. └─dictionar6:::expect_equal_dictionary(...) at test-Dictionary.R:56:3
       2.   └─testthat::expect_mapequal(x$items, y$items) at ./helpers.R:10:3
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 165 ]
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
* Number of recursive dependencies: 139

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
        `actual$se`: 0.234433093 0.132523018 0.160377865 0.145217350 0.123570547
      `expected$se`: 0.234433200 0.132523009 0.160377916 0.145217456 0.123570609
      
      
      [ FAIL 25 | WARN 1 | SKIP 16 | PASS 317 ]
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

# dmlalg

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/dmlalg
* Date/Publication: 2022-02-03 12:40:02 UTC
* Number of recursive dependencies: 45

Run `revdepcheck::cloud_details(, "dmlalg")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(dmlalg)
      > 
      > test_check("dmlalg")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1113 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       1. └─dmlalg (local) check_return_results_format(beta = beta, var = var, xx_colnames = xx_colnames) at test-data_formats_regsdml.R:1356:3
       2.   └─testthat::expect(ok = nrow(results$beta_test)) at test-data_formats_regsdml.R:1332:5
       3.     └─testthat:::check_bool(ok)
       4.       └─testthat:::stop_input_type(...)
       5.         └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1113 ]
      Error:
      ! Test failures.
      Execution halted
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

# ggdist

<details>

* Version: 3.3.3
* GitHub: https://github.com/mjskay/ggdist
* Source code: https://github.com/cran/ggdist
* Date/Publication: 2025-04-23 00:20:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::cloud_details(, "ggdist")` for more info

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
      'test.scale_/point-size-discrete-mapping.svg',
      'test.scale_/slab-alpha-continuous-mapping.svg',
      'test.scale_/slab-alpha-discrete-mapping.svg',
      'test.scale_/slab-color-continuous-mapping.svg',
      'test.scale_/slab-color-discrete-mapping.svg', …,
      'test.scale_/slab-size-continuous-mapping.svg', and
      'test.scale_/slab-size-discrete-mapping.svg'
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.3Mb
        help   1.5Mb
    ```

# ggseg

<details>

* Version: 1.6.5
* GitHub: https://github.com/ggseg/ggseg
* Source code: https://github.com/cran/ggseg
* Date/Publication: 2022-06-13 11:10:02 UTC
* Number of recursive dependencies: 126

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

# graphhopper

<details>

* Version: 0.1.2
* GitHub: https://github.com/crazycapivara/graphhopper-r
* Source code: https://github.com/cran/graphhopper
* Date/Publication: 2021-02-06 16:50:02 UTC
* Number of recursive dependencies: 65

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
* Number of recursive dependencies: 89

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
          ▆
       1. └─testthat::expect(failure_message = <empty>) at test-Implied_Volatility.R:90:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
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

# gtfs2gps

<details>

* Version: 2.1-2
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2024-10-08 07:00:06 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "gtfs2gps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(gtfs2gps)
      gtfs2gps version 2.1-2 is now loaded
      NOTE: All filter functions from gtfs2gps were removed
      Please replace them by similar functions from gtfstools
      > 
      > test_check("gtfs2gps")
    ...
          ▆
       1. └─testthat::expect(ok = length(unique(poa_simpl$shapes$shape_id))) at test_simplify_shapes.R:9:5
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 119 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# handwriterRF

<details>

* Version: 1.1.1
* GitHub: https://github.com/CSAFE-ISU/handwriterRF
* Source code: https://github.com/cran/handwriterRF
* Date/Publication: 2025-01-29 00:20:01 UTC
* Number of recursive dependencies: 124

Run `revdepcheck::cloud_details(, "handwriterRF")` for more info

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
      Calculating similarity score...
      Calculating distance between samples...
      Calculating similarity score...
      Calculating distance between samples...
      Calculating similarity score...
      Calculating SLR...
      Calculating distance between samples...
      Calculating similarity score...
      Calculating SLR...
      Killed
    ```

# hdcuremodels

<details>

* Version: 0.0.5
* GitHub: https://github.com/kelliejarcher/hdcuremodels
* Source code: https://github.com/cran/hdcuremodels
* Date/Publication: 2025-07-31 21:02:06 UTC
* Number of recursive dependencies: 136

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
          ▆
       1. └─testthat::expect(ok = nobs(fit)) at test-nobs.R:11:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 552 ]
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

# howzatR

<details>

* Version: 1.0.1
* GitHub: https://github.com/lukelockley/howzatR
* Source code: https://github.com/cran/howzatR
* Date/Publication: 2022-09-09 14:32:56 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "howzatR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(howzatR)
      > 
      > test_check("howzatR")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 16 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect(ok = bat_sr(runs_scored = 250, balls_faced = 200)) at test-batting_basics.R:22:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 16 ]
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

# hySpc.testthat

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/hySpc.testthat
* Date/Publication: 2020-06-24 13:00:02 UTC
* Number of recursive dependencies: 24

Run `revdepcheck::cloud_details(, "hySpc.testthat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(hySpc.testthat)
      > 
      > test_check("hySpc.testthat")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 2 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
        7.   └─hySpc.testthat (local) t()
        8.     └─testthat::test_that(...)
        9.       └─testthat:::test_code(code, parent.frame())
       10.         └─reporter$start_test(context = reporter$.context, test = test)
       11.           └─base::identical(self$running[[self$current_file]]$context, context)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 2 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# idiolect

<details>

* Version: 1.0.1
* GitHub: https://github.com/andreanini/idiolect
* Source code: https://github.com/cran/idiolect
* Date/Publication: 2024-08-28 09:00:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::cloud_details(, "idiolect")` for more info

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
          ▆
       1. └─testthat::expect(ok = results.corpus[4, 4]) at test-impostors.R:123:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 3 | WARN 1 | SKIP 11 | PASS 14 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# imager

<details>

* Version: 1.0.5
* GitHub: https://github.com/asgr/imager
* Source code: https://github.com/cran/imager
* Date/Publication: 2025-08-02 09:30:02 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::cloud_details(, "imager")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(imager)
      Loading required package: magrittr
      
      Attaching package: 'magrittr'
      
      The following objects are masked from 'package:testthat':
    ...
          ▆
       1. └─testthat::expect(failure_message = TRUE) at test_load_save_videos.R:15:13
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.9Mb
      sub-directories of 1Mb or more:
        data      1.4Mb
        doc       3.7Mb
        extdata   1.0Mb
        include   3.3Mb
        libs     17.8Mb
    ```

# IMEC

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/IMEC
* Date/Publication: 2020-11-27 10:10:03 UTC
* Number of recursive dependencies: 100

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
          ▆
       1. └─testthat::expect(failure_message = <empty>) at test-0-basictests.R:60:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
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

# itan

<details>

* Version: 3.1.1
* GitHub: https://github.com/arielarmijo/itan
* Source code: https://github.com/cran/itan
* Date/Publication: 2022-02-10 13:40:06 UTC
* Number of recursive dependencies: 65

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
          ▆
       1. └─testthat::with_mock(...) at test-exercise.R:246:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 20 | PASS 812 ]
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
      Expected exactly one failure and no successes.
      Actually failed 2 times
      ── Failure ('test-expect_lint.R:50:3'): multiple checks ────────────────────────
      Expected exactly one success and no failures.
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
* Number of recursive dependencies: 108

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
* Number of recursive dependencies: 80

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
* Number of recursive dependencies: 48

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
* Number of recursive dependencies: 166

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
      Expected exactly one failure and no successes.
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

# moexer

<details>

* Version: 0.3.0
* GitHub: https://github.com/x1o/moexer
* Source code: https://github.com/cran/moexer
* Date/Publication: 2024-03-12 12:30:03 UTC
* Number of recursive dependencies: 79

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

# nhdplusTools

<details>

* Version: 1.3.2
* GitHub: https://github.com/doi-usgs/nhdplusTools
* Source code: https://github.com/cran/nhdplusTools
* Date/Publication: 2025-06-10 13:00:14 UTC
* Number of recursive dependencies: 134

Run `revdepcheck::cloud_details(, "nhdplusTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > 
      > test_check("nhdplusTools")
      Loading required package: nhdplusTools
      Starting 2 test processes.
      > test_02_subset.R: All intersections performed in latitude/longitude.
      > test_02_subset.R: All intersections performed in latitude/longitude.
    ...
          ▆
       1. └─testthat::expect(ok = nrow(out)) at test_02_subset_extras.R:75:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 58 | PASS 315 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        data   2.5Mb
        doc    5.1Mb
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

* Version: 1.4.3
* GitHub: https://github.com/mkborregaard/nodiv
* Source code: https://github.com/cran/nodiv
* Date/Publication: 2025-09-12 14:40:02 UTC
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
          ▆
       1. └─testthat::expect(failure_message = <empty>) at test_adding.R:4:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 63 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# openxlsx

<details>

* Version: 4.2.8
* GitHub: https://github.com/ycphs/openxlsx
* Source code: https://github.com/cran/openxlsx
* Date/Publication: 2025-01-25 20:30:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "openxlsx")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(openxlsx)
      > 
      > test_check("openxlsx")
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 1266 ]
      
      ══ Skipped tests (7) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect(ok = activeSheet(wbook)) at test-activeSheet.R:27:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 1266 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        extdata   1.2Mb
        libs      7.2Mb
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
* Number of recursive dependencies: 54

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
      [ FAIL 6 | WARN 2 | SKIP 1 | PASS 50 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::with_mock(...) at test_simulate.R:12:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 2 | SKIP 1 | PASS 50 ]
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
* Number of recursive dependencies: 79

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
* Number of recursive dependencies: 149

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

# phyloraster

<details>

* Version: 2.2.0
* GitHub: https://github.com/gabferreira/phyloraster
* Source code: https://github.com/cran/phyloraster
* Date/Publication: 2025-02-28 15:00:01 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "phyloraster")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(phyloraster)
      > 
      > test_check("phyloraster")
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 84 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::expect(failure_message = shp2rast(...)) at test-shp2rast.R:100:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 84 ]
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
* Number of recursive dependencies: 80

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
* Number of recursive dependencies: 125

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
      Expected exactly one success and no failures.
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

# productplots

<details>

* Version: 0.1.1
* GitHub: https://github.com/hadley/productplots
* Source code: https://github.com/cran/productplots
* Date/Publication: 2016-07-02 07:38:04
* Number of recursive dependencies: 49

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
* Number of recursive dependencies: 78

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

# rags2ridges

<details>

* Version: 2.2.8
* GitHub: https://github.com/CFWP/rags2ridges
* Source code: https://github.com/cran/rags2ridges
* Date/Publication: 2025-08-29 16:30:02 UTC
* Number of recursive dependencies: 94

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

# rmdl

<details>

* Version: 0.1.0
* GitHub: https://github.com/shah-in-boots/rmdl
* Source code: https://github.com/cran/rmdl
* Date/Publication: 2024-05-02 22:20:02 UTC
* Number of recursive dependencies: 101

Run `revdepcheck::cloud_details(, "rmdl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rmdl)
      Loading required package: vctrs
      Loading required package: tibble
      
      Attaching package: 'tibble'
      
    ...
          ▆
       1. └─testthat::expect(ok = length(t)) at test-terms.R:213:9
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 206 ]
      Error:
      ! Test failures.
      Execution halted
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

# rtables

<details>

* Version: 0.6.13
* GitHub: https://github.com/insightsengineering/rtables
* Source code: https://github.com/cran/rtables
* Date/Publication: 2025-06-19 19:20:06 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "rtables")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > if (requireNamespace("testthat", quietly = TRUE)) {
      +   library(testthat)
      +   library(rtables)
      +   test_check("rtables", reporter = "check")
      + }
      Loading required package: formatters
      
    ...
          ▆
       1. └─testthat::expect(ok = unlist(ares2$b)) at test-make-afun.R:135:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1746 ]
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
* Number of recursive dependencies: 90

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

# sassy

<details>

* Version: 1.2.8
* GitHub: https://github.com/dbosak01/sassy
* Source code: https://github.com/cran/sassy
* Date/Publication: 2025-09-10 09:00:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "sassy")` for more info

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
          ▆
       1. └─testthat::expect(failure_message = TRUE) at test-oq.R:171:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 11 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc       5.1Mb
        extdata   1.1Mb
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

# scoutbaR

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/scoutbaR
* Date/Publication: 2025-03-20 10:30:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "scoutbaR")` for more info

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
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 8 ]
      Deleting unused snapshots: 'scoutbar/simple-001.json',
      'scoutbar/simple-001_.png', 'scoutbar/simple-002.json',
      'scoutbar/simple-002_.png', 'scoutbar/simple-003.json', and
      'scoutbar/simple-003_.png'
      Error:
      ! Test failures.
      Execution halted
    ```

# scrutiny

<details>

* Version: 0.6.0
* GitHub: https://github.com/lhdjung/scrutiny
* Source code: https://github.com/cran/scrutiny
* Date/Publication: 2025-08-22 18:10:02 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "scrutiny")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > 
      > library(testthat)
      > library(scrutiny)
      > 
      > test_check("scrutiny")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 525 ]
    ...
       2. └─scrutiny:::expect_na(.)
       3.   └─testthat::expect(failure_message = msg_error) at ./helper-expectations.R:18:3
       4.     └─testthat:::check_character(failure_message)
       5.       └─testthat:::stop_input_type(...)
       6.         └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 525 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘janitor’
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
          ▆
       1. └─testthat::expect(failure_message = <empty>) at test-vcf.R:181:5
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
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

# shiny.benchmark

<details>

* Version: 0.1.1
* GitHub: https://github.com/Appsilon/shiny.benchmark
* Source code: https://github.com/cran/shiny.benchmark
* Date/Publication: 2023-01-20 09:50:02 UTC
* Number of recursive dependencies: 100

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
* Number of recursive dependencies: 94

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
* Number of recursive dependencies: 101

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

# ssdtools

<details>

* Version: 2.4.0
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2025-09-12 05:30:02 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::cloud_details(, "ssdtools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Copyright 2015-2023 Province of British Columbia
      > # Copyright 2021 Environment and Climate Change Canada
      > # Copyright 2023-2024 Australian Government Department of Climate Change,
      > # Energy, the Environment and Water
      > #
      > #    Licensed under the Apache License, Version 2.0 (the "License");
      > #    you may not use this file except in compliance with the License.
    ...
      'ggplot/geom_hcintersect.png', 'ggplot/geom_hcintersect_aes.png',
      'ggplot/geom_ssdpoint.png', 'ggplot/geom_ssdpoint_identity.png',
      'ggplot/geom_ssdsegment.png', 'ggplot/geom_ssdsegment_arrow.png',
      'ggplot/geom_ssdsegment_identity.png', 'ggplot/geom_ssdsegment_nodata.png',
      'ggplot/geom_xribbon.png', 'match-moments/cdf.png', 'plot-cdf/fits.png',
      'plot-cdf/fits_average.png', 'plot-cdf/fits_average_na.png', …,
      'ssd-plot/ribbon.png', and 'ssd-plot/suffix.png'
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 36.0Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs  33.2Mb
    ```

# tabr

<details>

* Version: 0.5.3
* GitHub: https://github.com/leonawicz/tabr
* Source code: https://github.com/cran/tabr
* Date/Publication: 2025-07-03 22:40:06 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::cloud_details(, "tabr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tabr)
      The tabr 0.5.3 LilyPond API was built and tested against LilyPond 2.22.1-2 on Linux.
      Local LilyPond installation not found (only required for transcription).
      > 
      > test_check("tabr")
      <Lyrics string>
    ...
          ▆
       1. └─testthat::expect(ok = n_steps(x)) at test-music.R:24:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 1 | SKIP 7 | PASS 1137 ]
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
      Expected exactly one failure and no successes.
      Actually failed 2 times
      
      [ FAIL 95 | WARN 0 | SKIP 0 | PASS 111 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# testex

<details>

* Version: 0.2.0
* GitHub: https://github.com/dgkf/testex
* Source code: https://github.com/cran/testex
* Date/Publication: 2024-04-14 23:30:02 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "testex")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(testex)
      > 
      > test_check("testex")
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 80 ]
      
    ...
        7. │   │ └─base::withVisible(code)
        8. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        9. └─callr::r(...) at test-pkgexample.R:15:5
       10.   └─callr:::get_result(output = out, options)
       11.     └─throw(callr_remote_error(remerr, output), parent = fix_msg(remerr[[3]]))
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 80 ]
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
* Number of recursive dependencies: 110

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
    Packages unavailable to check Rd xrefs: ‘h2o’, ‘spatialreg’, ‘eha’, ‘MuMIn’, ‘Bergm’, ‘mfx’, ‘betareg’, ‘biglm’, ‘brglm’, ‘brms’, ‘btergm’, ‘ordinal’, ‘dynlm’, ‘ergm’, ‘latentnet’, ‘forecast’, ‘fGarch’, ‘feisr’, ‘lfe’, ‘fixest’, ‘gamlss’, ‘gamlss.inf’, ‘gee’, ‘gmm’, ‘miceadds’, ‘glmmTMB’, ‘gnm’, ‘AER’, ‘robust’, ‘lqmm’, ‘rms’, ‘maxLik’, ‘mhurdle’, ‘mlogit’, ‘plm’, ‘pglm’, ‘relevent’, ‘remstimate’, ‘simex’, ‘speedglm’, ‘truncreg’, ‘VGAM’, ‘metaSEM’
    Unknown packages ‘bife’, ‘alpaca’, ‘oglmx’ in Rd xrefs
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

# threshr

<details>

* Version: 1.0.6
* GitHub: https://github.com/paulnorthrop/threshr
* Source code: https://github.com/cran/threshr
* Date/Publication: 2024-07-17 21:10:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "threshr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(threshr)
      > 
      > test_check("threshr")
      Fitting at threshold number ...
      1 2 3 4 5 6 7 8 9 10 [ FAIL 1 | WARN 0 | SKIP 0 | PASS 297 ]
      
    ...
          ▆
       1. └─testthat::expect(failure_message = TRUE) at test-plot_and_summary.R:22:3
       2.   └─testthat:::check_character(failure_message)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 297 ]
      Error:
      ! Test failures.
      Execution halted
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

# TrialEmulation

<details>

* Version: 0.0.4.5
* GitHub: https://github.com/Causal-LDA/TrialEmulation
* Source code: https://github.com/cran/TrialEmulation
* Date/Publication: 2025-06-13 10:10:08 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "TrialEmulation")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(TrialEmulation)
      > 
      > data.table::setDTthreads(2)
      > test_check("TrialEmulation")
      Starting data manipulation
      Starting data extension
    ...
          ▆
       1. └─testthat::expect(ok = nrow(result$data)) at test-data_preparation.R:175:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 4 | WARN 0 | SKIP 33 | PASS 458 ]
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

# uwot

<details>

* Version: 0.2.3
* GitHub: https://github.com/jlmelville/uwot
* Source code: https://github.com/cran/uwot
* Date/Publication: 2025-02-24 06:30:02 UTC
* Number of recursive dependencies: 92

Run `revdepcheck::cloud_details(, "uwot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(uwot)
      Loading required package: Matrix
      > 
      > test_check("uwot")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 955 ]
      
    ...
          ▆
       1. └─testthat::expect(ok = res_model$seed) at test_output.R:1046:3
       2.   └─testthat:::check_bool(ok)
       3.     └─testthat:::stop_input_type(...)
       4.       └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 955 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.1Mb
      sub-directories of 1Mb or more:
        libs  15.0Mb
    ```

# vein

<details>

* Version: 1.5.0
* GitHub: https://github.com/atmoschem/vein
* Source code: https://github.com/cran/vein
* Date/Publication: 2025-10-04 23:20:02 UTC
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

