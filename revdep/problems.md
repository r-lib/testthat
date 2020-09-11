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

# IncDTW

<details>

* Version: 1.1.3.1
* GitHub: NA
* Source code: https://github.com/cran/IncDTW
* Date/Publication: 2020-04-01 06:02:00 UTC
* Number of recursive dependencies: 108

Run `cloud_details(, "IncDTW")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ●  (4)
      ●  there is no bug! (1)
      ● blabla (1)
      ● comparison 01-z (1)
      ● runtime comparison (3)
      ● speed comparison (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_cm.R:62:4): custom dist function
      
      [ FAIL 1 | WARN 0 | SKIP 12 | PASS 169 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# ldaPrototype

<details>

* Version: 0.2.0
* GitHub: https://github.com/JonasRieger/ldaPrototype
* Source code: https://github.com/cran/ldaPrototype
* Date/Publication: 2020-07-16 11:10:02 UTC
* Number of recursive dependencies: 110

Run `cloud_details(, "ldaPrototype")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      The following object is masked from 'package:data.table':
      
          set
      
      The following object is masked from 'package:stats':
      
          cutree
      
      > 
      > test_check("ldaPrototype")
      ── Warning (test_LDABatch.R:146:3): is.LDABatch ────────────────────────────────
      Parameter(s) num.iterations are duplicated. Take last one(s).
      
      Killed
    ```

# markmyassignment

<details>

* Version: 0.8.2
* GitHub: NA
* Source code: https://github.com/cran/markmyassignment
* Date/Publication: 2019-04-28 19:50:03 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "markmyassignment")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─markmyassignment::mark_my_assignment()
       2.   └─markmyassignment:::run_test_suite(...)
       3.     └─testthat::test_dir(...)
       4.       └─testthat:::test_files(...)
       5.         └─testthat:::test_files(...)
       6.           └─testthat:::test_files_check(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (???): mark_my_assignment()
      FAILURE (test-mark_my_dir.R:11:3): mark_my_dir()
      ERROR (???): additional tests
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 193 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# mcmcr

<details>

* Version: 0.3.0
* GitHub: https://github.com/poissonconsulting/mcmcr
* Source code: https://github.com/cran/mcmcr
* Date/Publication: 2020-07-13 18:10:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "mcmcr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Attributes: < Component "row.names": Modes: numeric, character >
      Attributes: < Component "row.names": target is numeric, current is character >
      
      ── FAILURE (test-ess.R:23:3): ess.mcmcr as df ──────────────────────────────────
      ess(mcmcr_example, as_df = TRUE, by = "parameter") not identical to structure(...).
      Attributes: < Component "row.names": Modes: numeric, character >
      Attributes: < Component "row.names": target is numeric, current is character >
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-converged.R:11:3): converged.mcmcr
      FAILURE (test-ess.R:23:3): ess.mcmcr as df
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 411 ]
      Error: Test failures
      Execution halted
    ```

# mlr3pipelines

<details>

* Version: 0.2.1
* GitHub: https://github.com/mlr-org/mlr3pipelines
* Source code: https://github.com/cran/mlr3pipelines
* Date/Publication: 2020-08-18 07:40:02 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "mlr3pipelines")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ● empty test (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test_Graph.R:221:3): assert_graph test
      FAILURE (test_Graph.R:233:3): assert_graph test
      Warning (test_graphlearner.R:281:3): graphlearner predict type inference
      Warning (test_graphlearner.R:283:3): graphlearner predict type inference
      Warning (test_graphlearner.R:301:3): graphlearner predict type inference
      Warning (test_graphlearner.R:303:3): graphlearner predict type inference
      Warning (test_graphlearner.R:334:3): graphlearner predict type inference
      Warning (test_multichannels.R:192:3): vararg passes args through as it should
      
      [ FAIL 2 | WARN 6 | SKIP 67 | PASS 9888 ]
      Error: Test failures
      Execution halted
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

# MoMPCA

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/MoMPCA
* Date/Publication: 2020-07-01 09:40:07 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "MoMPCA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(MoMPCA)
      > 
      > test_check("MoMPCA")
      ── Skip (test-init_functions.R:14:3): Check init_Y w/ kmeans_lda ───────────────
      Reason: On CRAN
      
      ── Skip (test-init_functions.R:20:3): Check initializeBeta w/ lda and given cont
      Reason: On CRAN
      
      ── Skip (test-init_functions.R:35:3): Check initializeBeta w/ lda and NULL contr
      Reason: On CRAN
      
      Killed
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 16 marked UTF-8 strings
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

# patrick

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/patrick
* Date/Publication: 2018-08-13 14:10:03 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "patrick")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── FAILURE (test-with_parameters.R:21:7): Running tests: fail ──────────────────
      exp\$message does not match "`case` isn't true".
      Actual value: "`case` is not TRUE\\n\\n`actual`:   FALSE\\n`expected`: TRUE "
      
      ── FAILURE (test-with_parameters.R:21:7): Running tests: null ──────────────────
      exp\$message does not match "`case` isn't true".
      Actual value: "`case` is not TRUE\\n\\n`actual` is NULL\\n`expected` is a logical vector \(TRUE\)"
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-with_parameters.R:21:7): Running tests: fail
      FAILURE (test-with_parameters.R:21:7): Running tests: null
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
    ```

# ps

<details>

* Version: 1.3.4
* GitHub: https://github.com/r-lib/ps
* Source code: https://github.com/cran/ps
* Date/Publication: 2020-08-11 14:30:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "ps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ⠏ |   0       | winver                                                          
      ✔ |   6       | winver
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 11.5 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● Needs working IPv6 connection (1)
      ● On CRAN (11)
      ● no terminal (1)
      ● socat is not available (7)
      
      [ FAIL 2 | WARN 0 | SKIP 20 | PASS 416 ]
      Error: Test failures
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
      Duration: 2.2 s
      
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

# revdbayes

<details>

* Version: 1.3.8
* GitHub: https://github.com/paulnorthrop/revdbayes
* Source code: https://github.com/cran/revdbayes
* Date/Publication: 2020-08-31 07:30:02 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "revdbayes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── ERROR (test-gp.R:35:3): (code run outside of `test_that()`) ─────────────────
      Error: `desc` must be a string
      Backtrace:
          █
       1. └─revdbayes:::test_function(x, test_string) test-gp.R:35:2
       2.   └─testthat::test_that(...) test-gp.R:21:2
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-bingp.R:37:3): (code run outside of `test_that()`)
      ERROR (test-gev.R:35:3): (code run outside of `test_that()`)
      ERROR (test-gp.R:35:3): (code run outside of `test_that()`)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 190 ]
      Error: Test failures
      Execution halted
    ```

# rlang

<details>

* Version: 0.4.7
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2020-07-09 23:00:18 UTC
* Number of recursive dependencies: 48

Run `cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ● On CRAN (14)
      ● Until the workaround is in place (1)
      ● rlanglibtest cannot be loaded (1)
      ● test needs crayon (1)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-eval-tidy.R:287:3): names are translated to native when creating data mask
      Warning (test-nse-defuse.R:237:3): serialised unicode in `:=` LHS is unserialised
      FAILURE (test-trace.R:24:3): tree printing only changes deliberately
      FAILURE (test-trace.R:51:3): can print tree with collapsed branches
      FAILURE (test-trace.R:63:3): can print tree with collapsed branches
      
      [ FAIL 3 | WARN 2 | SKIP 26 | PASS 2696 ]
      Error: Test failures
      Execution halted
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
      Backtrace:
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

# threshr

<details>

* Version: 1.0.2
* GitHub: https://github.com/paulnorthrop/threshr
* Source code: https://github.com/cran/threshr
* Date/Publication: 2020-09-05 16:50:03 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "threshr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── ERROR (test-inv_box_cox.R:7:3): (code run outside of `test_that()`) ─────────
      Error: `desc` must be a string
      Backtrace:
          █
       1. └─testthat::test_that(...) test-inv_box_cox.R:7:2
      
      Fitting at threshold number ...
      1 2 3 4 5 6 7 8 9 10 ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-box_cox.R:7:3): (code run outside of `test_that()`)
      ERROR (test-inv_box_cox.R:7:3): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 231 ]
      Error: Test failures
      Execution halted
    ```

# treeclim

<details>

* Version: 2.0.3
* GitHub: NA
* Source code: https://github.com/cran/treeclim
* Date/Publication: 2019-03-22 15:20:03 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "treeclim")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test_month_processing.R:7:3): continuity in month sequences is recognized correctly
      Warning (test_month_processing.R:8:3): continuity in month sequences is recognized correctly
      Warning (test_month_processing.R:9:3): continuity in month sequences is recognized correctly
      Warning (test_month_processing.R:10:3): continuity in month sequences is recognized correctly
      Warning (test_month_processing.R:22:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:23:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:24:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:25:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:26:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:27:3): ’check_months’ correctly identifies wrong month specs
      Warning (test_month_processing.R:28:3): ’check_months’ correctly identifies wrong month specs
      
      [ FAIL 1 | WARN 14 | SKIP 0 | PASS 147 ]
      Error: Test failures
      Execution halted
    ```

## In both

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
      ────────────────────────────────────────────────────────────────────────────────
      
      
      
      
      ══ Results ═════════════════════════════════════════════════════════════════════
      Duration: 14.8 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● fails CRAN (2)
      
      [ FAIL 10 | WARN 14 | SKIP 2 | PASS 462 ]
      ══ Terminated early ════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

# vdiffr

<details>

* Version: 0.3.2.2
* GitHub: https://github.com/r-lib/vdiffr
* Source code: https://github.com/cran/vdiffr
* Date/Publication: 2020-07-07 06:11:10 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "vdiffr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
    ...
        ='stroke-width: 1.07; stroke: none; stroke-linecap: square; str
        oke-linejoin: miter; fill: #595959;' clip-path='url(#cpMjcuODl8
        NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                              
      > <line x1='417.00' y1='545.13' x2='417.00' y2='22.77' style='str
      : oke-width: 1.07; stroke-linecap: butt;' clip-path='url(#cpMjcuO
      : Dl8NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                           
        <rect x='27.89' y='22.77' width='686.64' height='522.36' style=
        'stroke-width: 1.07; stroke: #333333;' clip-path='url(#cpMjcuOD
        l8NzE0LjUyfDU0NS4xM3wyMi43Nw==)' />                            
        <defs>                                                         
      
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > if (getRversion() < "4.1.0") {
      +   library("testthat")
      +   library("vdiffr")
      +   test_check("vdiffr")
      + }
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘freetypeharfbuzz’
      All declared Imports should be used.
    ```

