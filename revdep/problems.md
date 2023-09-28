# arrow

<details>

* Version: 13.0.0.1
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2023-09-22 10:20:05 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "arrow")` for more info

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
          ▆
       1. └─testthat::skip_if_offline() at test-parquet.R:479:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 3 | WARN 9 | SKIP 74 | PASS 6404 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 143.4Mb
      sub-directories of 1Mb or more:
        R       8.0Mb
        libs  134.8Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# AustralianPoliticians

<details>

* Version: 0.1.0
* GitHub: https://github.com/RohanAlexander/AustralianPoliticians
* Source code: https://github.com/cran/AustralianPoliticians
* Date/Publication: 2021-11-30 21:30:04 UTC
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "AustralianPoliticians")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(AustralianPoliticians)
      > 
      > test_check("AustralianPoliticians")
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 3 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::skip_if_offline() at test-get_repsandsenate.R:4:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

# BIEN

<details>

* Version: 1.2.6
* GitHub: NA
* Source code: https://github.com/cran/BIEN
* Date/Publication: 2023-01-06 07:50:10 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "BIEN")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > #Tests for BIEN package
      > 
      > library(testthat)
      > library(BIEN)
      Loading required package: RPostgreSQL
      Loading required package: DBI
      The legacy packages maptools, rgdal, and rgeos, underpinning the sp package,
    ...
          ▆
       1. └─testthat::skip_if_offline() at test-BIEN.r:273:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# cesR

<details>

* Version: 0.1.0
* GitHub: https://github.com/hodgettsp/cesR
* Source code: https://github.com/cran/cesR
* Date/Publication: 2021-11-23 18:20:05 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "cesR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(cesR)
      > 
      > test_check("cesR")
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 3 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::skip_if_offline() at test-get_decon.R:14:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

# dtwSat

<details>

* Version: 1.0.0
* GitHub: https://github.com/vwmaus/dtwSat
* Source code: https://github.com/cran/dtwSat
* Date/Publication: 2023-09-22 07:20:09 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "dtwSat")` for more info

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
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
      *** recursive gc invocation
    ```

# duckdbfs

<details>

* Version: 0.0.2
* GitHub: https://github.com/cboettig/duckdbfs
* Source code: https://github.com/cran/duckdbfs
* Date/Publication: 2023-09-06 23:32:33 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "duckdbfs")` for more info

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
          ▆
       1. └─testthat::skip_if_offline() at test-write_dataset.R:69:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 5 | WARN 0 | SKIP 4 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# GetQuandlData

<details>

* Version: 1.0.0
* GitHub: https://github.com/msperlin/GetQuandlData
* Source code: https://github.com/cran/GetQuandlData
* Date/Publication: 2023-02-15 12:40:04 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::cloud_details(, "GetQuandlData")` for more info

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
       1. └─testthat::skip_if_offline() at test-utils.R:22:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

# ipaddress

<details>

* Version: 1.0.1
* GitHub: https://github.com/davidchall/ipaddress
* Source code: https://github.com/cran/ipaddress
* Date/Publication: 2023-04-04 05:40:02 UTC
* Number of recursive dependencies: 68

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
      [ FAIL 2 | WARN 0 | SKIP 41 | PASS 592 ]
      
      ══ Skipped tests (41) ══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::skip_if_offline() at test-country_networks.R:16:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 2 | WARN 0 | SKIP 41 | PASS 592 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.2Mb
      sub-directories of 1Mb or more:
        libs  17.5Mb
    ```

# minioclient

<details>

* Version: 0.0.5
* GitHub: https://github.com/cboettig/minioclient
* Source code: https://github.com/cran/minioclient
* Date/Publication: 2023-09-02 06:40:04 UTC
* Number of recursive dependencies: 42

Run `revdepcheck::cloud_details(, "minioclient")` for more info

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
          ▆
       1. └─testthat::skip_if_offline() at test-s3-select.R:23:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 9 | WARN 0 | SKIP 1 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# nhlapi

<details>

* Version: 0.1.4
* GitHub: https://github.com/jozefhajnala/nhlapi
* Source code: https://github.com/cran/nhlapi
* Date/Publication: 2021-02-20 01:20:05 UTC
* Number of recursive dependencies: 58

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
      [ FAIL 37 | WARN 0 | SKIP 1 | PASS 168 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::skip_if_offline(host = "nhl.com") at test.nhl_venues.R:5:4
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 37 | WARN 0 | SKIP 1 | PASS 168 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# openairmaps

<details>

* Version: 0.8.0
* GitHub: NA
* Source code: https://github.com/cran/openairmaps
* Date/Publication: 2023-03-31 13:10:02 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "openairmaps")` for more info

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
      i Actually got a <purrr_error_indexed> with text:
        i In index: 1.
        Caused by error in `purrr::map()`:
        i In index: 1.
        Caused by error in `load()`:
        ! cannot open the connection to 'https://uk-air.defra.gov.uk/openair/R_data/AURN_metadata.RData'
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 45 ]
      Error: Test failures
      Execution halted
    ```

# ows4R

<details>

* Version: 0.3-6
* GitHub: https://github.com/eblondel/ows4R
* Source code: https://github.com/cran/ows4R
* Date/Publication: 2023-09-01 10:10:02 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::cloud_details(, "ows4R")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R   3.9Mb
    ```

# paws.database

<details>

* Version: 0.4.0
* GitHub: https://github.com/paws-r/paws
* Source code: https://github.com/cran/paws.database
* Date/Publication: 2023-09-11 18:10:05 UTC
* Number of recursive dependencies: 43

Run `revdepcheck::cloud_details(, "paws.database")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R      3.7Mb
        help   2.0Mb
    ```

# RESI

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/RESI
* Date/Publication: 2023-06-09 03:42:52 UTC
* Number of recursive dependencies: 122

Run `revdepcheck::cloud_details(, "RESI")` for more info

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
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-resi.R:242:3'): RESI estimates are in between the confidence limits ──
      ... & ... is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

# rWind

<details>

* Version: 1.1.7
* GitHub: https://github.com/jabiologo/rWind
* Source code: https://github.com/cran/rWind
* Date/Publication: 2021-10-19 16:00:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "rWind")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > suppressPackageStartupMessages(library(rWind))
      > 
      > test_check("rWind")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 8 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
          ▆
       1. └─testthat::skip_if_offline() at test_rWind.R:46:2
       2.   └─testthat:::check_installed("curl")
       3.     ├─rlang::abort(...)
       4.     │ └─rlang::is_formula(message, scoped = TRUE, lhs = FALSE)
       5.     └─base::paste0(...)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 8 ]
      Error: Test failures
      Execution halted
    ```

