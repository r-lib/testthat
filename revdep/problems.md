# CoGAPS

Version: 3.2.40

## Newly broken

*   R CMD check timed out
    

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.9Mb
      sub-directories of 1Mb or more:
        extdata  19.6Mb
    ```

*   checking compiled code ... NOTE
    ```
    ...
    File ‘CoGAPS/libs/CoGAPS.so’:
      Found ‘__ZNSt3__14coutE’, possibly from ‘std::cout’ (C++)
        Objects: ‘GapsResult.o’, ‘GapsRunner.o’, ‘file_parser/CsvParser.o’,
          ‘file_parser/FileParser.o’, ‘file_parser/GctParser.o’,
          ‘file_parser/TsvParser.o’, ‘file_parser/MtxParser.o’
      Found ‘___stdoutp’, possibly from ‘stdout’ (C)
        Object: ‘GapsRunner.o’
      Found ‘_printf’, possibly from ‘printf’ (C)
        Objects: ‘GapsParameters.o’, ‘GapsRunner.o’,
          ‘file_parser/CsvParser.o’, ‘file_parser/GctParser.o’,
          ‘file_parser/TsvParser.o’
      Found ‘_putchar’, possibly from ‘putchar’ (C)
        Object: ‘GapsParameters.o’
      Found ‘_puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Objects: ‘GapsParameters.o’, ‘GapsRunner.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# drake

Version: 7.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: run_native_backend(config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/exec-backend.R:3
      4: get(paste0("backend_", parallelism), envir = getNamespace("drake"))(config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/exec-backend.R:15
      5: loop_build(target = targets[i], config = config, downstream = targets[-seq_len(i)]) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/backend-loop.R:8
      6: conclude_build(build = build, config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/backend-loop.R:27
      7: handle_build_exceptions(target = target, meta = meta, config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/exec-build.R:38
      8: drake_error("Target `", target, "` failed. Call `diagnose(", target, ")` for details. Error message:\n  ", meta$error$message, 
             config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/utils-handlers.R:26
      9: stop(..., call. = FALSE) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/vis-console.R:218
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 803 SKIPPED: 207 WARNINGS: 0 FAILED: 1
      1. Error: lock_envir works (@test-edge-cases.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# jetpack

Version: 0.4.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      9: suppressMessages(packrat::snapshot(project = dir, prompt = FALSE, ignore.stale = TRUE, snapshot.sources = FALSE)) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/jetpack/new/jetpack.Rcheck/00_pkg_src/jetpack/R/helpers.R:168
      10: withCallingHandlers(expr, message = function(c) invokeRestart("muffleMessage"))
      11: packrat::snapshot(project = dir, prompt = FALSE, ignore.stale = TRUE, snapshot.sources = FALSE) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/jetpack/new/jetpack.Rcheck/00_pkg_src/jetpack/R/helpers.R:168
      12: snapshotImpl(project, available, lib.loc, dry.run, ignore.stale = ignore.stale, prompt = prompt && !dry.run, snapshot.sources = snapshot.sources, 
             infer.dependencies = infer.dependencies)
      13: annotatePkgDesc(record, project, libDir(project))
      14: stopifnot(nrow(content) == 1)
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 6 SKIPPED: 0 WARNINGS: 6 FAILED: 2
      1. Error: it works (@test-jetpack.R#14) 
      2. Error: it works (@test-jetpack.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# markmyassignment

Version: 0.8.1

## Newly broken

*   checking whether package ‘markmyassignment’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘checkmate::expect_vector’ by ‘testthat::expect_vector’ when loading ‘markmyassignment’
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/markmyassignment/new/markmyassignment.Rcheck/00install.out’ for details.
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# msPurity

Version: 1.8.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1] "## Check groupPeaks (function only)               ##"
      [1] "########################################################"
      [1] "=== check single core ==="
      [1] "########################################################"
      [1] "## Check mzML Workflow                                ##"
      [1] "########################################################"
      [1] "averaging spectra"
      [1] "filtering spectra"
      [1] "subtracting"
      [1] "purity prediction"
      Error in close.connection(con) : invalid connection
      Calls: test_check ... with_reporter -> force -> source_file -> close -> close.connection
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘Rcpp’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    subtract,purityD: no visible binding for global variable ‘i’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-subtract.R:38)
    validate,purityA: no visible global function definition for ‘head’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityA-validate.R:26)
    writeOut,purityD: no visible global function definition for ‘write.csv’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-writeOut.R:37)
    writeOut,purityD: no visible global function definition for ‘write.csv’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-writeOut.R:42)
    Undefined global functions or variables:
      abline alli approxfun as.dist dev.off dist dnorm fix head i idx
      legend lines median mtch mtchi na.omit parallel plot png points
      purity read.csv read.table scanid sd text topn variable write.csv
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "legend", "lines", "plot", "points",
                 "text")
      importFrom("stats", "approxfun", "as.dist", "dist", "dnorm", "median",
                 "na.omit", "sd")
      importFrom("utils", "fix", "head", "read.csv", "read.table",
                 "write.csv")
    to your NAMESPACE file.
    ```

# multicolor

Version: 0.1.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("multicolor")
      [31m──[39m [31m1. Error: baseline works (@test-multicolor.R#39) [39m [31m────────────────────────────────────────────────────────────[39m
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(suppressMessages(multi_color(colors = c("seafoamgreen", "green"))), expect_error(suppressMessages(multi_color(colors = c("maroon4", 
             "bisque2"), direction = "one")))) at testthat/test-multicolor.R:39
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:130
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), encodeString(cond$message, quote = "\"")) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:266
      4: encodeString(regexp, quote = "\"") at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:266
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 27 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: baseline works (@test-multicolor.R#39) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘cowsay’
      All declared Imports should be used.
    ```

# nat

Version: 1.8.11

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-comparison.R:27
      
      [31m──[39m [31m2. Error: we can plot dotprops in 3D (@test-neuron.R#146) [39m [31m───────────────────────────────────────────────────[39m
      methods::hasMethod(operator, class(act$val)) is not TRUE
      1: expect_gt(plottedSegments, 0) at testthat/test-neuron.R:146
      2: expect_compare(">", act, exp) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-comparison.R:68
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-comparison.R:27
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 792 SKIPPED: 4 WARNINGS: 0 FAILED: 2
      1. Error: we can plot neurons in 3D (@test-neuron.R#141) 
      2. Error: we can plot dotprops in 3D (@test-neuron.R#146) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking whether package ‘nat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: partial match of 'OS' to 'OS.type'
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/nat/new/nat.Rcheck/00install.out’ for details.
    ```

# parallelMap

Version: 1.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: suppressMessages({
             reg = BatchJobs::makeRegistry(id = basename(fd), file.dir = fd, work.dir = wd)
         }) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/parallelStart.R:173
      4: withCallingHandlers(expr, message = function(c) invokeRestart("muffleMessage"))
      5: BatchJobs::makeRegistry(id = basename(fd), file.dir = fd, work.dir = wd) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/parallelStart.R:174
      6: dbCreateJobStatusTable(reg)
      7: dbDoQuery(reg, query, flags = "rwc")
      8: stopf("Error in dbDoQuery. %s (%s)", res, query)
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 62 SKIPPED: 0 WARNINGS: 288 FAILED: 1
      1. Error: warn on unregisterred level (@test_registerLevels.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmpi’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    parallelGetOptions: no visible global function definition for
      ‘setNames’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/parallelShowOptions.R:17)
    parallelGetOptions: no visible global function definition for
      ‘setNames’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/parallelShowOptions.R:18)
    parallelStop: no visible global function definition for
      ‘getFromNamespace’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/parallelStop.R:30)
    stopWithJobErrorMessages: no visible global function definition for
      ‘head’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/displayErrorMessages.R:11)
    stopWithJobErrorMessages: no visible global function definition for
      ‘head’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/parallelMap/new/parallelMap.Rcheck/00_pkg_src/parallelMap/R/displayErrorMessages.R:12)
    Undefined global functions or variables:
      getFromNamespace head setNames
    Consider adding
      importFrom("stats", "setNames")
      importFrom("utils", "getFromNamespace", "head")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# platetools

Version: 0.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("platetools")
      [31m──[39m [31m1. Error: missing_wells errors when expected (@test-missing_wells.R#20) [39m [31m─────────────────────────────────────[39m
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(missing_wells(as.list(full), well = full$well), expect_error(missing_wells(full, well = missing$wel))) at testthat/test-missing_wells.R:20
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:130
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), encodeString(cond$message, quote = "\"")) at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:266
      4: encodeString(regexp, quote = "\"") at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-output.R:266
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 178 SKIPPED: 4 WARNINGS: 5 FAILED: 1
      1. Error: missing_wells errors when expected (@test-missing_wells.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘S4Vectors’, ‘data.table’
    ```

# raustats

Version: 0.1.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: readxl
    Attaching package: 'raustats'
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/5206.0Dec%202018?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/5206.0Dec%202018?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/6401.0Dec%202018?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/5206.0Dec%202017?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/5206.0Sep%202017?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/1270.0.55.001July%202016?OpenDocument
    Navigating to /AUSSTATS/abs@.nsf/DetailsPage/5206.0Dec%202018?OpenDocument
    Quitting from lines 647-652 (raustats_introduction.Rmd) 
    Error: processing vignette 'raustats_introduction.Rmd' failed with diagnostics:
    Entity 'nbsp' not defined [26]
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# RTest

Version: 1.2.3

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    + 		),
    + 		tests=tests,
    + 		test.for="RTest",
    + 		test.result=NA
    + )
    > 
    > # Run the test
    > object <- test(object,test.for="RTest")
    ##### TEST CASE '1'
    
    Test for: 'RTest'
    
    Run test(s) for 'RTest'
      Test 'RTest::test_fun'  ... data.frame:  x  ... Warning in structure(x$children, class = "XMLNodeList") :
      Calling 'structure(NULL, *)' is deprecated, as NULL cannot have attributes.
      Consider 'structure(list(), *)' instead.
     failed
    
    > stopifnot(object@test.result=="success")
    Error: object@test.result == "success" is not TRUE
    Execution halted
    ```

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run_test.R’ failed.
    Last 13 lines of output:
      Linking to ImageMagick 6.9.9.39
      Enabled features: cairo, fontconfig, freetype, lcms, pango, rsvg, webp
      Disabled features: fftw, ghostscript, x11
      Loading required package: XML
      Thank you for using RTest
      
      To use a more comprehensive version of the test-report we recommend to run:
      
      assignInNamespace("as.expectation.logical", RTest::as.expectation.logical, ns="testthat", pos="package:testthat")
      Error: Test failed: 'RTestCollection summary errors / successes'
      * `summary\(testCollection\)` does not match "success".
      Actual value: "RTest : List of 1\\n \$ :List of 1\\n  \.\.\$ funct_01:List of 1\\n  \.\. \.\.\$ :List of 15\\n  \.\. \.\. \.\.\$ pkg         : chr "RTest"\\n  \.\. \.\. \.\.\$ pgk-iter    : num 1\\n  \.\. \.\. \.\.\$ func        : chr "funct_01"\\n  \.\. \.\. \.\.\$ func-iter   : num 1\\n  \.\. \.\. \.\.\$ test-code   : chr "RTest::funct_01"\\n  \.\. \.\. \.\.\$ test-adapter: chr "RTestCase"\\n  \.\. \.\. \.\.\$ test-func   : chr "test\.RTest\.funct_01"\\n  \.\. \.\. \.\.\$ pkg-desc    : chr "First test for Pkg_1"\\n  \.\. \.\. \.\.\$ func-desc   : chr "First test of funct_01"\\n  \.\. \.\. \.\.\$ xpath       : chr "//RTestCase/tests/RTest\[1\]/funct_01\[1\]"\\n  \.\. \.\. \.\.\$ reporter    :Classes 'ListReporter', 'Reporter', 'R6' <ListReporter>\\n  Inherits from: <Reporter>\\n  Public:\\n    \.context: NULL\\n    \.end_context: function \(context\) \\n    \.start
      In addition: Warning message:
      In fun(libname, pkgname) : couldn't connect to display ""
      Execution halted
    ```

