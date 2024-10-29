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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-detect_syntax.R:27:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-error.R:9:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
      Error: Test failures
      Execution halted
    ```

# civis

<details>

* Version: 3.1.2
* GitHub: https://github.com/civisanalytics/civis-r
* Source code: https://github.com/cran/civis
* Date/Publication: 2023-03-31 08:00:03 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "civis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(civis)
      > 
      > test_check("civis")
      [ FAIL 139 | WARN 2 | SKIP 0 | PASS 370 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_utils.R:53:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 139 | WARN 2 | SKIP 0 | PASS 370 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘civis_scripts.Rmd’
      ...
    
    > knitr::opts_chunk$set(collapse = TRUE, comment = "#>", 
    +     eval = FALSE)
    
    > script <- scripts_post_containers(required_resources = list(cpu = 1024, 
    +     memory = 50, diskSpace = 15), docker_command = "cd /package_dir && Rs ..." ... [TRUNCATED] 
    
      When sourcing ‘civis_scripts.R’:
    Error: could not find function "scripts_post_containers"
    Execution halted
    
      ‘civis_ml.Rmd’ using ‘UTF-8’... OK
      ‘civis_scripts.Rmd’ using ‘UTF-8’... failed
      ‘concurrency.Rmd’ using ‘UTF-8’... OK
      ‘data_import_and_export.Rmd’ using ‘UTF-8’... OK
      ‘quick_start.Rmd’ using ‘UTF-8’... OK
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        help   3.6Mb
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:93:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 14 | WARN 0 | SKIP 4 | PASS 92 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(requireNamespace = function(...) FALSE, expect_error(countdown_app())) at test-shiny.R:7:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 43 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘xaringan’, ‘beepr’
    ```

# covr

<details>

* Version: 3.6.4
* GitHub: https://github.com/r-lib/covr
* Source code: https://github.com/cran/covr
* Date/Publication: 2023-11-09 08:10:06 UTC
* Number of recursive dependencies: 58

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:27:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 22 | WARN 0 | SKIP 10 | PASS 185 ]
      Error: Test failures
      Execution halted
    ```

# crossmap

<details>

* Version: 0.4.0
* GitHub: https://github.com/rossellhayes/crossmap
* Source code: https://github.com/cran/crossmap
* Date/Publication: 2023-01-12 21:50:02 UTC
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "crossmap")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(crossmap)
      > 
      > test_check("crossmap")
      [ FAIL 4 | WARN 2 | SKIP 0 | PASS 379 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::local_mock(...) at test-errors.R:24:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "local_mock()", "local_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 2 | SKIP 0 | PASS 379 ]
      Error: Test failures
      Execution halted
    ```

# crplyr

<details>

* Version: 0.4.0
* GitHub: https://github.com/Crunch-io/crplyr
* Source code: https://github.com/cran/crplyr
* Date/Publication: 2023-03-21 21:50:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "crplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(httptest)
      Loading required package: testthat
      > test_check("crplyr")
      Loading required package: crplyr
      Loading required package: crunch
      
    ...
        8. │     └─base::eval(expr, p)
        9. └─crplyr:::with_POST(...) at test-as-tibble.R:76:5
       10.   └─testthat::with_mock(`crunch::crPOST` = function(...) resp, eval.parent(expr))
       11.     └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       12.       └─lifecycle:::deprecate_stop0(msg)
       13.         └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 1 | SKIP 1 | PASS 154 ]
      Error: Test failures
      Execution halted
    ```

# crunch

<details>

* Version: 1.30.4
* GitHub: https://github.com/Crunch-io/rcrunch
* Source code: https://github.com/cran/crunch
* Date/Publication: 2024-01-17 09:00:02 UTC
* Number of recursive dependencies: 124

Run `revdepcheck::cloud_details(, "crunch")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(httptest)
      Loading required package: testthat
      > if (nchar(Sys.getenv("JENKINS_HOME"))) {
      +     tt_read_lines <- function(path, n = -1L, encoding = "UTF-8") {
      +         base::readLines(path, n = n, encoding = encoding, warn = FALSE)
      +     }
    ...
      [90m  8. [39m│     └─base::eval(expr, p)
      [90m  9. [39m└─[1mtestthat[22m::with_mock(...)[90m at test-share.R:90:5[39m
      [90m 10. [39m  └─[1mlifecycle[22m::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
      [90m 11. [39m    └─lifecycle:::deprecate_stop0(msg)
      [90m 12. [39m      └─[1mrlang[22m::cnd_signal(...)
      
      [ [38;5;214mFAIL[39m 21 | [35mWARN[39m 1 | [34mSKIP[39m 11 | PASS 3387 ]
      Error: Test failures
      Total teardown: Time difference of 4.053116e-05 secs
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘deck-cookbook.Rmd’
      ...
    +     library(crunch)
    + })
    
    > options(crunch.show.progress = FALSE)
    
    > ds <- newExampleDataset()
    
    ...
      ‘crunch.Rmd’ using ‘UTF-8’... OK
      ‘deck-cookbook.Rmd’ using ‘UTF-8’... failed
      ‘derive.Rmd’ using ‘UTF-8’... OK
      ‘export.Rmd’ using ‘UTF-8’... OK
      ‘filters.Rmd’ using ‘UTF-8’... OK
      ‘fork-and-merge.Rmd’ using ‘UTF-8’... OK
      ‘projects.Rmd’ using ‘UTF-8’... OK
      ‘subtotals.Rmd’ using ‘UTF-8’... OK
      ‘variable-order.Rmd’ using ‘UTF-8’... OK
      ‘variables.Rmd’ using ‘UTF-8’... OK
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        doc    1.0Mb
        help   1.6Mb
    ```

# crunchy

<details>

* Version: 0.3.3
* GitHub: https://github.com/Crunch-io/crunchy
* Source code: https://github.com/cran/crunchy
* Date/Publication: 2021-01-13 21:20:06 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::cloud_details(, "crunchy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("crunchy")
      Loading required package: crunchy
      Loading required package: crunch
      
      Attaching package: 'crunch'
    ...
       1. ├─withr::with_options(...) at test-crunchy-server.R:5:1
       2. │ └─base::force(code)
       3. └─testthat::with_mock(...)
       4.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       5.     └─lifecycle:::deprecate_stop0(msg)
       6.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 23 ]
      Error: Test failures
      Execution halted
    ```

# cyphr

<details>

* Version: 1.1.4
* GitHub: https://github.com/ropensci/cyphr
* Source code: https://github.com/cran/cyphr
* Date/Publication: 2022-06-20 11:30:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "cyphr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(cyphr)
      > 
      > test_check("cyphr")
      [ FAIL 6 | WARN 0 | SKIP 4 | PASS 272 ]
      
      ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-zzz-data.R:216:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 4 | PASS 272 ]
      Error: Test failures
      Execution halted
    ```

# datarobot

<details>

* Version: 2.18.6
* GitHub: NA
* Source code: https://github.com/cran/datarobot
* Date/Publication: 2024-03-13 20:40:02 UTC
* Number of recursive dependencies: 99

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-StartAutopilot.R:461:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 32 | PASS 98 ]
      Error: Test failures
      Execution halted
    ```

# dendextend

<details>

* Version: 1.19.0
* GitHub: https://github.com/talgalili/dendextend
* Source code: https://github.com/cran/dendextend
* Date/Publication: 2024-11-15 10:40:06 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::cloud_details(, "dendextend")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > library(dendextend)
      
      ---------------------
      Welcome to dendextend version 1.19.0
      Type citation('dendextend') for how to cite the package.
    ...
        8. │   │     └─base::withVisible(code)
        9. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       10. └─testthat::with_mock(...)
       11.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       12.     └─lifecycle:::deprecate_stop0(msg)
       13.       └─rlang::cnd_signal(...)
      
      [ FAIL 10 | WARN 1 | SKIP 0 | PASS 858 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘FAQ.Rmd’
      ...
    > dend <- dend %>% color_branches(k = 4) %>% color_labels
    
    > par(mar = rep(0, 4))
    
    > circlize_dendrogram(dend, labels_track_height = NA, 
    +     dend_track_height = 0.3)
    
      When sourcing ‘FAQ.R’:
    Error: not enough space for cells at track index '2'.
    Execution halted
    
      ‘Cluster_Analysis.Rmd’ using ‘UTF-8’... OK
      ‘FAQ.Rmd’ using ‘UTF-8’... failed
      ‘Quick_Introduction.Rmd’ using ‘UTF-8’... OK
      ‘dendextend.Rmd’ using ‘UTF-8’... OK
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'ggdendro', 'dendroextras', 'Hmisc', 'WGCNA', 'moduleColor',
      'distory', 'phangorn', 'zoo'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘WGCNA’, ‘dendroextras’, ‘moduleColor’, ‘distory’, ‘phangorn’, ‘ggdendro’, ‘zoo’
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-unit.r:9:13
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
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
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─distro (local) with_mock_system_release(...)
       5.   └─testthat::with_mock(...) at test-system-release.R:2:3
       6.     └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       7.       └─lifecycle:::deprecate_stop0(msg)
       8.         └─rlang::cnd_signal(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# dRiftDM

<details>

* Version: 0.2.1
* GitHub: https://github.com/bucky2177/dRiftDM
* Source code: https://github.com/cran/dRiftDM
* Date/Publication: 2025-01-08 16:30:05 UTC
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "dRiftDM")` for more info

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
       7.         └─lifecycle:::deprecate_stop0(msg)
       8.           └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 14 | PASS 670 ]
      Deleting unused snapshots:
      • plotting/cond-prms-hist.svg
      • plotting/one-traces.svg
      • plotting/plot-model.svg
      Error: Test failures
      Execution halted
    ```

# DSMolgenisArmadillo

<details>

* Version: 2.0.9
* GitHub: https://github.com/molgenis/molgenis-r-datashield
* Source code: https://github.com/cran/DSMolgenisArmadillo
* Date/Publication: 2024-07-09 07:50:08 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::cloud_details(, "DSMolgenisArmadillo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(DSMolgenisArmadillo)
      Loading required package: DSI
      Loading required package: progress
      Loading required package: R6
      Loading required package: MolgenisAuth
      > library(tibble)
    ...
        7. │   │ └─base::withVisible(code)
        8. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        9. └─testthat::with_mock(...)
       10.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       11.     └─lifecycle:::deprecate_stop0(msg)
       12.       └─rlang::cnd_signal(...)
      
      [ FAIL 55 | WARN 0 | SKIP 1 | PASS 9 ]
      Error: Test failures
      Execution halted
    ```

# gbfs

<details>

* Version: 1.3.9
* GitHub: https://github.com/simonpcouch/gbfs
* Source code: https://github.com/cran/gbfs
* Date/Publication: 2024-01-25 22:10:06 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "gbfs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(gbfs)
      > 
      > test_check("gbfs")
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 5 ]
      
      ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:105:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# gen3sis

<details>

* Version: 1.5.11
* GitHub: https://github.com/project-Gen3sis/R-package
* Source code: https://github.com/cran/gen3sis
* Date/Publication: 2023-11-22 15:20:06 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "gen3sis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Copyright (c) 2020, ETH Zurich
      > 
      > library(testthat)
      > library(gen3sis)
      > 
      > test_check("gen3sis")
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 23 ]
    ...
      Backtrace:
          ▆
       1. └─testthat::local_mock(...) at test-input_creation.R:16:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "local_mock()", "local_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 23 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘create_input_landscape.Rmd’
      ...
    > library(gen3sis)
    
    > library(raster)
    Loading required package: sp
    
    > knitr::include_graphics("../inst/extdata/SouthAmerica/images/const_cost.png")
    
    ...
    > knitr::include_graphics("../inst/logo/gen3sis_logo.png")
    
      When sourcing ‘introduction.R’:
    Error: Cannot find the file(s): "../inst/logo/gen3sis_logo.png"
    Execution halted
    
      ‘create_config.Rmd’ using ‘UTF-8’... OK
      ‘create_input_landscape.Rmd’ using ‘UTF-8’... failed
      ‘design_landscape.Rmd’ using ‘UTF-8’... failed
      ‘introduction.Rmd’ using ‘UTF-8’... failed
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.5Mb
        libs      2.3Mb
    ```

# graphhopper

<details>

* Version: 0.1.2
* GitHub: https://github.com/crazycapivara/graphhopper-r
* Source code: https://github.com/cran/graphhopper
* Date/Publication: 2021-02-06 16:50:02 UTC
* Number of recursive dependencies: 71

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_route.R:9:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# gwasrapidd

<details>

* Version: 0.99.17
* GitHub: https://github.com/ramiromagno/gwasrapidd
* Source code: https://github.com/cran/gwasrapidd
* Date/Publication: 2023-12-15 21:50:08 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "gwasrapidd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(gwasrapidd)
      > 
      > test_check("gwasrapidd")
      [ FAIL 34 | WARN 2 | SKIP 1 | PASS 649 ]
      
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(`testthat::skip` = function(...) FALSE, expect_false(skip_if_testing_is_fast())) at test-tests.R:30:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 34 | WARN 2 | SKIP 1 | PASS 649 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘gwasrapidd.Rmd’
      ...
    
    > knitr::include_graphics("../man/figures/get_fns.png")
    
      When sourcing ‘gwasrapidd.R’:
    Error: Cannot find the file(s): "../man/figures/get_fns.png"
    Execution halted
    
      ‘bmi_variants.Rmd’ using ‘UTF-8’... OK
      ‘faq.Rmd’ using ‘UTF-8’... OK
      ‘gwasrapidd.Rmd’ using ‘UTF-8’... failed
    ```

# hereR

<details>

* Version: 1.0.1
* GitHub: https://github.com/munterfi/hereR
* Source code: https://github.com/cran/hereR
* Date/Publication: 2024-11-27 22:20:02 UTC
* Number of recursive dependencies: 117

Run `revdepcheck::cloud_details(, "hereR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(hereR)
      > 
      > test_check("hereR")
      [ FAIL 15 | WARN 0 | SKIP 0 | PASS 107 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-weather_observation.R:9:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 15 | WARN 0 | SKIP 0 | PASS 107 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_time.R:214:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 96 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# ieegio

<details>

* Version: 0.0.2
* GitHub: https://github.com/dipterix/ieegio
* Source code: https://github.com/cran/ieegio
* Date/Publication: 2024-10-31 23:20:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "ieegio")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ieegio-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: imaging-volume
    > ### Title: Read and write volume data
    > ### Aliases: imaging-volume read_volume write_volume io_read_mgz
    > ###   io_write_mgz io_write_mgz.ieegio_volume io_write_mgz.ieegio_mgh
    > ###   io_write_mgz.nifti io_write_mgz.niftiImage
    > ###   io_write_mgz.ants.core.ants_image.ANTsImage io_write_mgz.array
    > ###   io_read_nii io_write_nii io_write_nii.ieegio_nifti
    ...
    + # clean up
    + unlink(f)
    + unlink(f2)
    + 
    + }
    <simpleWarning in check_forbidden_install("Miniconda"): cannot install Miniconda during R CMD check>
    Warning in check_forbidden_install("Conda Environments") :
      cannot install Conda Environments during R CMD check
    Error: Unable to find conda binary. Is Anaconda installed?
    Execution halted
    ```

# ipaddress

<details>

* Version: 1.0.2
* GitHub: https://github.com/davidchall/ipaddress
* Source code: https://github.com/cran/ipaddress
* Date/Publication: 2023-12-01 23:10:02 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "ipaddress")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ipaddress)
      > 
      > test_check("ipaddress")
      [ FAIL 1 | WARN 0 | SKIP 42 | PASS 596 ]
      
      ══ Skipped tests (42) ══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::local_mock(`ipaddress:::is_offline` = function() TRUE) at test-ip_to_hostname.R:49:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "local_mock()", "local_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 42 | PASS 596 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        libs  12.5Mb
    ```

# isotracer

<details>

* Version: 1.1.7
* GitHub: NA
* Source code: https://github.com/cran/isotracer
* Date/Publication: 2024-11-05 03:20:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::cloud_details(, "isotracer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(isotracer)
      To automatically run isotracer in parallel on a multicore CPU, you can call:
        options(mc.cores = parallel::detectCores())
      
      
      Attaching package: 'isotracer'
    ...
       1. ├─testthat::expect_error(plot(p), NA) at test-integration.R:207:13
       2. │ └─testthat:::quasi_capture(...)
       3. │   ├─testthat (local) .capture(...)
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─base::plot(p)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 581 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking whether package ‘isotracer’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘lubridate’ is not available and has been replaced
    See ‘/tmp/workdir/isotracer/new/isotracer.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 93.4Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        data   4.0Mb
        doc    2.3Mb
        libs  85.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# JAGStree

<details>

* Version: 1.0.1
* GitHub: https://github.com/malfly/JAGStree
* Source code: https://github.com/cran/JAGStree
* Date/Publication: 2024-11-11 12:00:13 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::cloud_details(, "JAGStree")` for more info

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
       2. │ └─testthat::quasi_label(enquo(object), arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─testthat::with_mock(...)
       5.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       6.     └─lifecycle:::deprecate_stop0(msg)
       7.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DiagrammeR’
      All declared Imports should be used.
    ```

# leaflet.minicharts

<details>

* Version: 0.6.2
* GitHub: NA
* Source code: https://github.com/cran/leaflet.minicharts
* Date/Publication: 2021-05-11 09:20:10 UTC
* Number of recursive dependencies: 87

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-minicharts.R:12:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

# learnr

<details>

* Version: 0.11.5
* GitHub: https://github.com/rstudio/learnr
* Source code: https://github.com/cran/learnr
* Date/Publication: 2023-09-28 05:00:02 UTC
* Number of recursive dependencies: 85

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-exercise.R:246:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 20 | PASS 803 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-rule.R:30:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 31 ]
      Error: Test failures
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
* Number of recursive dependencies: 103

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
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 650 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       1. ├─base::suppressWarnings(...) at test-on_done.R:24:5
       2. │ └─base::withCallingHandlers(...)
       3. └─testthat::with_mock(...) at test-on_done.R:24:23
       4.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       5.     └─lifecycle:::deprecate_stop0(msg)
       6.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 650 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# mbbe

<details>

* Version: 0.1.0
* GitHub: https://github.com/certara/mbbe
* Source code: https://github.com/cran/mbbe
* Date/Publication: 2024-02-03 11:20:02 UTC
* Number of recursive dependencies: 85

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-check_requirements.R:39:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      Error: Test failures
      Execution halted
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
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─metaDigitise (local) point_extraction_tester_func(object = list(plot_type = "mean_error"))
       5.   └─testthat::with_mock(...) at test-point_extraction.R:9:9
       6.     └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       7.       └─lifecycle:::deprecate_stop0(msg)
       8.         └─rlang::cnd_signal(...)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 35 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-packing.R:146:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
      Error: Test failures
      Execution halted
    ```

# mockery

<details>

* Version: 0.4.4
* GitHub: https://github.com/r-lib/mockery
* Source code: https://github.com/cran/mockery
* Date/Publication: 2023-09-26 18:50:02 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "mockery")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘mockery-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: call-expectations
    > ### Title: Expectation: does the given call match the expected?
    > ### Aliases: call-expectations expect_call expect_args expect_called
    > 
    > ### ** Examples
    > 
    > library(testthat)
    ...
    Error:
    ! `with_mock()` was deprecated in testthat 3.3.0 and is now defunct.
    ℹ Please use `with_mocked_bindings()` instead.
    Backtrace:
        ▆
     1. └─testthat::with_mock(summary = m, summary(iris))
     2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
     3.     └─lifecycle:::deprecate_stop0(msg)
     4.       └─rlang::cnd_signal(...)
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(mockery)
      > 
      > test_check("mockery")
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 90 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-mock-object.R:153:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 90 ]
      Error: Test failures
      Execution halted
    ```

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘mocks-and-testthat.Rmd’
      ...
    > f <- function(x) summary(x)
    
    > with_mock(f = m, {
    +     expect_equal(f(iris), 1)
    + })
    
      When sourcing ‘mocks-and-testthat.R’:
    Error: `with_mock()` was deprecated in testthat 3.3.0 and is now defunct.
    ℹ Please use `with_mocked_bindings()` instead.
    Execution halted
    
      ‘mocks-and-testthat.Rmd’ using ‘UTF-8’... failed
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mocks-and-testthat.Rmd’ using rmarkdown
    
    Quitting from lines 137-144 [with_mock] (mocks-and-testthat.Rmd)
    Error: processing vignette 'mocks-and-testthat.Rmd' failed with diagnostics:
    `with_mock()` was deprecated in testthat 3.3.0 and is now defunct.
    ℹ Please use `with_mocked_bindings()` instead.
    --- failed re-building ‘mocks-and-testthat.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mocks-and-testthat.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# moexer

<details>

* Version: 0.3.0
* GitHub: https://github.com/x1o/moexer
* Source code: https://github.com/cran/moexer
* Date/Publication: 2024-03-12 12:30:03 UTC
* Number of recursive dependencies: 86

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-iss.R:3:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# MolgenisArmadillo

<details>

* Version: 2.7.0
* GitHub: https://github.com/molgenis/molgenis-r-armadillo
* Source code: https://github.com/cran/MolgenisArmadillo
* Date/Publication: 2024-10-14 13:00:03 UTC
* Number of recursive dependencies: 85

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
      CrulAdapter enabled!
    ...
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:11:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 24 | WARN 0 | SKIP 0 | PASS 130 ]
      Error: Test failures
      Execution halted
      Ran 1/1 deferred expressions
    ```

# MolgenisAuth

<details>

* Version: 0.0.25
* GitHub: https://github.com/molgenis/molgenis-r-auth
* Source code: https://github.com/cran/MolgenisAuth
* Date/Publication: 2023-02-20 11:00:09 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "MolgenisAuth")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(MolgenisAuth)
      > 
      > test_check("MolgenisAuth")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-auth.R:61:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-search.r:4:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
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
       2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─testthat::with_mock(...)
       5.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       6.     └─lifecycle:::deprecate_stop0(msg)
       7.       └─rlang::cnd_signal(...)
      
      [ FAIL 17 | WARN 0 | SKIP 38 | PASS 147 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘nhl_players_api.Rmd’
      ...
    17:08:21 | W | nhl_from_json https://statsapi.web.nhl.com/api/v1/people/8451101 error for attempt no: 2 cannot open the connection to 'https://statsapi.web.nhl.com/api/v1/people/8451101'
    17:08:21 | E | The following 2 of 2 url retrievals errored:$ https://statsapi.web.nhl.com/api/v1/people/made up player$ https://statsapi.web.nhl.com/api/v1/people/8451101 
    data frame with 0 columns and 0 rows
    
    > nhl_players(playerIds = playerIds) %>% select(fullName, 
    +     nationality, shootsCatches, primaryPosition.code)
    
    ...
    > roster_devils <- rosters %>% filter(name == "New Jersey Devils") %>% 
    +     pull(roster.roster) %>% first()
    
      When sourcing ‘nhl_teams_api.R’:
    Error: could not find function "%>%"
    Execution halted
    
      ‘low_level_api.Rmd’ using ‘UTF-8’... OK
      ‘nhl_players_api.Rmd’ using ‘UTF-8’... failed
      ‘nhl_teams_api.Rmd’ using ‘UTF-8’... failed
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# odin

<details>

* Version: 1.2.6
* GitHub: https://github.com/mrc-ide/odin
* Source code: https://github.com/cran/odin
* Date/Publication: 2024-09-23 16:10:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "odin")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(odin)
      > 
      > test_check("odin")
      [ FAIL 1 | WARN 0 | SKIP 23 | PASS 1053 ]
      
      ══ Skipped tests (23) ══════════════════════════════════════════════════════════
    ...
       1. ├─withr::with_envvar(...) at test-util.R:148:3
       2. │ └─base::force(code)
       3. └─testthat::with_mock(...)
       4.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       5.     └─lifecycle:::deprecate_stop0(msg)
       6.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 23 | PASS 1053 ]
      Error: Test failures
      Execution halted
    ```

# opendatatoronto

<details>

* Version: 0.1.5
* GitHub: https://github.com/sharlagelfand/opendatatoronto
* Source code: https://github.com/cran/opendatatoronto
* Date/Publication: 2022-04-13 11:30:05 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::cloud_details(, "opendatatoronto")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(opendatatoronto)
      > 
      > test_check("opendatatoronto")
      [ FAIL 7 | WARN 0 | SKIP 13 | PASS 44 ]
      
      ══ Skipped tests (13) ══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:139:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 7 | WARN 0 | SKIP 13 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

# overture

<details>

* Version: 0.4-0
* GitHub: https://github.com/kurtis-s/overture
* Source code: https://github.com/cran/overture
* Date/Publication: 2019-08-10 22:30:02 UTC
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "overture")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(overture)
      > 
      > test_check("overture")
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 100 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       6. └─testthat::with_mock(...)
       7.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      ── Failure ('test-mcmc.R:403:5'): Error message given if backing file can't be removed ──
      mock object has not been called 1 time
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 100 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# owmr

<details>

* Version: 0.8.2
* GitHub: https://github.com/crazycapivara/owmr
* Source code: https://github.com/cran/owmr
* Date/Publication: 2020-01-11 14:30:02 UTC
* Number of recursive dependencies: 82

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_forecast.R:8:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 3 | SKIP 0 | PASS 28 ]
      Error: Test failures
      Execution halted
    ```

# oxcAAR

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/oxcAAR
* Date/Publication: 2021-07-05 17:20:02 UTC
* Number of recursive dependencies: 65

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_simulate.R:12:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 1 | SKIP 1 | PASS 50 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘basic-usage.Rmd’
      ...
    Oxcal doesn't seem to be installed. Downloading it now:
    trying URL 'https://c14.arch.ox.ac.uk/OxCalDistribution.zip'
    Error Downloading OxCalDistribution.zip:
    URL 'https://c14.arch.ox.ac.uk/OxCalDistribution.zip': Timeout of 60 seconds was reached
    No internet connection or data source broken?
    The Oxcal executable path could not be set:
    
      When sourcing ‘basic-usage.R’:
    Error: No file at given location
    Execution halted
    
      ‘basic-usage.Rmd’ using ‘UTF-8’... failed
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘basic-usage.Rmd’ using rmarkdown
    trying URL 'https://c14.arch.ox.ac.uk/OxCalDistribution.zip'
    
    Quitting from lines 24-31 [unnamed-chunk-1] (basic-usage.Rmd)
    Error: processing vignette 'basic-usage.Rmd' failed with diagnostics:
    no 'restart' 'muffleWarning' found
    --- failed re-building ‘basic-usage.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘basic-usage.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# passport

<details>

* Version: 0.3.0
* GitHub: https://github.com/alistaire47/passport
* Source code: https://github.com/cran/passport
* Date/Publication: 2020-11-07 07:30:03 UTC
* Number of recursive dependencies: 87

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
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─testthat::with_mock(...)
       7.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 4 | SKIP 1 | PASS 37 ]
      Error: Test failures
      Execution halted
    ```

# patrick

<details>

* Version: 0.2.0
* GitHub: https://github.com/google/patrick
* Source code: https://github.com/cran/patrick
* Date/Publication: 2022-10-13 18:20:02 UTC
* Number of recursive dependencies: 34

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
      Backtrace:
          ▆
       1. └─testthat::local_mock(...) at test-with_parameters.R:100:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "local_mock()", "local_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 18 ]
      Error: Test failures
      Execution halted
    ```

# plumber

<details>

* Version: 1.2.2
* GitHub: https://github.com/rstudio/plumber
* Source code: https://github.com/cran/plumber
* Date/Publication: 2024-03-26 00:00:06 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::cloud_details(, "plumber")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(plumber)
      > 
      > test_check("plumber")
      [ FAIL 2 | WARN 0 | SKIP 15 | PASS 1997 ]
      
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-plumber-run.R:105:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 15 | PASS 1997 ]
      Error: Test failures
      Execution halted
    ```

# pocketapi

<details>

* Version: 0.1
* GitHub: https://github.com/CorrelAid/pocketapi
* Source code: https://github.com/cran/pocketapi
* Date/Publication: 2020-11-20 10:20:02 UTC
* Number of recursive dependencies: 87

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_pocket_unfavorite.R:22:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 45 ]
      Error: Test failures
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

# projmgr

<details>

* Version: 0.1.1
* GitHub: https://github.com/emilyriederer/projmgr
* Source code: https://github.com/cran/projmgr
* Date/Publication: 2024-01-24 05:10:02 UTC
* Number of recursive dependencies: 85

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...)
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 1 | SKIP 3 | PASS 106 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-search.r:4:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
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
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 4128 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-05_calc_myreg.R:235:9
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 4128 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# rentrez

<details>

* Version: 1.2.3
* GitHub: https://github.com/ropensci/rentrez
* Source code: https://github.com/cran/rentrez
* Date/Publication: 2020-11-10 21:10:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "rentrez")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘rentrez_tutorial.Rmd’
      ...
    > all_the_links <- entrez_link(dbfrom = "gene", id = 351, 
    +     db = "all")
    Warning in check_xml_errors(x) :
      NCBI C++ Exception:
        Error: TXCLIENT(CException::eUnknown) "/pubmed_gen/rbuild/version/20240724/entrez/2.19/src/internal/txclient/TxClient.cpp", line 1045: ncbi::CTxRawClientImpl::readAll() --- Read failed: EOF (the other side has unexpectedly closed connection), peer: 130.14.22.29:8064
    
    
      When sourcing ‘rentrez_tutorial.R’:
    Error: subscript out of bounds
    Execution halted
    
      ‘rentrez_tutorial.Rmd’ using ‘UTF-8’... failed
    ```

# reportr

<details>

* Version: 1.3.0
* GitHub: https://github.com/jonclayden/reportr
* Source code: https://github.com/cran/reportr
* Date/Publication: 2018-10-26 15:20:03 UTC
* Number of recursive dependencies: 25

Run `revdepcheck::cloud_details(, "reportr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(reportr)
      > 
      > test_check("reportr")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 17 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-10-ask.R:7:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 17 ]
      Error: Test failures
      Execution halted
    ```

# restez

<details>

* Version: 2.1.4
* GitHub: https://github.com/ropensci/restez
* Source code: https://github.com/cran/restez
* Date/Publication: 2023-10-25 10:30:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "restez")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > test_check("restez")
      Loading required package: restez
      ... Creating 'test_db_fldr/restez'
      ... Creating 'test_db_fldr/restez/downloads'
      ... Creating 'test_db_fldr/restez'
      ... Creating 'test_db_fldr/restez/downloads'
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-rentrez-wrappers.R:28:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 5 | WARN 0 | SKIP 2 | PASS 128 ]
      Error: Test failures
      Execution halted
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
      y[1]: ""
      ── Failure ('test-zzz.R:8:3'): initialization is okay ──────────────────────────
      getOption("Rexperigen.password") not equal to "".
      1/1 mismatches
      x[1]: "korte"
      y[1]: ""
      
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 23 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rnbp

<details>

* Version: 0.2.1
* GitHub: https://github.com/szymanskir/rnbp
* Source code: https://github.com/cran/rnbp
* Date/Publication: 2021-06-07 07:30:02 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "rnbp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rnbp)
      > 
      > test_check("rnbp")
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 25 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
       2. │ └─base::eval.parent(expr)
       3. │   └─base::eval(expr, p)
       4. └─testthat::with_mock(...) at test-endpoint_tables.R:11:3
       5.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       6.     └─lifecycle:::deprecate_stop0(msg)
       7.       └─rlang::cnd_signal(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 25 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_api.R:14:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 13 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_package_lib.R:22:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 646 ]
      Error: Test failures
      Execution halted
    ```

# RPresto

<details>

* Version: 1.4.7
* GitHub: https://github.com/prestodb/RPresto
* Source code: https://github.com/cran/RPresto
* Date/Publication: 2025-01-08 05:40:17 UTC
* Number of recursive dependencies: 70

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
          ▆
       1. └─RPresto:::setup_mock_connection() at test-fetch.R:26:3
       2.   └─testthat::with_mock(...) at tests/testthat/helper-mock_connection.R:8:3
       3.     └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       4.       └─lifecycle:::deprecate_stop0(msg)
       5.         └─rlang::cnd_signal(...)
      
      [ FAIL 30 | WARN 0 | SKIP 83 | PASS 36 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘common-table-expressions.Rmd’
      ...
    > packageVersion("RPresto")
    [1] ‘1.4.7’
    
    > con <- DBI::dbConnect(drv = RPresto::Presto(), host = "http://localhost", 
    +     port = 8080, user = Sys.getenv("USER"), catalog = "memory", 
    +      .... [TRUNCATED] 
    
    ...
    +     port = 8080, user = Sys.getenv("USER"), catalog = "memory", 
    +      .... [TRUNCATED] 
    
      When sourcing ‘primitive-types.R’:
    Error: Couldn't connect to server [localhost]: Failed to connect to localhost port 8080 after 0 ms: Couldn't connect to server
    Execution halted
    
      ‘common-table-expressions.Rmd’ using ‘UTF-8’... failed
      ‘complex-types.Rmd’ using ‘UTF-8’... failed
      ‘primitive-types.Rmd’ using ‘UTF-8’... failed
    ```

# RTD

<details>

* Version: 0.4.1
* GitHub: https://github.com/treasure-data/RTD
* Source code: https://github.com/cran/RTD
* Date/Publication: 2020-07-26 23:10:22 UTC
* Number of recursive dependencies: 115

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
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
      Ran 2/2 deferred expressions
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Ryacas0

<details>

* Version: 0.4.4
* GitHub: https://github.com/r-cas/ryacas0
* Source code: https://github.com/cran/Ryacas0
* Date/Publication: 2023-01-12 09:50:05 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "Ryacas0")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > test_check('Ryacas0')
      Loading required package: Ryacas0
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 44 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-simple.R:38:3'): Yacas mode ────────────────────────────────────
    ...
       4. ├─utils::capture.output(...)
       5. │ └─base::withVisible(...elt(i))
       6. └─testthat::with_mock(...)
       7.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        libs   11.0Mb
        yacas   1.4Mb
    ```

# shiny.benchmark

<details>

* Version: 0.1.1
* GitHub: https://github.com/Appsilon/shiny.benchmark
* Source code: https://github.com/cran/shiny.benchmark
* Date/Publication: 2023-01-20 09:50:02 UTC
* Number of recursive dependencies: 108

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
       1. └─base::eval(...)
       2.   └─base::eval(...)
       3.     └─testthat::local_mock(menu = function(...) 2) at test-load_example.R:74:5
       4.       └─lifecycle::deprecate_stop("3.3.0", "local_mock()", "local_mocked_bindings()")
       5.         └─lifecycle:::deprecate_stop0(msg)
       6.           └─rlang::cnd_signal(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 7 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-shinyShortcut.R:5:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# skimr

<details>

* Version: 2.1.5
* GitHub: https://github.com/ropensci/skimr
* Source code: https://github.com/cran/skimr
* Date/Publication: 2022-12-23 11:10:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "skimr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(skimr)
      
      Attaching package: 'skimr'
      
      The following object is masked from 'package:testthat':
      
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-skim_with.R:138:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 25 | PASS 630 ]
      Error: Test failures
      Execution halted
    ```

# spaero

<details>

* Version: 0.6.0
* GitHub: https://github.com/e3bo/spaero
* Source code: https://github.com/cran/spaero
* Date/Publication: 2020-09-26 23:50:03 UTC
* Number of recursive dependencies: 104

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
      [ FAIL 1 | WARN 2 | SKIP 8 | PASS 41 ]
      
      ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-simulator.R:6:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 2 | SKIP 8 | PASS 41 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# starwarsdb

<details>

* Version: 0.1.2
* GitHub: https://github.com/gadenbuie/starwarsdb
* Source code: https://github.com/cran/starwarsdb
* Date/Publication: 2020-11-02 23:50:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "starwarsdb")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(starwarsdb)
      > 
      > test_check("starwarsdb")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 31 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-dm.R:56:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 31 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 14 marked UTF-8 strings
    ```

# taxonomizr

<details>

* Version: 0.10.7
* GitHub: https://github.com/sherrillmix/taxonomizr
* Source code: https://github.com/cran/taxonomizr
* Date/Publication: 2025-01-08 16:50:02 UTC
* Number of recursive dependencies: 55

Run `revdepcheck::cloud_details(, "taxonomizr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(taxonomizr)
      > library(data.table)
      > library(RSQLite)
      > test_check("taxonomizr")
      
      Download status: 0 done; 1 in progress (0 b/s). Total size: 359 b (100%)...
    ...
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─testthat::with_mock(...)
       7.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 354 ]
      Error: Test failures
      Execution halted
    ```

# texreg

<details>

* Version: 1.39.4
* GitHub: https://github.com/leifeld/texreg
* Source code: https://github.com/cran/texreg
* Date/Publication: 2024-07-24 12:20:01 UTC
* Number of recursive dependencies: 108

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-texreg.R:319:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 1 | SKIP 34 | PASS 199 ]
      Error: Test failures
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
    Packages unavailable to check Rd xrefs: ‘h2o’, ‘spatialreg’, ‘eha’, ‘MuMIn’, ‘Bergm’, ‘mfx’, ‘betareg’, ‘bife’, ‘biglm’, ‘brglm’, ‘brms’, ‘btergm’, ‘ordinal’, ‘dynlm’, ‘ergm’, ‘latentnet’, ‘forecast’, ‘fGarch’, ‘alpaca’, ‘feisr’, ‘lfe’, ‘fixest’, ‘gamlss’, ‘gamlss.inf’, ‘gee’, ‘gmm’, ‘miceadds’, ‘glmmTMB’, ‘gnm’, ‘AER’, ‘robust’, ‘lqmm’, ‘maxLik’, ‘mhurdle’, ‘mlogit’, ‘oglmx’, ‘plm’, ‘pglm’, ‘relevent’, ‘remstimate’, ‘simex’, ‘speedglm’, ‘truncreg’, ‘VGAM’, ‘metaSEM’
    Unknown package ‘rms’ in Rd xrefs
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-starring.R:3:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-commandArgs.R:3:1
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 5 | SKIP 0 | PASS 73 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_platform_functions.R:37:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 436 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘log2console’
    ```

# tuneRanger

<details>

* Version: 0.7
* GitHub: NA
* Source code: https://github.com/cran/tuneRanger
* Date/Publication: 2024-03-20 22:20:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "tuneRanger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(tuneRanger)
      Loading required package: ranger
      Loading required package: mlrMBO
      Loading required package: mlr
      Loading required package: ParamHelpers
      Loading required package: smoof
    ...
        6.   ├─base (local) fun3(do.call(trainLearner, pars))
        7.   ├─base::do.call(trainLearner, pars)
        8.   ├─mlr (local) `<fn>`(.learner = `<srv.tnMF>`, .task = `<SurvTask>`, .subset = NULL)
        9.   └─tuneRanger:::trainLearner.surv.tuneMtryFast(...)
       10.     └─tuneRanger::tuneMtryFast(...)
       11.       └─ranger::ranger(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘randomForest’
    ```

# uptasticsearch

<details>

* Version: 0.4.0
* GitHub: https://github.com/uptake/uptasticsearch
* Source code: https://github.com/cran/uptasticsearch
* Date/Publication: 2019-09-11 18:30:03 UTC
* Number of recursive dependencies: 57

Run `revdepcheck::cloud_details(, "uptasticsearch")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Note that you would never run this file directly. This is used by tools::testInstallPackages()
      > # and other packages like covr.
      > # To actually run the tests, you need to set the working directory then run
      > # devtools::test('r-pkg/uptasticsearch')
      > 
      > # This line ensures that R CMD check can run tests.
      > # See https://github.com/hadley/testthat/issues/144
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-get_fields.R:33:19
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 17 | PASS 288 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-whatif_convexhull.R:16:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# ZillowR

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/ZillowR
* Date/Publication: 2022-05-05 02:10:02 UTC
* Number of recursive dependencies: 64

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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-GetZestimate.R:7:5
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 125 ]
      Error: Test failures
      Execution halted
    ```

# zoltr

<details>

* Version: 1.0.1
* GitHub: https://github.com/reichlab/zoltr
* Source code: https://github.com/cran/zoltr
* Date/Publication: 2024-06-27 17:00:02 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::cloud_details(, "zoltr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(zoltr)
      > 
      > test_check("zoltr")
      [ FAIL 46 | WARN 0 | SKIP 0 | PASS 24 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-project.R:500:3
       2.   └─lifecycle::deprecate_stop("3.3.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 46 | WARN 0 | SKIP 0 | PASS 24 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘getting-started.Rmd’
      ...
    
    > zoltar_connection <- new_connection(host = Sys.getenv("Z_HOST"))
    
    > zoltar_authenticate(zoltar_connection, Sys.getenv("Z_USERNAME"), 
    +     Sys.getenv("Z_PASSWORD"))
    get_token(): POST: /api-token-auth/
    
    ...
    > zoltar_authenticate(zoltar_connection, Sys.getenv("Z_USERNAME"), 
    +     Sys.getenv("Z_PASSWORD"))
    get_token(): POST: /api-token-auth/
    
      When sourcing ‘project-owners.R’:
    Error: URL using bad/illegal format or missing URL: URL rejected: No host part in the URL
    Execution halted
    
      ‘getting-started.Rmd’ using ‘UTF-8’... failed
      ‘project-owners.Rmd’ using ‘UTF-8’... failed
    ```

