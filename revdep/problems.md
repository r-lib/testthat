# bayesCT

<details>

* Version: 0.99.3
* GitHub: https://github.com/thevaachandereng/bayesCT
* Source code: https://github.com/cran/bayesCT
* Date/Publication: 2020-07-01 09:30:02 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "bayesCT")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │   │ ├─testthat:::.capture(...)
        5. │   │ │ └─base::withCallingHandlers(...)
        6. │   │ └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. │   └─testthat:::cnd_matcher(class %||% base_class, regexp, ...)
        8. ├─bayesCT::pw_exp_impute(time = 0.1, hazard = 0.02, cutpoint = 10)
        9. │ └─base::stop("cutpoint needs to be null if length of hazard is 1!")
       10. └─base::.handleSimpleError(...)
       11.   └─testthat:::h(simpleError(msg, call))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_pw_exp.R:25:3): The piecewise exponential impute are
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 72 ]
      Error: Test failures
      Execution halted
    ```

# cde

<details>

* Version: 0.4.1
* GitHub: https://github.com/ropensci/cde
* Source code: https://github.com/cran/cde
* Date/Publication: 2019-09-04 08:40:02 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "cde")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘cde-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_rnag
    > ### Title: Retrieve Reasons for Not Achieving Good Status
    > ### Aliases: get_rnag
    > 
    > ### ** Examples
    > 
    > # get all RNAG issues identified for waterbody GB112071065700
    > get_rnag("GB112071065700", "WBID")
    trying URL 'http://environment.data.gov.uk/catchment-planning/data/reason-for-failure.csv?waterBody=GB112071065700&_view=csv'
    Error in names(cde_data) <- gsub(".", "_", names(cde_data), fixed = TRUE) : 
      attempt to set an attribute on NULL
    Calls: get_rnag -> download_cde
    Execution halted
    ```

## In both

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ==================================================
      downloaded 113 KB
      
      trying URL 'http://environment.data.gov.uk/catchment-planning/RiverBasinDistrict/6/classification?item=all&status=all&format=csv'
      Content type 'application/octet-stream' length 1856286 bytes (1.8 MB)
      ==================================================
      downloaded 1.8 MB
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-get_rnag.r:59:3): specifying type for WB download returns a message
      ERROR (test-plot_&_print.r:6:3): plotting WBID data results in error
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 64 ]
      Error: Test failures
      Execution halted
    ```

# cleancall

<details>

* Version: 0.1.1
* GitHub: https://github.com/r-lib/cleancall
* Source code: https://github.com/cran/cleancall
* Date/Publication: 2020-01-12 00:30:02 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "cleancall")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       25.                       └─testthat:::test_code(desc, code, env = parent.frame(), reporter = reporter)
       26.                         └─base::tryCatch(...)
       27.                           └─base:::tryCatchList(expr, classes, parentenv, handlers)
       28.                             ├─base:::tryCatchOne(...)
       29.                             │ └─base:::doTryCatch(return(expr), name, parentenv, handler)
       30.                             └─base:::tryCatchList(expr, names[-nh], parentenv, handlers[-nh])
       31.                               └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-cleancall.R:19:3): handlers can jump
      ERROR (test-cleancall.R:17:1): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
    ```

# geoelectrics

<details>

* Version: 0.2.0
* GitHub: https://github.com/kleebaum/geoelectrics
* Source code: https://github.com/cran/geoelectrics
* Date/Publication: 2018-08-28 14:24:26 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "geoelectrics")` for more info

</details>

## Newly broken

*   checking whether package ‘geoelectrics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/geoelectrics/new/geoelectrics.Rcheck/00install.out’ for details.
    ```

*   checking contents of ‘data’ directory ... WARNING
    ```
    Output for data("sinkhole", package = "geoelectrics"):
      Warning messages:
      1: In rgl.init(initValue, onlyNULL) : RGL: unable to open X11 display
      2: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'. 
    ```

# gMOIP

<details>

* Version: 1.4.3
* GitHub: https://github.com/relund/gMOIP
* Source code: https://github.com/cran/gMOIP
* Date/Publication: 2020-02-20 15:10:02 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "gMOIP")` for more info

</details>

## Newly broken

*   checking whether package ‘gMOIP’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/gMOIP/new/gMOIP.Rcheck/00install.out’ for details.
    ```

# gWidgets2RGtk2

<details>

* Version: 1.0-7
* GitHub: https://github.com/jverzani/gWidgets2RGtk2
* Source code: https://github.com/cran/gWidgets2RGtk2
* Date/Publication: 2018-01-04 14:48:14 UTC
* Number of recursive dependencies: 28

Run `cloud_details(, "gWidgets2RGtk2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘run-tests.R’
    Running the tests in ‘tests/run-tests.R’ failed.
    Last 13 lines of output:
      > f <- Filter(function(x) !grepl("README", x), f)
      > f <- Filter(function(x) !grepl("html", x), f)
      > 
      > sapply(f, function(i) {
      +   message("testing ", i)
      +   source(i)
      + })
      testing /opt/R/3.6.3/lib/R/library/gWidgets2/tests/button.R
      Loading required package: gWidgets2RGtk2
      Loading required package: memoise
      Loading required package: RGtk2
      R session is headless; GTK+ not initialized.
      Error in guiToolkit() : Can't load RGtk2
      Calls: sapply ... withVisible -> eval -> eval -> gwindow -> guiToolkit
      Execution halted
    ```

# HandTill2001

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/HandTill2001
* Date/Publication: 2019-12-19 17:30:05 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "HandTill2001")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘runit.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │   │ ├─testthat:::.capture(...)
        5. │   │ │ └─base::withCallingHandlers(...)
        6. │   │ └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. │   └─testthat:::cnd_matcher(class %||% base_class, regexp, ...)
        8. ├─HandTill2001:::throw(string)
        9. │ └─base::stop(condition)
       10. └─(function (cnd) ...
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-classes.R:376:3): extraneous response levels
      ERROR (test-throw.R:5:3): throw the HandTill2001 exception
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ROCR’, ‘caTools’
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

# jstor

<details>

* Version: 0.3.9
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2020-06-04 04:50:03 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "jstor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("jstor")
      ── Skip (test-import-spec.R:62:3): import-spec print method works ──────────────
      Reason: This test is stupid, should be improved. It depends on the console width
             which is not a good idea.
      
      ── Skip (test-journal-overview.R:19:3): out of memory journal list is available 
      Reason: Downloading was disabled
      
      ── Skip (test-re-import.R:299:1): files can be written to dir ──────────────────
      Reason: empty test
      
      ── Skip (test-re-import.R:305:1): files are removed ────────────────────────────
      Reason: empty test
      
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

# Morpho

<details>

* Version: 2.8
* GitHub: https://github.com/zarquon42b/Morpho
* Source code: https://github.com/cran/Morpho
* Date/Publication: 2020-03-09 13:30:10 UTC
* Number of recursive dependencies: 108

Run `cloud_details(, "Morpho")` for more info

</details>

## Newly broken

*   checking whether package ‘Morpho’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'rgl.init' failed, running with 'rgl.useNULL = TRUE'.
    See ‘/tmp/workdir/Morpho/new/Morpho.Rcheck/00install.out’ for details.
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.3Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        libs  12.7Mb
    ```

# msm

<details>

* Version: 1.6.8
* GitHub: https://github.com/chjackson/msm
* Source code: https://github.com/cran/msm
* Date/Publication: 2019-12-16 15:30:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "msm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test_base.R’
    Running the tests in ‘tests/test_base.R’ failed.
    Last 13 lines of output:
      Warning (test_models.r:588:1): error handling: covinits
      Warning (test_models.r:592:1): error handling: covinits
      Warning (test_models.r:595:1): error handling: covinits
      Warning (test_models.r:595:1): error handling: covinits
      Warning (test_models.r:624:5): error handling: check states
      Warning (test_models.r:643:5): error handling: check times
      Warning (test_models.r:643:5): error handling: check times
      FAILURE (test_models.r:643:5): error handling: check times
      Warning (test_models.r:667:5): error handling: check model
      Warning (test_models_misc.r:60:5): misclassification model with est.initprobs
      Warning (test_models_misc.r:106:5): data inconsistent with initprobs/ematrix
      
      [ FAIL 1 | WARN 13 | SKIP 2 | PASS 473 ]
      Error: Test failures
      Execution halted
    ```

# ndtv

<details>

* Version: 0.13.0
* GitHub: https://github.com/statnet/ndtv
* Source code: https://github.com/cran/ndtv
* Date/Publication: 2019-05-22 07:20:03 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "ndtv")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘ndtv.Rnw’
      ...
    Optimizing with step length 0.228504484514704.
    The log-likelihood improved by 4.964.
    Iteration 4 of at most 20:
    Optimizing with step length 0.237380477563894.
    The log-likelihood did not improve.
    Iteration 5 of at most 20:
    
      When sourcing ‘ndtv.R’:
    Error: Unconstrained MCMC sampling did not mix at all. Optimization cannot continue.
    Execution halted
    
      ‘ndtv.Rnw’... failed
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
      Duration: 13.3 s
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● Needs working IPv6 connection (1)
      ● On CRAN (11)
      ● no terminal (1)
      ● socat is not available (7)
      
      [ FAIL 2 | WARN 0 | SKIP 20 | PASS 416 ]
      Error: Test failures
      Execution halted
    ```

# RcmdrPlugin.lfstat

<details>

* Version: 0.8.3
* GitHub: NA
* Source code: https://github.com/cran/RcmdrPlugin.lfstat
* Date/Publication: 2018-06-26 10:11:20 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "RcmdrPlugin.lfstat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      The following objects are masked from 'package:base':
      
          as.Date, as.Date.numeric
      
      Loading required package: lmom
      Loading required package: lattice
      ── FAILURE (test-wmo-guidelines.r:152:3): 2.8 Extreme value ────────────────────
      `expect_warning(...)` produced warnings.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-wmo-guidelines.r:152:3): 2.8 Extreme value
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# rotor

<details>

* Version: 0.2.4
* GitHub: https://github.com/s-fleck/rotor
* Source code: https://github.com/cran/rotor
* Date/Publication: 2020-01-07 19:10:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "rotor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rotor)
      > 
      > test_check("rotor")
      ── FAILURE (test_rotate_date.R:320:3): dry_run does not modify the file systen ─
      `{ ... }` produced messages.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test_rotate_date.R:320:3): dry_run does not modify the file systen
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 478 ]
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
      Error: Argument 'aqdist' is object of class 'unuran' of invalid distribution type.
      Backtrace:
       1. testthat::expect_error(...) test_Runuran.R:100:8
       7. rvgtest::xerror(...)
      
      ── 3. ERROR (test_ierror.R:324:9): [ie-i31] calling plot.rvgt.ierror: x ────────
      Error: argument "x" is missing, with no default
      Backtrace:
       1. testthat::expect_error(plot.rvgt.ierror(), msg) test_ierror.R:324:8
       7. rvgtest::plot.rvgt.ierror()
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      No one gets it right on their first try
      Error: Test failures
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    uerror: no visible global function definition for ‘quantile’
    unuran.distr.class: no visible global function definition for
      ‘unuran.details’
    xerror: no visible global function definition for ‘is’
    xerror: no visible global function definition for ‘unuran.is.inversion’
    xerror : myaqdist: no visible global function definition for ‘uq’
    xerror: no visible global function definition for ‘quantile’
    Undefined global functions or variables:
      abline chisq.test is lines pchisq plot pnorm points polygon qnorm
      quantile rainbow rbinom read.table rnorm runif text uniroot
      unuran.details unuran.is.inversion uq ur
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "lines", "plot", "points", "polygon",
                 "text")
      importFrom("methods", "is")
      importFrom("stats", "chisq.test", "pchisq", "pnorm", "qnorm",
                 "quantile", "rbinom", "rnorm", "runif", "uniroot")
      importFrom("utils", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# santoku

<details>

* Version: 0.5.0
* GitHub: https://github.com/hughjonesd/santoku
* Source code: https://github.com/cran/santoku
* Date/Publication: 2020-08-27 11:30:09 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "santoku")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (1)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-breaks.R:36:3): brk_left, brk_right
      Warning (test-breaks.R:40:3): brk_left, brk_right
      Warning (test-chop.R:30:3): NA, NaN and Inf
      Warning (test-chop.R:36:3): NA, NaN and Inf
      Warning (test-labels.R:106:3): lbl_intervals
      ERROR (test-zzz-systematic.R:122:5): systematic tests
      
      [ FAIL 1 | WARN 5 | SKIP 1 | PASS 292 ]
      Error: Test failures
      Execution halted
    ```

# sars

<details>

* Version: 1.2.3
* GitHub: https://github.com/txm676/sars
* Source code: https://github.com/cran/sars
* Date/Publication: 2020-05-31 20:30:03 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "sars")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Warning (test_lin_pow.R:26:3): lin_pow returns warning for all identical species
      FAILURE (test_lin_pow.R:26:3): lin_pow returns warning for all identical species
      Warning (test_lin_pow.R:26:3): lin_pow returns warning for all identical species
      Warning (test_lin_pow.R:29:3): lin_pow returns warning for all identical species
      Warning (test_lin_pow.R:31:3): lin_pow returns warning for all identical species
      Warning (test_power.R:37:3): sar_power returns warning for all identical species
      Warning (test_power.R:37:3): sar_power returns warning for all identical species
      FAILURE (test_power.R:37:3): sar_power returns warning for all identical species
      Warning (test_power.R:37:3): sar_power returns warning for all identical species
      Warning (test_power.R:41:3): sar_power returns warning for all identical species
      Warning (test_power.R:41:3): sar_power returns warning for all identical species
      
      [ FAIL 2 | WARN 12 | SKIP 2 | PASS 122 ]
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

