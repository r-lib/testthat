# auk

<details>

* Version: 0.4.1
* GitHub: https://github.com/CornellLabofOrnithology/auk
* Source code: https://github.com/cran/auk
* Date/Publication: 2020-04-03 14:00:02 UTC
* Number of recursive dependencies: 79

Run `cloud_details(, "auk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Reason: On CRAN
      
      ── Skip (test_get-ebird-taxonomy.r:42:3): get_ebird_taxonomy error handling ────
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (21)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_auk-rollup.r:4:3): auk_rollup rolls up to species level
      ERROR (test_filters.r:39:3): auk_species
      
      [ FAIL 1 | WARN 1 | SKIP 21 | PASS 379 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 552 marked UTF-8 strings
    ```

# bigstatsr

<details>

* Version: 1.2.3
* GitHub: https://github.com/privefl/bigstatsr
* Source code: https://github.com/cran/bigstatsr
* Date/Publication: 2020-03-12 13:20:05 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "bigstatsr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test-univLogReg.R:65:5): equality with glm with all data
      Warning (test-univLogReg.R:65:5): equality with glm with all data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      Warning (test-univLogReg.R:92:5): equality with glm with only half the data
      
      [ FAIL 1 | WARN 129 | SKIP 4 | PASS 3997 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.0Mb
      sub-directories of 1Mb or more:
        extdata   2.3Mb
        libs     14.0Mb
    ```

# coil

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/coil
* Date/Publication: 2020-02-03 19:30:09 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "coil")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          frame
      
      > 
      > test_check("coil")
      ── FAILURE (test_subsetPHMM.r:29:2): PHMMs can be subset as expected ───────────
      small_good$stop_codons not equal to FALSE.
      1 element mismatch
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test_subsetPHMM.r:29:2): PHMMs can be subset as expected
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 117 ]
      Error: Test failures
      Execution halted
    ```

# DiceKriging

<details>

* Version: 1.5.6
* GitHub: NA
* Source code: https://github.com/cran/DiceKriging
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
          █
       1. ├─base::source("test-km.R") test-scaling.R:3:0
       2. │ ├─base::withVisible(eval(ei, envir))
       3. │ └─base::eval(ei, envir)
       4. │   └─base::eval(ei, envir)
       5. └─global::test_that.km(...)
       6.   └─testthat::test_that(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-km.R:43:1): (code run outside of `test_that()`)
      ERROR (test-scaling.R:3:1): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

# ergm.ego

<details>

* Version: 0.5
* GitHub: https://github.com/statnet/ergm.ego
* Source code: https://github.com/cran/ergm.ego
* Date/Publication: 2019-05-31 16:00:03 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "ergm.ego")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
    ...
      Running ‘EgoStat.tests.R’
      Running ‘boot_jack.R’
      Running ‘table_ppop.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Warning (test-statmismatch.R:10:1): (code run outside of `test_that()`) ─────
      `context()` was deprecated in the 3rd edition.
      
      ── ERROR (test-statmismatch.R:15:1): (code run outside of `test_that()`) ───────
      Error: could not find function "egodata"
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-degreedist.R:10:1): (code run outside of `test_that()`)
      ERROR (test-degreedist.R:21:1): (code run outside of `test_that()`)
      Warning (test-statmismatch.R:10:1): (code run outside of `test_that()`)
      ERROR (test-statmismatch.R:15:1): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 2 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking examples ... WARNING
    ```
    ...
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
      Warning: 'compact.rle' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

# gWidgets2tcltk

<details>

* Version: 1.0-6
* GitHub: https://github.com/jverzani/gWidgets2tcltk
* Source code: https://github.com/cran/gWidgets2tcltk
* Date/Publication: 2018-09-25 13:20:02 UTC
* Number of recursive dependencies: 26

Run `cloud_details(, "gWidgets2tcltk")` for more info

</details>

## Newly broken

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Warning message:
In fun(libname, pkgname) : couldn't connect to display ":109"
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error: unable to load R code in package ‘gWidgets2tcltk’
Execution halted
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/gWidgets2tcltk’

```
### CRAN

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gWidgets2tcltk)

```
# hyperSpec

<details>

* Version: 0.99-20200527
* GitHub: https://github.com/cbeleites/hyperSpec
* Source code: https://github.com/cran/hyperSpec
* Date/Publication: 2020-05-29 00:00:03 UTC
* Number of recursive dependencies: 128

Run `cloud_details(, "hyperSpec")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    isample: .....
    .levelplot: ....
    Arith: .........
    read.dat.Witec: SSSSS
    as.wide.df: .....
    any_wl: .......
    decomposition: .........
    wl.eval: .........
    apply: ....
    .cluster.wavelengths: ...
    read.zip.Renishaw: S
    read.spc.Shimadzu: .
    read.ENVI: SSSSS
    spc.rubberband: ....
    read.txt.Renishaw: SSSSS
    vanderMonde: ......
    plotmat: .
    .all.equal: .........
    .labels: ....Error in get_reporter()$.end_context() : attempt to apply non-function
    Calls: hy.unittest ... withRestarts -> withOneRestart -> doWithOneRestart -> force
    Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘reshape2’, ‘caTools’
    ```

# mlrCPO

<details>

* Version: 0.3.6
* GitHub: https://github.com/mlr-org/mlrCPO
* Source code: https://github.com/cran/mlrCPO
* Date/Publication: 2020-04-06 09:00:03 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "mlrCPO")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘run-core.R’
      Running ‘run-cpo.R’
    Running the tests in ‘tests/run-cpo.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > ISTESTING = TRUE  # nolint
      > test_check("mlrCPO", filter = "^_cpo_")
      Loading required package: mlrCPO
      Loading required package: ParamHelpers
      Loading required package: mlr
      'mlr' is in maintenance mode since July 2019. Future development
      efforts will go into its successor 'mlr3' (<https://mlr3.mlr-org.com>).
      Error: No test files found
      Backtrace:
          █
       1. └─testthat::test_check("mlrCPO", filter = "^_cpo_")
       2.   └─testthat::test_dir(...)
      Execution halted
    ```

# mvrsquared

<details>

* Version: 0.1.0
* GitHub: https://github.com/TommyJones/mvrsquared
* Source code: https://github.com/cran/mvrsquared
* Date/Publication: 2020-06-25 06:00:06 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "mvrsquared")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1/1 mismatches
      [1] 0.848 - 0.849 == -0.001
      
      ── FAILURE (test-mvrsquared.R:50:3): Multithreading works as expected ──────────
      `r2` not equal to 1 - ss[[1]]/ss[[2]].
      1/1 mismatches
      [1] 0.848 - 0.849 == -0.000959
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-mvrsquared.R:44:3): Multithreading works as expected
      FAILURE (test-mvrsquared.R:50:3): Multithreading works as expected
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 23 ]
      Error: Test failures
      Execution halted
    ```

# pak

<details>

* Version: 0.1.2
* GitHub: https://github.com/r-lib/pak
* Source code: https://github.com/cran/pak
* Date/Publication: 2019-02-19 18:50:08 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "pak")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-pkgdepends.R’
    Running the tests in ‘tests/test-pkgdepends.R’ failed.
    Last 13 lines of output:
      +       }, add = TRUE)
      +       test_path <- "pkgdepends"
      +       asNamespace("testthat")$test_package_dir(
      +         package = package, test_path = test_path,
      +         filter = NULL, reporter = "check")
      +     }
      +     test()
      +   }
      + }
      > 
      > do()
      Error in asNamespace("testthat")$test_package_dir(package = package, test_path = test_path,  : 
        attempt to apply non-function
      Calls: do -> test
      Execution halted
    ```

# pyMTurkR

<details>

* Version: 1.1.4
* GitHub: NA
* Source code: https://github.com/cran/pyMTurkR
* Date/Publication: 2020-02-04 13:10:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "pyMTurkR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Reason: CheckAWSKeys() is not TRUE
      
      Skip (testxlast2-ApproveAllAssignments.R:81:3): ApproveAllAssignments when Assignments are not found
      Reason: CheckAWSKeys() is not TRUE
      ────────────────────────────────────────────────────────────────────────────────
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 3.5 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● CheckAWSKeys() is not TRUE (58)
      
      [ FAIL 2 | WARN 5 | SKIP 58 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

# renv

<details>

* Version: 0.12.0
* GitHub: https://github.com/rstudio/renv
* Source code: https://github.com/cran/renv
* Date/Publication: 2020-08-28 21:40:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "renv")` for more info

</details>

## Newly broken

*   checking package dependencies ... ERROR
    ```
    Packages suggested but not available:
      'covr', 'devtools', 'knitr', 'packrat', 'remotes', 'reticulate',
      'rmarkdown', 'uuid', 'yaml'
    
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
      ● bind_list warns on name collision ............................. [PASS / <0.1s]
      ● versions are compared as expected ............................. [PASS / <0.1s]
      ● inject inserts text at expected anchor point .................. [PASS / <0.1s]
      ● aliased_path() correctly forms aliased path ................... [PASS / <0.1s]
      ● memoize avoids evaluating expression multiple times ........... [PASS / <0.1s]
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 358 | SKIPPED: 63 | WARNINGS: 0 | FAILED: 4 ]
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
    
      ‘ci.Rmd’ using ‘UTF-8’... failed
      ‘collaborating.Rmd’ using ‘UTF-8’... failed
      ‘docker.Rmd’ using ‘UTF-8’... failed
      ‘faq.Rmd’ using ‘UTF-8’... failed
      ‘local-sources.Rmd’ using ‘UTF-8’... failed
      ‘lockfile.Rmd’ using ‘UTF-8’... failed
      ‘mran.Rmd’ using ‘UTF-8’... failed
      ‘packages.Rmd’ using ‘UTF-8’... failed
      ‘python.Rmd’ using ‘UTF-8’... failed
      ‘renv.Rmd’ using ‘UTF-8’... failed
    ```

# rvgtest

<details>

* Version: 0.7.4
* GitHub: NA
* Source code: https://github.com/cran/rvgtest
* Date/Publication: 2014-02-26 15:11:17
* Number of recursive dependencies: 25

Run `cloud_details(, "rvgtest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘dotestthat.R’
    Running the tests in ‘tests/dotestthat.R’ failed.
    Last 13 lines of output:
       1. testthat::expect_error(...) test_Runuran.R:100:8
       6. rvgtest::xerror(...)
      
      ── 3. FAILURE (test_ierror.R:324:9): [ie-i31] calling plot.rvgt.ierror: x ──────
      `plot.rvgt.ierror()` threw an error with unexpected message.
      Expected match: "'x' is missing."
      Actual message: "argument \"x\" is missing, with no default"
      Backtrace:
       1. testthat::expect_error(plot.rvgt.ierror(), msg) test_ierror.R:324:8
       6. rvgtest::plot.rvgt.ierror()
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Frustration is a natural part of programming :)
      Error: Test failures
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    uerror : myaqdist: no visible global function definition for ‘uq’
    uerror: no visible global function definition for ‘quantile’
    unuran.distr.class: no visible global function definition for
      ‘unuran.details’
    xerror: no visible global function definition for ‘is’
    xerror: no visible global function definition for ‘unuran.is.inversion’
    xerror : myaqdist: no visible global function definition for ‘uq’
    xerror: no visible global function definition for ‘quantile’
    Undefined global functions or variables:
      abline chisq.test is lines pchisq pnorm points polygon qnorm quantile
      rainbow rbinom read.table rnorm runif text uniroot unuran.details
      unuran.is.inversion uq ur
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "lines", "points", "polygon", "text")
      importFrom("methods", "is")
      importFrom("stats", "chisq.test", "pchisq", "pnorm", "qnorm",
                 "quantile", "rbinom", "rnorm", "runif", "uniroot")
      importFrom("utils", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# shinyEventLogger

<details>

* Version: 0.1.1
* GitHub: https://github.com/kalimu/shinyEventLogger
* Source code: https://github.com/cran/shinyEventLogger
* Date/Publication: 2019-02-22 10:20:03 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "shinyEventLogger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(shinyEventLogger)
      > 
      > test_check("shinyEventLogger")
      ── FAILURE (???): logging wrapper functions ────────────────────────────────────
      `log_test(expect_true(FALSE))` does not match "|#2|Error: FALSE isn't true.".
      Actual value: "|#2|Error: FALSE is not TRUE`actual`:   FALSE`expected`: TRUE "
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (???): logging wrapper functions
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 135 ]
      Error: Test failures
      Execution halted
    ```

# storr

<details>

* Version: 1.2.1
* GitHub: https://github.com/richfitz/storr
* Source code: https://github.com/cran/storr
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

# thor

<details>

* Version: 1.1.2
* GitHub: https://github.com/richfitz/thor
* Source code: https://github.com/cran/thor
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

# treeclim

<details>

* Version: 2.0.5.1
* GitHub: https://github.com/cszang/treeclim
* Source code: https://github.com/cran/treeclim
* Date/Publication: 2020-10-08 13:50:02 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "treeclim")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dplR’
    ```

## Newly fixed

*   checking package dependencies ... ERROR
    ```
    Package required and available but unsuitable version: ‘testthat’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# unitizer

<details>

* Version: 1.4.10
* GitHub: https://github.com/brodieG/unitizer
* Source code: https://github.com/cran/unitizer
* Date/Publication: 2020-05-12 17:00:03 UTC
* Number of recursive dependencies: 46

Run `cloud_details(, "unitizer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘aunitizer.R’
      Running ‘runtt.R’
    Running the tests in ‘tests/runtt.R’ failed.
    Last 13 lines of output:
      
      ✔ |  15       | Unitize 2 [7.7 s]
      
      ⠏ |   0       | testthat.zzrunlast                                              ALL TESTS COMPLETED!
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 66.4 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● empty test (3)
      ● fails CRAN (2)
      
      [ FAIL 1 | WARN 15 | SKIP 5 | PASS 834 ]
      Error: Test failures
      Execution halted
    ```

