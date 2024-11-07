# admtools

<details>

* Version: 0.4.0
* GitHub: https://github.com/MindTheGap-ERC/admtools
* Source code: https://github.com/cran/admtools
* Date/Publication: 2024-10-03 23:01:00 UTC
* Number of recursive dependencies: 49

Run `revdepcheck::cloud_details(, "admtools")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test_is_sac.R:3:3'): returns true for correct input ───────────────
      Expected `sac` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 209 ]
      Error: Test failures
      Execution halted
    ```

# adproclus

<details>

* Version: 2.0.0
* GitHub: https://github.com/henry-heppe/adproclus
* Source code: https://github.com/cran/adproclus
* Date/Publication: 2024-08-17 18:00:01 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "adproclus")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-visualize.R:52:9'): Scree plots low dimensional ──────────────
      Expected `plot_scree_adpc(model_selection, grid = TRUE)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 28 | WARN 0 | SKIP 0 | PASS 47 ]
      Error: Test failures
      Execution halted
    ```

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

# bmgarch

<details>

* Version: 2.0.0
* GitHub: https://github.com/ph-rast/bmgarch
* Source code: https://github.com/cran/bmgarch
* Date/Publication: 2023-09-12 00:40:02 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "bmgarch")` for more info

</details>

## Newly broken

*   checking whether package ‘bmgarch’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bmgarch/new/bmgarch.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 304.9Mb
      sub-directories of 1Mb or more:
        libs  304.1Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘bmgarch’ ...
** package ‘bmgarch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.2.0-23ubuntu4) 13.2.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_DCCMGARCH_namespace::model_DCCMGARCH; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:198: stanExports_DCCMGARCH.o] Error 1
ERROR: compilation failed for package ‘bmgarch’
* removing ‘/tmp/workdir/bmgarch/new/bmgarch.Rcheck/bmgarch’


```
### CRAN

```
* installing *source* package ‘bmgarch’ ...
** package ‘bmgarch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.2.0-23ubuntu4) 13.2.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.3.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (bmgarch)


```
# bonsai

<details>

* Version: 0.3.1
* GitHub: https://github.com/tidymodels/bonsai
* Source code: https://github.com/cran/bonsai
* Date/Publication: 2024-07-23 15:00:01 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "bonsai")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(bonsai)
      Loading required package: parsnip
      > 
      > test_check("bonsai")
      [ FAIL 4 | WARN 0 | SKIP 6 | PASS 78 ]
      
    ...
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-aorsf.R:102:3'): classification model object ─────────────────
      Expected `... <- NULL` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 6 | PASS 78 ]
      Error: Test failures
      Execution halted
    ```

# cfr

<details>

* Version: 0.1.2
* GitHub: https://github.com/epiverse-trace/cfr
* Source code: https://github.com/cran/cfr
* Date/Publication: 2024-09-26 09:50:02 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "cfr")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-prepare_data.R:119:3'): Prepare grouped `<incidence2>` data ──
      Expected `prepare_data(...)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 2 | SKIP 11 | PASS 108 ]
      Error: Test failures
      Execution halted
    ```

# chainbinomial

<details>

* Version: 0.1.5
* GitHub: NA
* Source code: https://github.com/cran/chainbinomial
* Date/Publication: 2024-05-27 17:40:09 UTC
* Number of recursive dependencies: 56

Run `revdepcheck::cloud_details(, "chainbinomial")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test_1.R:1150:3'): making predictions ─────────────────────────────
      Expected `... <- NULL` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 63 | WARN 0 | SKIP 0 | PASS 471 ]
      Error: Test failures
      Execution halted
    ```

# charlatan

<details>

* Version: 0.6.1
* GitHub: https://github.com/ropensci/charlatan
* Source code: https://github.com/cran/charlatan
* Date/Publication: 2024-10-17 05:20:02 UTC
* Number of recursive dependencies: 56

Run `revdepcheck::cloud_details(, "charlatan")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library("testthat")
      > test_check("charlatan")
      Loading required package: charlatan
      [ FAIL 7 | WARN 0 | SKIP 4 | PASS 2017 ]
      
      ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
    ...
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-backwards-comp.R:97:3'): fakir revdep still works ────────────
      Expected `ch_name(1)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 7 | WARN 0 | SKIP 4 | PASS 2017 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        R      7.5Mb
        doc    3.2Mb
        help   1.5Mb
    ```

# covidcast

<details>

* Version: 0.5.2
* GitHub: https://github.com/cmu-delphi/covidcast
* Source code: https://github.com/cran/covidcast
* Date/Publication: 2023-07-12 23:40:06 UTC
* Number of recursive dependencies: 92

Run `revdepcheck::cloud_details(, "covidcast")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘multi-signals.Rmd’
      ...
    
    > signals <- covidcast_signals(data_source = "jhu-csse", 
    +     signal = c("confirmed_7dav_incidence_prop", "deaths_7dav_incidence_prop"), 
    +     star .... [TRUNCATED] 
    
      When sourcing ‘multi-signals.R’:
    Error: Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ...
    Error: Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ℹ Message from server:
    ℹ Rate limit exceeded for anonymous queries. To remove this limit, register a free API key at https://api.delphi.cmu.edu/epidata/admin/registration_form
    Execution halted
    
      ‘correlation-utils.Rmd’ using ‘UTF-8’... OK
      ‘covidcast.Rmd’ using ‘UTF-8’... OK
      ‘external-data.Rmd’ using ‘UTF-8’... OK
      ‘multi-signals.Rmd’ using ‘UTF-8’... failed
      ‘plotting-signals.Rmd’ using ‘UTF-8’... failed
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘correlation-utils.Rmd’ using rmarkdown
    --- finished re-building ‘correlation-utils.Rmd’
    
    --- re-building ‘covidcast.Rmd’ using rmarkdown
    
    Quitting from lines 38-45 [unnamed-chunk-1] (covidcast.Rmd)
    Error: processing vignette 'covidcast.Rmd' failed with diagnostics:
    Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ℹ Message from server:
    ℹ Rate limit exceeded for anonymous queries. To remove this limit, register a free API key at https://api.delphi.cmu.edu/epidata/admin/registration_form
    --- failed re-building ‘covidcast.Rmd’
    
    --- re-building ‘external-data.Rmd’ using rmarkdown
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# cryptoQuotes

<details>

* Version: 1.3.2
* GitHub: https://github.com/serkor1/cryptoQuotes
* Source code: https://github.com/cran/cryptoQuotes
* Date/Publication: 2024-11-07 12:30:11 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::cloud_details(, "cryptoQuotes")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-charting.R:146:5'): Charting with ohlc bars and indicators ───
      Expected `test_chart` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 2 | WARN 0 | SKIP 15 | PASS 43 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        doc   11.7Mb
        help   1.2Mb
    ```

# diseasystore

<details>

* Version: 0.2.2
* GitHub: https://github.com/ssi-dk/diseasystore
* Source code: https://github.com/cran/diseasystore
* Date/Publication: 2024-07-15 12:00:02 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::cloud_details(, "diseasystore")` for more info

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
      ── Failure ('test-0_documentation.R:10:7'): rd_templates works ─────────────────
      Expected `do.call(rd_fun, args = list(type = type))` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 43 | WARN 0 | SKIP 1 | PASS 533 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# divvy

<details>

* Version: 1.0.0
* GitHub: https://github.com/GawainAntell/divvy
* Source code: https://github.com/cran/divvy
* Date/Publication: 2023-10-26 08:20:03 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "divvy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(divvy)
      > 
      > test_check("divvy")
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 32 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test_subsample.R:64:3'): projected coords ok ──────────────────────
      Expected `bandit(...)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 32 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘palaeoverse’
    ```

# dsmmR

<details>

* Version: 1.0.5
* GitHub: https://github.com/Mavrogiannis-Ioannis/dsmmR
* Source code: https://github.com/cran/dsmmR
* Date/Publication: 2024-07-28 00:20:01 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "dsmmR")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-parametric_dsmm.R:176:5'): parametric_dsmm(); p is not drifting, f is drifting. ──
      Expected `... <- NULL` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 12 | WARN 0 | SKIP 12 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# ecocbo

<details>

* Version: 0.12.0
* GitHub: NA
* Source code: https://github.com/cran/ecocbo
* Date/Publication: 2024-08-21 08:00:02 UTC
* Number of recursive dependencies: 114

Run `revdepcheck::cloud_details(, "ecocbo")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-sim_cbo.R:6:3'): function works in its two modes ─────────────
      Expected `sim_cbo(compVar, multSE = 0.14, ck = 100, cj = 2500)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 23 ]
      Error: Test failures
      Execution halted
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

# ergm

<details>

* Version: 4.7.5
* GitHub: https://github.com/statnet/ergm
* Source code: https://github.com/cran/ergm
* Date/Publication: 2024-11-06 14:10:05 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "ergm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘requireNamespaceTest.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > #  File tests/testthat.R in package ergm, part of the
      > #  Statnet suite of packages for network analysis, https://statnet.org .
      > #
      > #  This software is distributed under the GPL-3 license.  It is free,
      > #  open source, and has the attribution requirements (GPL Section 7) at
      > #  https://statnet.org/attribution .
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-nonunique-names.R:15:3'): MCMC diagnostics produced even when names are not unique ──
      Expected `mcmc.diagnostics(fit)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 4217 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘ergm.Rmd’
      ...
    Obtaining the responsible dyads.
    Evaluating the predictor and response matrix.
    Maximizing the pseudolikelihood.
    Finished MPLE.
    Starting Monte Carlo maximum likelihood estimation (MCMLE):
    Iteration 1 of at most 60:
    
    ...
      When sourcing ‘ergm.R’:
    Error: Number of edges in a simulated network exceeds that in the observed by a factor of more than 20. This is a strong indicator of model degeneracy or a very poor starting parameter configuration. If you are reasonably certain that neither of these is the case, increase the MCMLE.density.guard control.ergm() parameter.
    Execution halted
    
      ‘Network-Callback-API.Rmd’ using ‘UTF-8’... OK
      ‘Proposal-Lookup-API.Rmd’ using ‘UTF-8’... OK
      ‘Terms-API.Rmd’ using ‘UTF-8’... OK
      ‘ergm-term-crossRef.Rmd’ using ‘UTF-8’... OK
      ‘ergm.Rmd’ using ‘UTF-8’... failed
      ‘nodal_attributes.Rmd’ using ‘UTF-8’... OK
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.6Mb
        help   1.6Mb
        libs   2.8Mb
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

# infer

<details>

* Version: 1.0.7
* GitHub: https://github.com/tidymodels/infer
* Source code: https://github.com/cran/infer
* Date/Publication: 2024-03-25 21:50:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::cloud_details(, "infer")` for more info

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
      • visualize/viz-assume-z-p-val-left.svg
      • visualize/viz-assume-z-p-val-right.svg
      • visualize/viz-assume-z.svg
      • visualize/viz-fit-conf-int.svg
      • visualize/viz-fit-no-h0.svg
      • visualize/viz-fit-p-val-both.svg
      • visualize/viz-fit-p-val-left.svg
      • visualize/viz-fit-p-val-right.svg
      Error: Test failures
      Execution halted
    ```

# innsight

<details>

* Version: 0.3.0
* GitHub: https://github.com/bips-hb/innsight
* Source code: https://github.com/cran/innsight
* Date/Publication: 2023-12-21 16:00:02 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::cloud_details(, "innsight")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R     1.5Mb
        doc   3.2Mb
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘Example_1_iris.Rmd’
      ...
    
    > set.seed(1111)
    
    > options(width = 500)
    
    > torch::torch_manual_seed(1111)
    
    ...
    +     2)), nn_flatten(), nn_li .... [TRUNCATED] 
    
      When sourcing ‘detailed_overview.R’:
    Error: Lantern is not loaded. Please use `install_torch()` to install additional dependencies.
    Execution halted
    
      ‘Example_1_iris.Rmd’ using ‘UTF-8’... failed
      ‘Example_2_penguin.Rmd’ using ‘UTF-8’... failed
      ‘detailed_overview.Rmd’ using ‘UTF-8’... failed
      ‘innsight.Rmd’ using ‘UTF-8’... OK
    ```

# intergraph

<details>

* Version: 2.0-4
* GitHub: https://github.com/mbojan/intergraph
* Source code: https://github.com/cran/intergraph
* Date/Publication: 2024-02-01 17:30:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "intergraph")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(intergraph)
      > 
      > test_check("intergraph")
      [ FAIL 1 | WARN 3 | SKIP 1 | PASS 53 ]
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-netcompare.R:2:3'): netcompare just works ────────────────────
      Expected `r <- netcompare(exIgraph, exIgraph)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 3 | SKIP 1 | PASS 53 ]
      Error: Test failures
      Execution halted
    ```

# JointFPM

<details>

* Version: 1.2.1
* GitHub: https://github.com/entjos/JointFPM
* Source code: https://github.com/cran/JointFPM
* Date/Publication: 2024-06-19 21:40:14 UTC
* Number of recursive dependencies: 43

Run `revdepcheck::cloud_details(, "JointFPM")` for more info

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
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-summary.JointFPM.R:2:3'): Summary output is stable ───────────
      Expected `{ ... }` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 0 | SKIP 13 | PASS 19 ]
      Error: Test failures
      Execution halted
    ```

# linelist

<details>

* Version: 1.1.4
* GitHub: https://github.com/epiverse-trace/linelist
* Source code: https://github.com/cran/linelist
* Date/Publication: 2024-06-17 13:40:04 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "linelist")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(linelist)
      > 
      > test_df <- as.data.frame(test_check("linelist"))
      Starting 2 test processes
      [ FAIL 2 | WARN 0 | SKIP 9 | PASS 132 ]
    ...
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-square_bracket.R:128:3'): $<- allows innocuous tag modification ──
      Expected `x$speed <- 1L` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 2 | WARN 0 | SKIP 9 | PASS 132 ]
      Error: Test failures
      Execution halted
    ```

# literanger

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/literanger
* Date/Publication: 2024-09-22 21:30:05 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "literanger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(literanger)
      > 
      > test_check('literanger')
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 225 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      ℹ Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-io.R:31:5'): can read and write a regression forest ──────────
      Expected `rf_copy <- read_literanger(file = file_name)` to run without any conditions.
      ℹ Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 225 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking whether package ‘literanger’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /usr/include/c++/13/bits/stl_algobase.h:437:30: warning: ‘void* __builtin_memmove(void*, const void*, long unsigned int)’ writing between 9 and 9223372036854775807 bytes into a region of size 8 overflows the destination [-Wstringop-overflow=]
    See ‘/tmp/workdir/literanger/new/literanger.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.5Mb
      sub-directories of 1Mb or more:
        libs  14.3Mb
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

# OlinkAnalyze

<details>

* Version: 4.0.1
* GitHub: https://github.com/Olink-Proteomics/OlinkRPackage
* Source code: https://github.com/cran/OlinkAnalyze
* Date/Publication: 2024-09-24 11:50:02 UTC
* Number of recursive dependencies: 207

Run `revdepcheck::cloud_details(, "OlinkAnalyze")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(OlinkAnalyze)
      > 
      > test_check("OlinkAnalyze")
      Variables and covariates converted from character to factors: Site
      ANOVA model fit to each assay: NPX~Site
      Variables and covariates converted from character to factors: Time
    ...
      • linear_mixed_model/lmer-plot.svg
      • olink_Pathway_Heatmap/gsea-heatmap.svg
      • olink_Pathway_Heatmap/ora-heatmap-with-keyword.svg
      • olink_Pathway_Visualization/gsea-vis-with-keyword.svg
      • olink_Pathway_Visualization/gsea-visualization.svg
      • olink_Pathway_Visualization/ora-vis-with-keyword.svg
      • olink_Pathway_Visualization/ora-vis-with-terms.svg
      • olink_qc_plot/qc-plot-with-coloroption.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘Vignett.Rmd’
      ...
    lme4 was built with Matrix ABI version 1
    Current Matrix ABI version is 0
    Please re-install lme4 from source or restore original ‘Matrix’ package
    Duplicate SampleID(s) detected:
     CONTROL_SAMPLE_AS 1
     CONTROL_SAMPLE_AS 2
    
    ...
      When sourcing ‘Vignett.R’:
    Error: function 'cholmod_factor_ldetA' not provided by package 'Matrix'
    Execution halted
    
      ‘LOD.Rmd’ using ‘UTF-8’... OK
      ‘OutlierExclusion.Rmd’ using ‘UTF-8’... OK
      ‘Vignett.Rmd’ using ‘UTF-8’... failed
      ‘bridging_E3072toEHT.Rmd’ using ‘UTF-8’... OK
      ‘bridging_introduction.Rmd’ using ‘UTF-8’... OK
      ‘plate_randomizer.Rmd’ using ‘UTF-8’... OK
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘LOD.Rmd’ using rmarkdown
    --- finished re-building ‘LOD.Rmd’
    
    --- re-building ‘OutlierExclusion.Rmd’ using rmarkdown
    --- finished re-building ‘OutlierExclusion.Rmd’
    
    --- re-building ‘Vignett.Rmd’ using rmarkdown
    ```

# palaeoSig

<details>

* Version: 2.1-3
* GitHub: https://github.com/richardjtelford/palaeoSig
* Source code: https://github.com/cran/palaeoSig
* Date/Publication: 2023-03-10 09:30:02 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::cloud_details(, "palaeoSig")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-test-randomTF.R:6:3'): randomTF works ────────────────────────
      Expected `randomTF(...)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# posterior

<details>

* Version: 1.6.0
* GitHub: https://github.com/stan-dev/posterior
* Source code: https://github.com/cran/posterior
* Date/Publication: 2024-07-03 23:00:02 UTC
* Number of recursive dependencies: 118

Run `revdepcheck::cloud_details(, "posterior")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(posterior)
      This is posterior version 1.6.0
      
      Attaching package: 'posterior'
      
      The following objects are masked from 'package:stats':
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-rvar-.R:204:3'): scale_type(<rvar>) works ────────────────────
      Expected `ggplot2::scale_type(rvar())` to run without any conditions.
      ℹ Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 1664 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘rvar.Rmd’
      ...
    > y
    rvar<4000>[3] mean ± sd:
    [1] 3.00 ± 1.00  2.02 ± 0.99  0.96 ± 0.99 
    
    > X + y
    
      When sourcing ‘rvar.R’:
    Error: Cannot broadcast array of shape [4000,3,1] to array of shape [4000,4,3]:
    All dimensions must be 1 or equal.
    Execution halted
    
      ‘pareto_diagnostics.Rmd’ using ‘UTF-8’... OK
      ‘posterior.Rmd’ using ‘UTF-8’... OK
      ‘rvar.Rmd’ using ‘UTF-8’... failed
    ```

# rcausim

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/rcausim
* Date/Publication: 2024-06-24 15:30:09 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "rcausim")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-time_varying.R:406:5'): 'time_varying' handles 'func' where the classes of the generated data can be any classes. ──
      Expected `time_varying(functions2, simulated_data, T_max)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 57 ]
      Error: Test failures
      Execution halted
    ```

# rcpptimer

<details>

* Version: 1.2.1
* GitHub: https://github.com/BerriJ/rcpptimer
* Source code: https://github.com/cran/rcpptimer
* Date/Publication: 2024-09-22 21:40:02 UTC
* Number of recursive dependencies: 42

Run `revdepcheck::cloud_details(, "rcpptimer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("OMP_THREAD_LIMIT" = 2)
      > 
      > library(testthat)
      > library(rcpptimer)
      > 
      > test_check("rcpptimer")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 90 ]
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test_print.rcpptimer.R:89:3'): Check wether the print method of the rcpp timer scales correctly ──
      Expected `out <- test_misc(tic = FALSE, toc = FALSE, scoped_timer = FALSE)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 90 ]
      Error: Test failures
      Execution halted
    ```

# rdecision

<details>

* Version: 1.2.1
* GitHub: https://github.com/ajsims1704/rdecision
* Source code: https://github.com/cran/rdecision
* Date/Publication: 2024-06-09 22:10:02 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "rdecision")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rdecision)
      > test_check("rdecision")
      [ FAIL 4 | WARN 0 | SKIP 21 | PASS 1482 ]
      
      ══ Skipped tests (21) ══════════════════════════════════════════════════════════
      • On CRAN (21): 'test-BetaDistribution.R:89:3', 'test-BetaModVar.R:134:3',
    ...
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-DecisionTree.R:486:3'): long node labels are not clipped ─────
      Expected `dt$draw(border = TRUE, fontsize = 10)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 4 | WARN 0 | SKIP 21 | PASS 1482 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘DT00-DecisionTreeTutorial.Rmd’
      ...
    > knitr::opts_chunk$set(collapse = TRUE, echo = FALSE, 
    +     comment = "#>")
    
    > library("rdecision")
    
    > dt$draw()
    
    ...
    Error: could not find function "gv2png"
    Execution halted
    
      ‘DT00-DecisionTreeTutorial.Rmd’ using ‘UTF-8’... failed
      ‘DT01-Sumatriptan.Rmd’ using ‘UTF-8’... failed
      ‘DT02-Tegaderm.Rmd’ using ‘UTF-8’... OK
      ‘DT03-ShaleGas.Rmd’ using ‘UTF-8’... failed
      ‘GT01-NewScientistPuzzle.Rmd’ using ‘UTF-8’... failed
      ‘SM01-HIV.Rmd’ using ‘UTF-8’... failed
      ‘SM02-TKR.Rmd’ using ‘UTF-8’... failed
    ```

# REDCapR

<details>

* Version: 1.3.0
* GitHub: https://github.com/OuhscBbmc/REDCapR
* Source code: https://github.com/cran/REDCapR
* Date/Publication: 2024-10-23 09:10:02 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::cloud_details(, "REDCapR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > # Modeled after the R6 testing structure: https://github.com/wch/R6/blob/master/tests/testthat.R
      > library(testthat)
      > library(REDCapR)
      > # source("R/helpers-testing.R")
      > 
      > # Sys.setenv("redcapr_test_server" = "bbmc")
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-validate-field-names.R:43:3'): assert_field_names -good ──────
      Expected `assert_field_names(colnames(ds_good))` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 0 | SKIP 252 | PASS 145 ]
      Error: Test failures
      Execution halted
    ```

# rgl

<details>

* Version: 1.3.12
* GitHub: https://github.com/dmurdoch/rgl
* Source code: https://github.com/cran/rgl
* Date/Publication: 2024-10-28 11:40:07 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::cloud_details(, "rgl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘bbox3dtests.R’
      Running ‘boundary.R’
      Running ‘indices.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > if (require(testthat)) {
      +   library(rgl)
      +   options(rgl.useNULL = TRUE)
      +   test_check("rgl")
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-getShaders.R:9:2'): getShaders works ─────────────────────────
      Expected `getShaders(id)` to run without any conditions.
      ℹ Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 37 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        doc       7.1Mb
        fonts     1.5Mb
        help      1.5Mb
        libs      4.0Mb
        useNULL   3.0Mb
    ```

# scoringutils

<details>

* Version: 2.0.0
* GitHub: https://github.com/epiforecasts/scoringutils
* Source code: https://github.com/cran/scoringutils
* Date/Publication: 2024-10-31 20:40:02 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::cloud_details(, "scoringutils")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(scoringutils)
      scoringutils 2.0.0 introduces major changes. We'd love your feedback!
      <https://github.com/epiforecasts/scoringutils/issues>. To use the old version,
      run: `remotes::install_github('epiforecasts/scoringutils@v1.2.2')`
      This message is displayed once per session.
      > 
    ...
      • get-coverage/plot-quantile-coverage.svg
      • get-forecast-counts/plot-available-forecasts.svg
      • pairwise_comparison/plot-pairwise-comparison-pval.svg
      • pairwise_comparison/plot-pairwise-comparison.svg
      • plot_heatmap/plot-heatmap.svg
      • plot_wis/plot-wis-flip.svg
      • plot_wis/plot-wis-no-relative.svg
      • plot_wis/plot-wis.svg
      Error: Test failures
      Execution halted
    ```

# sonicscrewdriver

<details>

* Version: 0.0.7
* GitHub: https://github.com/edwbaker/SonicScrewdriveR
* Source code: https://github.com/cran/sonicscrewdriver
* Date/Publication: 2024-05-11 20:50:02 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::cloud_details(, "sonicscrewdriver")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-sweptsine.R:14:3'): Output in correct format ─────────────────
      Expected `validateIsWave(sweptsine(output = "wave"))` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 3 | WARN 0 | SKIP 7 | PASS 836 ]
      Error: Test failures
      Execution halted
    ```

# StratPal

<details>

* Version: 0.2.0
* GitHub: https://github.com/MindTheGap-ERC/StratPal
* Source code: https://github.com/cran/StratPal
* Date/Publication: 2024-10-04 06:50:02 UTC
* Number of recursive dependencies: 56

Run `revdepcheck::cloud_details(, "StratPal")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test_strict_stasis_sl.R:2:3'): runs without problems ──────────────
      Expected `strict_stasis_sl(1:3)` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 66 ]
      Error: Test failures
      Execution halted
    ```

# TiPS

<details>

* Version: 1.2.3
* GitHub: NA
* Source code: https://github.com/cran/TiPS
* Date/Publication: 2023-05-23 14:02:06 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "TiPS")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘TiPS.Rmd’ using rmarkdown
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   4.4Mb
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

# WeightIt

<details>

* Version: 1.3.2
* GitHub: https://github.com/ngreifer/WeightIt
* Source code: https://github.com/cran/WeightIt
* Date/Publication: 2024-11-05 09:10:03 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::cloud_details(, "WeightIt")` for more info

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
      i Actually got a <expectation_success> with text:
        Success has been forced
      ── Failure ('test-vcov_arg.R:557:3'): vcov arg works in vcov(), summary(), and anova() for multinom_weightit ──
      Expected `anova(fit_asympt, fit_small_hc0, vcov = "asympt")` to run without any conditions.
      i Actually got a <expectation_success> with text:
        Success has been forced
      
      [ FAIL 61 | WARN 1 | SKIP 0 | PASS 259 ]
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

