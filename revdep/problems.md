# aprof

<details>

* Version: 0.4.1
* GitHub: https://github.com/MarcoDVisser/aprof
* Source code: https://github.com/cran/aprof
* Date/Publication: 2018-05-22 18:23:45 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "aprof")` for more info

</details>

## Newly broken

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘testthat’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# coro

<details>

* Version: 1.0.1
* GitHub: https://github.com/r-lib/coro
* Source code: https://github.com/cran/coro
* Date/Publication: 2020-12-17 20:10:02 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "coro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─coro:::wait_for(async_collect(async_generator(function() for (i in 1:3) yield(i))()))
        5.   └─later::create_loop
        6.     └─base::getExportedValue(pkg, name)
        7.       └─base::asNamespace(ns)
        8.         └─base::getNamespace(ns)
        9.           └─base::loadNamespace(name)
       10.             └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       11.               └─base:::withOneRestart(expr, restarts[[1L]])
       12.                 └─base:::doWithOneRestart(return(expr), restart)
      
      [ FAIL 110 | WARN 0 | SKIP 4 | PASS 91 ]
      Error: Test failures
      Execution halted
    ```

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking:
      'knitr', 'later', 'promises', 'reticulate', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘promises’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rlang’
    
    Packages suggested but not available for checking:
      'knitr', 'later', 'magrittr', 'promises', 'reticulate', 'rmarkdown',
      'testthat'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# DArand

<details>

* Version: 0.0.1.1
* GitHub: NA
* Source code: https://github.com/cran/DArand
* Date/Publication: 2021-10-25 11:40:04 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "DArand")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(DArand)
      > 
      > test_check("DArand")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-DArand.R:4:3): Detection under alternative hypothesis, one DE ──
      DArand(...) (`actual`) not equal to 1 (`expected`).
      
        `actual`: 1 9
      `expected`: 1  
      
      [ FAIL 1 | WARN 5 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# DockerParallel

<details>

* Version: 1.0.4
* GitHub: https://github.com/Jiefei-Wang/DockerParallel
* Source code: https://github.com/cran/DockerParallel
* Date/Publication: 2021-06-23 13:00:02 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "DockerParallel")` for more info

</details>

## Newly broken

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking:
      'markdown', 'knitr', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘jsonlite’
    
    Packages suggested but not available for checking:
      'markdown', 'knitr', 'rmarkdown', 'testthat'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# kgc

<details>

* Version: 1.0.0.2
* GitHub: NA
* Source code: https://github.com/cran/kgc
* Date/Publication: 2017-12-20 23:44:53 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "kgc")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘kgc-fine.Rmd’ using rmarkdown
    Loading required package: shiny
    Loading required package: shinythemes
    Loading required package: plyr
    Killed
    --- re-building ‘kgc-vignette.Rmd’ using rmarkdown
    Loading required package: shiny
    Loading required package: shinythemes
    Loading required package: plyr
    --- finished re-building ‘kgc-vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘kgc-fine.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MakefileR

<details>

* Version: 1.0
* GitHub: https://github.com/krlmlr/MakefileR
* Source code: https://github.com/cran/MakefileR
* Date/Publication: 2016-01-08 15:55:12
* Number of recursive dependencies: 43

Run `cloud_details(, "MakefileR")` for more info

</details>

## Newly broken

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking: 'knitr', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘magrittr’
    
    Packages suggested but not available for checking:
      'testthat', 'knitr', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# PakPMICS2018hh

<details>

* Version: 0.1.0
* GitHub: https://github.com/myaseen208/PakPMICS2018hh
* Source code: https://github.com/cran/PakPMICS2018hh
* Date/Publication: 2019-06-07 10:30:03 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "PakPMICS2018hh")` for more info

</details>

## Newly broken

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Package suggested but not available for checking: ‘R.rsp’
    
    VignetteBuilder package required for checking but not installed: ‘R.rsp’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘tibble’
    
    Packages suggested but not available for checking: 'testthat', 'R.rsp'
    
    VignetteBuilder package required for checking but not installed: ‘R.rsp’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# PetfindeR

<details>

* Version: 2.1.0
* GitHub: https://github.com/aschleg/PetfindeR
* Source code: https://github.com/cran/PetfindeR
* Date/Publication: 2020-07-07 16:10:02 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "PetfindeR")` for more info

</details>

## Newly broken

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking:
      'lubridate', 'knitr', 'rmarkdown', 'dplyr', 'httr'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘R6’
    
    Packages suggested but not available for checking:
      'lubridate', 'testthat', 'knitr', 'rmarkdown', 'dplyr', 'httr',
      'jsonlite'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Q7

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/Q7
* Date/Publication: 2020-11-25 10:00:06 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "Q7")` for more info

</details>

## Newly broken

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking: 'knitr', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘magrittr’
    
    Packages suggested but not available for checking:
      'knitr', 'rmarkdown', 'testthat'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# restrictedMVN

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/restrictedMVN
* Date/Publication: 2016-12-27 16:24:04
* Number of recursive dependencies: 32

Run `cloud_details(, "restrictedMVN")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > test_check("restrictedMVN")
      Loading required package: restrictedMVN
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-similartorejection.R:32:3): results are similar to rejection multivariate ──
      sum(abs(mean_restricted - mean_restricted_rej) <= 0.01) not equal to 3.
      1/1 mismatches
      [1] 2 - 3 == -1
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# tidyquant

<details>

* Version: 1.0.3
* GitHub: https://github.com/business-science/tidyquant
* Source code: https://github.com/cran/tidyquant
* Date/Publication: 2021-03-05 06:40:03 UTC
* Number of recursive dependencies: 160

Run `cloud_details(, "tidyquant")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘TQ00-introduction-to-tidyquant.Rmd’ using rmarkdown
    Loading required package: lubridate
    
    Attaching package: 'lubridate'
    
    The following objects are masked from 'package:base':
    
        date, intersect, setdiff, union
    
    ...
    --- finished re-building ‘TQ05-performance-analysis-with-tidyquant.Rmd’
    
    --- re-building ‘TQ06-excel-in-r.Rmd’ using rmarkdown
    --- finished re-building ‘TQ06-excel-in-r.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘TQ02-quant-integrations-in-tidyquant.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## Newly fixed

*   checking examples ... ERROR
    ```
    Running examples in ‘tidyquant-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: tq_mutate
    > ### Title: Mutates quantitative data
    > ### Aliases: tq_mutate tq_mutate_ tq_mutate_xy tq_mutate_xy_
    > ###   tq_mutate_fun_options tq_transmute tq_transmute_ tq_transmute_xy
    > ###   tq_transmute_xy_ tq_transmute_fun_options
    > 
    > ### ** Examples
    ...
    +     tq_transmute(adjusted, periodReturn, period = "monthly", col_rename = "fb.returns")
    > xlk_returns <- tq_get("XLK", from = "2016-01-01", to = "2016-12-31") %>%
    +     tq_transmute(adjusted, periodReturn, period = "monthly", col_rename = "xlk.returns")
    Warning: x = 'XLK', get = 'stock.prices': Error in getSymbols.yahoo(Symbols = "XLK", env = <environment>, verbose = FALSE, : Unable to import “XLK”.
    argument "conn" is missing, with no default
    
    Error in tq_transmute_.default(data = data, select = lazyeval::expr_text(select),  : 
      data must be a tibble or data.frame object
    Calls: %>% ... tq_transmute -> tq_transmute_ -> tq_transmute_.default
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc   4.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘janitor’
      All declared Imports should be used.
    ```

