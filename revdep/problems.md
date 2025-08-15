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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

# bcRP

<details>

* Version: 1.0.1
* GitHub: https://github.com/JulioCollazos64/bcRP
* Source code: https://github.com/cran/bcRP
* Date/Publication: 2025-07-22 12:10:12 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::cloud_details(, "bcRP")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘bcRP-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_bcrp_data
    > ### Title: Perform an API request to BCRPData
    > ### Aliases: get_bcrp_data
    > 
    > ### ** Examples
    > 
    > codes <- c("PN00009MM", "PN00002MM", "PN01270PM", "PD39557DA")
    ...
    10 Mar.2024 -6059.647797      Cuentas monetarias de las sociedades creado… PN00…
    # ℹ 82 more rows
    > 
    > # You can also provide the range of dates
    > # through the `from` and `to` arguments.
    > get_bcrp_data(codes = codes, from = "2015-01", to = "2020-01")
    Error in perform_req_strategy(requests = list_of_requests, strategy = request_strategy) : 
      Error(s) at: PN00002MM
    Calls: get_bcrp_data -> perform_req_strategy
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:93:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 22 | WARN 0 | SKIP 10 | PASS 185 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-StartAutopilot.R:461:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 32 | PASS 98 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-unit.r:9:13
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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

# esci

<details>

* Version: 1.0.7
* GitHub: https://github.com/rcalinjageman/esci
* Source code: https://github.com/cran/esci
* Date/Publication: 2025-02-22 03:20:02 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::cloud_details(, "esci")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        R   6.0Mb
    ```

# gen3sis

<details>

* Version: 1.5.11
* GitHub: https://github.com/project-Gen3sis/R-package
* Source code: https://github.com/cran/gen3sis
* Date/Publication: 2023-11-22 15:20:06 UTC
* Number of recursive dependencies: 59

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 23 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.5Mb
        libs      2.3Mb
    ```

# geomorph

<details>

* Version: 4.0.10
* GitHub: https://github.com/geomorphR/geomorph
* Source code: https://github.com/cran/geomorph
* Date/Publication: 2025-02-05 19:10:07 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "geomorph")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        data   2.0Mb
        doc    1.5Mb
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_route.R:9:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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

# handwriterRF

<details>

* Version: 1.1.1
* GitHub: https://github.com/CSAFE-ISU/handwriterRF
* Source code: https://github.com/cran/handwriterRF
* Date/Publication: 2025-01-29 00:20:01 UTC
* Number of recursive dependencies: 123

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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

# ipaddress

<details>

* Version: 1.0.2
* GitHub: https://github.com/davidchall/ipaddress
* Source code: https://github.com/cran/ipaddress
* Date/Publication: 2023-12-01 23:10:02 UTC
* Number of recursive dependencies: 64

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
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

# leaflet.minicharts

<details>

* Version: 0.6.2
* GitHub: NA
* Source code: https://github.com/cran/leaflet.minicharts
* Date/Publication: 2021-05-11 09:20:10 UTC
* Number of recursive dependencies: 84

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-exercise.R:246:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
* Number of recursive dependencies: 100

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
       4.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       5.     └─lifecycle:::deprecate_stop0(msg)
       6.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 650 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-check_requirements.R:39:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
    ! `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
    ℹ Please use `with_mocked_bindings()` instead.
    Backtrace:
        ▆
     1. └─testthat::with_mock(summary = m, summary(iris))
     2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 90 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mocks-and-testthat.Rmd’ using rmarkdown
    
    Quitting from mocks-and-testthat.Rmd:136-144 [with_mock]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    NULL
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    Error: processing vignette 'mocks-and-testthat.Rmd' failed with diagnostics:
    `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-iss.R:3:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-utils.R:11:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 237 ]
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       5.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       6.     └─lifecycle:::deprecate_stop0(msg)
       7.       └─rlang::cnd_signal(...)
      
      [ FAIL 17 | WARN 0 | SKIP 38 | PASS 147 ]
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
* Number of recursive dependencies: 79

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_simulate.R:12:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 1 | SKIP 1 | PASS 50 ]
      Error: Test failures
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

# parameters

<details>

* Version: 0.27.0
* GitHub: https://github.com/easystats/parameters
* Source code: https://github.com/cran/parameters
* Date/Publication: 2025-07-09 09:30:05 UTC
* Number of recursive dependencies: 477

Run `revdepcheck::cloud_details(, "parameters")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        help   1.7Mb
    ```

# passport

<details>

* Version: 0.3.0
* GitHub: https://github.com/alistaire47/passport
* Source code: https://github.com/cran/passport
* Date/Publication: 2020-11-07 07:30:03 UTC
* Number of recursive dependencies: 84

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
       7.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       8.     └─lifecycle:::deprecate_stop0(msg)
       9.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 4 | SKIP 1 | PASS 37 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test_pocket_unfavorite.R:22:5
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...)
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 1 | SKIP 3 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

# PubChemR

<details>

* Version: 2.1.4
* GitHub: https://github.com/selcukorkmaz/PubChemR
* Source code: https://github.com/cran/PubChemR
* Date/Publication: 2025-03-07 13:10:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "PubChemR")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘PubChemR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_all_sources
    > ### Title: Retrieve All Sources from PubChem
    > ### Aliases: get_all_sources
    > 
    > ### ** Examples
    > 
    > get_all_sources(
    +   domain = 'substance'
    + )
    Error in value[[3L]](cond) : 
      Failed to retrieve sources for the specified domain: c(Code = "PUGREST.ServerBusy", Message = "Too many requests or server too busy")
    Calls: get_all_sources ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

## In both

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
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-get_sids.R:20:5'): pulling sids via 'cid' is succesfull ──────
      allSuccess(object) is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 169 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
    ```

# REddyProc

<details>

* Version: 1.3.3
* GitHub: https://github.com/bgctw/REddyProc
* Source code: https://github.com/cran/REddyProc
* Date/Publication: 2024-01-25 15:30:02 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::cloud_details(, "REddyProc")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        data   2.0Mb
        libs   1.3Mb
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
          ▆
       1. └─RPresto:::setup_mock_connection() at test-fetch.R:26:3
       2.   └─testthat::with_mock(...) at tests/testthat/helper-mock_connection.R:8:3
       3.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       4.       └─lifecycle:::deprecate_stop0(msg)
       5.         └─rlang::cnd_signal(...)
      
      [ FAIL 30 | WARN 0 | SKIP 83 | PASS 36 ]
      Error: Test failures
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-td.R:32:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
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
       7.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       1. └─base::eval(...)
       2.   └─base::eval(...)
       3.     └─testthat::local_mock(menu = function(...) 2) at test-load_example.R:74:5
       4.       └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
* Number of recursive dependencies: 81

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-simulator.R:6:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 4 | SKIP 7 | PASS 47 ]
      Error: Test failures
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

# starwarsdb

<details>

* Version: 0.1.2
* GitHub: https://github.com/gadenbuie/starwarsdb
* Source code: https://github.com/cran/starwarsdb
* Date/Publication: 2020-11-02 23:50:02 UTC
* Number of recursive dependencies: 49

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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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

# tangles

<details>

* Version: 2.0.1
* GitHub: NA
* Source code: https://github.com/cran/tangles
* Date/Publication: 2025-06-02 07:50:02 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::cloud_details(, "tangles")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘deidentification.Rmd’ using rmarkdown
    
    Quitting from deidentification.Rmd:124-156 [tangling-together]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <error/rlang_error>
    Error:
    ! [cannot make matrix with  1396964956570098  rows] 
    ---
    Backtrace:
    ...
    
    Error: processing vignette 'deidentification.Rmd' failed with diagnostics:
    [cannot make matrix with  1396964956570098  rows] 
    --- failed re-building ‘deidentification.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘deidentification.Rmd’
    
    Error: Vignette re-building failed.
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-texreg.R:319:3
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 2 | WARN 1 | SKIP 33 | PASS 201 ]
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
      Backtrace:
          ▆
       1. └─testthat::with_mock(...) at test-starring.R:3:1
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
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
       2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
       3.     └─lifecycle:::deprecate_stop0(msg)
       4.       └─rlang::cnd_signal(...)
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 125 ]
      Error: Test failures
      Execution halted
    ```

