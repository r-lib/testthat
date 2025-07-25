# arrow

<details>

* Version: 17.0.0.1
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2024-08-21 12:20:06 UTC
* Number of recursive dependencies: 77

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
      `expected` is a logical vector (TRUE)
      ── Failure ('test-parquet.R:458:3'): deprecated int96 timestamp unit can be specified when reading Parquet files ──
      result$some_datetime == table$some_datetime is not TRUE
      
      `actual` is an R6 object of class <ChunkedArray/ArrowDatum/ArrowObject>
      `expected` is a logical vector (TRUE)
      
      [ FAIL 5 | WARN 0 | SKIP 84 | PASS 6663 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 124.1Mb
      sub-directories of 1Mb or more:
        R       7.5Mb
        libs  115.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# epiCo

<details>

* Version: 1.0.0
* GitHub: https://github.com/epiverse-trace/epiCo
* Source code: https://github.com/cran/epiCo
* Date/Publication: 2024-06-28 09:40:05 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::cloud_details(, "epiCo")` for more info

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
       1. └─testthat::expect_message(...) at test-spatiotemporal.R:78:3
       2.   └─testthat:::expect_condition_matching(...)
       3.     └─testthat:::cnd_matcher(...)
       4.       └─cli::cli_abort(...)
       5.         └─rlang::abort(...)
      
      [ FAIL 1 | WARN 8 | SKIP 0 | PASS 114 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data      2.0Mb
        extdata   2.9Mb
    ```

# ieegio

<details>

* Version: 0.0.2
* GitHub: https://github.com/dipterix/ieegio
* Source code: https://github.com/cran/ieegio
* Date/Publication: 2024-10-31 23:20:02 UTC
* Number of recursive dependencies: 88

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

# madrat

<details>

* Version: 3.6.4
* GitHub: https://github.com/pik-piam/madrat
* Source code: https://github.com/cran/madrat
* Date/Publication: 2023-08-23 14:30:08 UTC
* Number of recursive dependencies: 79

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
      [ FAIL 3 | WARN 2 | SKIP 8 | PASS 581 ]
      
    ...
      
      `dim(actual)` is an integer vector (1, 1, 1)
      `dim(expected)` is absent
      
      `dimnames(actual)` is a list
      `dimnames(expected)` is absent
      
      [ FAIL 3 | WARN 2 | SKIP 8 | PASS 581 ]
      Error: Test failures
      Execution halted
    ```

# vines

<details>

* Version: 1.1.5
* GitHub: https://github.com/yasserglez/vines
* Source code: https://github.com/cran/vines
* Date/Publication: 2016-07-28 11:49:43
* Number of recursive dependencies: 41

Run `revdepcheck::cloud_details(, "vines")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library("vines")
      Loading required package: copula
      > 
      > test_check("vines", reporter = "summary")
      h: 
      h: 1
    ...
      ── 2. Error ('test-hinverse.R:3:1'): (code run outside of `test_that()`) ───────
      Error in `testthat:::test_code(new_desc, substitute(code), env = env)`: argument "reporter" is missing, with no default
      Backtrace:
          ▆
       1. └─vines:::test_that_for_each_copula(...) at test-hinverse.R:3:1
       2.   └─testthat:::test_code(new_desc, substitute(code), env = env) at tests/testthat/helper-copulas.R:37:13
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

# xpose

<details>

* Version: 0.4.18
* GitHub: https://github.com/UUPharmacometrics/xpose
* Source code: https://github.com/cran/xpose
* Date/Publication: 2024-02-01 16:20:02 UTC
* Number of recursive dependencies: 108

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
        8. │       └─base::do.call(...) at tests/testthat/helper-test_that_for_all.R:20:7
        9. ├─testthat (local) `<fn>`(...)
       10. └─base::.handleSimpleError(...)
       11.   └─purrr (local) h(simpleError(msg, call))
       12.     └─cli::cli_abort(...)
       13.       └─rlang::abort(...)
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 377 ]
      Error: Test failures
      Execution halted
    ```

