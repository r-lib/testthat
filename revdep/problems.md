# quantspec

<details>

* Version: 1.2-1
* Source code: https://github.com/cran/quantspec
* URL: http://github.com/tobiaskley/quantspec
* BugReports: http://github.com/tobiaskley/quantspec/issues
* Date/Publication: 2016-03-28 00:27:55
* Number of recursive dependencies: 20

Run `revdep_details(,"quantspec")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > # Compute without using snowfall capabilities
    > system.time(
    +   qRegEst1 <- qRegEstimator(Y, levels=seq(0.25,0.75,0.25), method="fn", parallel=FALSE)
    + )
       user  system elapsed 
      0.100   0.001   0.103 
    > 
    > # Set up snowfall
    > sfInit(parallel=TRUE, cpus=2, type="SOCK")
    Warning in searchCommandline(parallel, cpus = cpus, type = type, socketHosts = socketHosts,  :
      Unknown option on commandline: --encoding
    Warning in socketConnection(port = port, server = TRUE, blocking = TRUE,  :
      port 11863 cannot be opened
    Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Error in sfInit(parallel = TRUE, cpus = 2, type = "SOCK") : 
      Starting of snow cluster failed! Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
     Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Execution halted
    ```

# rdefra

<details>

* Version: 0.3.6
* Source code: https://github.com/cran/rdefra
* URL: https://github.com/ropensci/rdefra
* BugReports: https://github.com/ropensci/rdefra/issues
* Date/Publication: 2019-03-18 20:00:11 UTC
* Number of recursive dependencies: 0

Run `revdep_details(,"rdefra")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > library("rdefra")
      > 
      > test_check("rdefra")
      ── 1. Failure: DEFRA server should be running (@test-metadata.R#29)  ───────────
      `x` not equal to `expected`.
      1 element mismatch
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 20 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: DEFRA server should be running (@test-metadata.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rstap

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/rstap
* URL: https://biostatistics4socialimpact.github.io/rstap
* BugReports: https://github.com/biostatistics4socialimpact/rstap/issues
* Date/Publication: 2019-02-06 20:30:03 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"rstap")` for more info

</details>

## Newly broken

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        libs   6.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘loo’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rstanarm’
    ```

