# cicero

Version: 1.0.15

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1] "Determining overlaps"
      [1] "Assigning labels"
      [1] "Merging to fData table"
      ── 1. Error: find_overlapping_coordinates works (@test-utils.R#239)  ───────────
      argument "failure_message" is missing, with no default
      1: expect(all(is.na(find_overlapping_coordinates(test_coords, c("chr19_10226_10602", 
             "chr19:11604-246234"), maxgap = 1)))) at testthat/test-utils.R:239
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 230 SKIPPED: 53 FAILED: 1
      1. Error: find_overlapping_coordinates works (@test-utils.R#239) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   R CMD check timed out
    

*   checking R code for possible problems ... NOTE
    ```
    aggregate_nearby_peaks: no visible binding for global variable 'val'
    assemble_connections: no visible binding for global variable 'value'
    find_overlapping_ccans: no visible binding for global variable 'CCAN'
    generate_windows: no visible binding for global variable 'V1'
    plot_accessibility_in_pseudotime: no visible binding for global
      variable 'f_id'
    Undefined global functions or variables:
      CCAN V1 f_id val value
    ```

# CoGAPS

Version: 3.2.40

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          worker 4 is starting!
          worker 5 is starting!
      -- Calibration Phase --
      -- Sampling Phase --
          worker 1 is finished! Time: 00:00:00
          worker 2 is finished! Time: 00:00:00
          worker 3 is finished! Time: 00:00:00
          worker 4 is finished! Time: 00:00:00
          worker 5 is finished! Time: 00:00:00
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 70 SKIPPED: 0 FAILED: 1
      1. Error: Catch unit tests pass (@test_cpp.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 22.0Mb
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

# cTRAP

Version: 1.0.3

## Newly broken

*   R CMD check timed out
    

# diffdf

Version: 1.0.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 268 SKIPPED: 0 WARNINGS: 0 FAILED: 12
      1. Error: Check comparision of equal objects (@test-identify_mode_differences.R#136) 
      2. Error: Check comparision of non equal objects aiming for differences of length 1 (@test-identify_mode_differences.R#173) 
      3. Error: Check comparision of non equal objects aiming for differences of length 2 (@test-identify_mode_differences.R#215) 
      4. Error: Check comparision of equal objects (@test-identify_mode_differences.R#136) 
      5. Error: Check comparision of non equal objects aiming for differences of length 1 (@test-identify_mode_differences.R#173) 
      6. Error: Check comparision of non equal objects aiming for differences of length 2 (@test-identify_mode_differences.R#215) 
      7. Error: Check comparision of equal objects (@test-identify_mode_differences.R#136) 
      8. Error: Check comparision of non equal objects aiming for differences of length 1 (@test-identify_mode_differences.R#173) 
      9. Error: Check comparision of non equal objects aiming for differences of length 2 (@test-identify_mode_differences.R#215) 
      1. ...
      
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
      OK: 3 SKIPPED: 0 WARNINGS: 3 FAILED: 2
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
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:130
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), encodeString(cond$message, quote = "\"")) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:266
      4: encodeString(regexp, quote = "\"") at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:266
      
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
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-comparison.R:27
      
      [31m──[39m [31m2. Error: we can plot dotprops in 3D (@test-neuron.R#146) [39m [31m───────────────────────────────────────────────────[39m
      methods::hasMethod(operator, class(act$val)) is not TRUE
      1: expect_gt(plottedSegments, 0) at testthat/test-neuron.R:146
      2: expect_compare(">", act, exp) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-comparison.R:68
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-comparison.R:27
      
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

# ndexr

Version: 1.4.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("ndexr")
      [31m──[39m [31m1. Error: Get network aspect as CX (ndex_network_get_aspect) (@test_04_network_aspects_and_metadata.r#99) [39m [31m───[39m
      object 'apiVersion' not found
      1: expect_is(metData, "data.frame", info = paste0("Checking class of aspect (api ", apiVersion, ", aspect ", asp, ")")) at testthat/test_04_network_aspects_and_metadata.r:99
      2: expect(inherits(act$val, class), sprintf("%s inherits from `%s` not `%s`.", act$lab, act$class, exp_lab), info = info) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-inheritance.R:71
      3: paste(c(failure_message, info), collapse = "\n") at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expectation.R:23
      4: paste0("Checking class of aspect (api ", apiVersion, ", aspect ", asp, ")") at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-inheritance.R:71
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 125 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: Get network aspect as CX (ndex_network_get_aspect) (@test_04_network_aspects_and_metadata.r#99) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Deprecated license: BSD
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘igraph’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘httr:::default_ua’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    rcx_toRCXgraph: no visible global function definition for ‘E’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcx_toRCXgraph: no visible global function definition for ‘E<-’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_fromRCX: no visible global function definition for ‘V’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:116)
    rcxgraph_fromRCX: no visible global function definition for ‘V<-’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:116)
    rcxgraph_fromRCX: no visible global function definition for ‘E’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_fromRCX: no visible global function definition for ‘E<-’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:117)
    rcxgraph_toRCX: no visible binding for global variable ‘po’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:268)
    rcxgraph_toRCX: no visible binding for global variable ‘po’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ndexr/new/ndexr.Rcheck/00_pkg_src/ndexr/R/ndex_RCXgraph.r:294)
    Undefined global functions or variables:
      E E<- V V<- packageVersion po tail
    Consider adding
      importFrom("utils", "packageVersion", "tail")
    to your NAMESPACE file.
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
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:130
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), encodeString(cond$message, quote = "\"")) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:266
      4: encodeString(regexp, quote = "\"") at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-output.R:266
      
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

# projpred

Version: 1.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      - Plotting theme set to bayesplot::theme_default().
      > 
      > test_check("projpred")
      [31m──[39m [31m1. Error: project: setting vind to 1:2 has an expected effect (@test_project.R#153) [39m [31m─────────────────────────[39m
      object 'i_inf' not found
      1: expect_equal(nrow(p$beta), length(vind), info = i_inf) at testthat/test_project.R:153
      2: expect(comp$equal, sprintf("%s not equal to %s.\n%s", act$lab, exp$lab, comp$message), info = info) at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expect-equality.R:61
      3: paste(c(failure_message, info), collapse = "\n") at /private/tmp/RtmpqGjk4F/R.INSTALL18218400c5d64/testthat/R/expectation.R:23
      
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 1581 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: project: setting vind to 1:2 has an expected effect (@test_project.R#153) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# raustats

Version: 0.1.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘raustats-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: abs_search
    > ### Title: Search dataset information from the ABS.Stat API
    > ### Aliases: abs_search
    > 
    > ### ** Examples
    > 
    >  ## ABS dataset search
    >  x <- abs_search(pattern = "consumer price index")
    >  x <- abs_search(pattern = "census")
    >  x <- abs_search(pattern = "labour force")
    > 
    >  ## ABS indicator search
    >  x <- abs_search(pattern = "all groups", dataset="CPI")
    >  x <- abs_search(pattern = c("all groups", "capital cities"), dataset="CPI")
    Error in doc_parse_raw(x, encoding = encoding, base_url = base_url, as_html = as_html,  : 
      Entity 'nbsp' not defined [26]
    Calls: abs_search ... read_xml.connection -> read_xml.raw -> doc_parse_raw
    Execution halted
    ```

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
    Quitting from lines 448-450 (raustats_introduction.Rmd) 
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

# tabula

Version: 1.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ════════════════════════════════════════════════════════════════════════════════════════════
      OK: 433 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: Similiraty measure (presence/absence data) (@test-similarity.R#37) 
      
      Error: testthat unit tests failed
      In addition: Warning messages:
      1: In library(testthat) : package 'testthat' already present in search()
      2: In library(testthat) : package 'testthat' already present in search()
      3: In library(testthat) : package 'testthat' already present in search()
      4: In library(testthat) : package 'testthat' already present in search()
      5: In library(testthat) : package 'testthat' already present in search()
      6: In library(testthat) : package 'testthat' already present in search()
      7: In library(testthat) : package 'testthat' already present in search()
      Execution halted
      now dyn.load("/Library/Frameworks/R.framework/Versions/3.5/Resources/library/tools/libs/tools.so") ...
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plyr’
      All declared Imports should be used.
    ```

