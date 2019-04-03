# BayesianTools

Version: 0.1.6

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       Running DEzs-MCMC, chain  1 iteration 9000 of 10002 . Current logp  -12.35851 -15.87325 -12.1476 . Please wait! 
      
       Running DEzs-MCMC, chain  1 iteration 9300 of 10002 . Current logp  -12.28111 -18.23172 -12.47133 . Please wait! 
      
       Running DEzs-MCMC, chain  1 iteration 9600 of 10002 . Current logp  -12.94864 -12.53324 -12.33997 . Please wait! 
      
       Running DEzs-MCMC, chain  1 iteration 9900 of 10002 . Current logp  -12.42213 -16.62652 -12.3143 . Please wait! 
      
       Running DEzs-MCMC, chain  1 iteration 10002 of 10002 . Current logp  -12.34446 -12.0431 -12.2045 . Please wait! 
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 40 SKIPPED: 11 FAILED: 1
      1. Error: likelihood properly handles exceptions (@test-createBayesianSetup.R#90) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# broom.mixed

Version: 0.2.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: expect(!("deviance" %in% names(glance(lmm0)))) at testthat/test-lme4.R:59
      2: paste(c(failure_message, info), collapse = "\n") at /private/tmp/Rtmp92v0RV/R.INSTALLc6a2447ef5c1/testthat/R/expectation.R:17
      
      [31m──[39m [31m2. Error: glance includes deviance iff method='ML' (@test-nlme.R#88) [39m [31m──────────────────────────[39m
      argument "failure_message" is missing, with no default
      1: expect(!("deviance" %in% names(glance(lmm0)))) at testthat/test-nlme.R:88
      2: paste(c(failure_message, info), collapse = "\n") at /private/tmp/Rtmp92v0RV/R.INSTALLc6a2447ef5c1/testthat/R/expectation.R:17
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 205 SKIPPED: 0 FAILED: 2
      1. Error: glance includes deviance iff method='ML' (@test-lme4.R#59) 
      2. Error: glance includes deviance iff method='ML' (@test-nlme.R#88) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘glmmADMB’
    ```

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
    

# dbx

Version: 0.2.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      [31m──[39m [31m4. Error: dates works (@helper-run-data-type-tests.R#114) [39m [31m─────────────────────────────────────[39m
      argument "failure_message" is missing, with no default
      1: expect(all(format(res$created_on, "%Z") == "UTC")) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dbx/new/dbx.Rcheck/tests/testthat/helper-run-data-type-tests.R:114
      2: paste(c(failure_message, info), collapse = "\n") at /private/tmp/Rtmp92v0RV/R.INSTALLc6a2447ef5c1/testthat/R/expectation.R:17
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 75 SKIPPED: 19 FAILED: 4
      1. Error: empty insert works (@helper-run-insert-tests.R#12) 
      2. Error: empty update works (@helper-run-update-tests.R#20) 
      3. Error: empty upsert works (@helper-run-upsert-tests.R#54) 
      4. Error: dates works (@helper-run-data-type-tests.R#114) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# diffdf

Version: 1.0.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 268 SKIPPED: 0 FAILED: 12
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

# dplyr

Version: 0.8.0.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Failure: Coercion from integer to logicalvalue (@helper-combine.R#264) 
      2. Failure: Coercion from factor to logicalvalue (@helper-combine.R#264) 
      3. Failure: Coercion from another_factor to logicalvalue (@helper-combine.R#264) 
      4. Failure: Coercion from double to logicalvalue (@helper-combine.R#264) 
      5. Failure: Coercion from character to logicalvalue (@helper-combine.R#264) 
      6. Failure: Coercion from POSIXct to logicalvalue (@helper-combine.R#264) 
      7. Failure: Coercion from Date to logicalvalue (@helper-combine.R#264) 
      8. Failure: Coercion from complex to logicalvalue (@helper-combine.R#264) 
      9. Failure: Coercion from logicalvalue to integer (@helper-combine.R#264) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        libs   2.7Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
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
      8: drake_error("Target `", target, "` failed. Call `diagnose(", target, ")` for details. Error message:\n  ", 
             meta$error$message, config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/utils-handlers.R:26
      9: stop(..., call. = FALSE) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/vis-console.R:218
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 803 SKIPPED: 207 FAILED: 1
      1. Error: lock_envir works (@test-edge-cases.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ExpressionAtlas

Version: 1.10.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘ExpressionAtlas-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name:  searchAtlasExperiments 
    > ### Title: Search for Expression Atlas experiments
    > ### Aliases: ' searchAtlasExperiments '
    > 
    > ### ** Examples
    > 
    >     
    >     # Search for experiments on salt in rice.
    >     atlasRes <- searchAtlasExperiments( "salt", "Oryza sativa" )
    Searching for Expression Atlas experiments matching your query ...
    Query successful.
    No results found. Cannot continue.
    > 
    >     # Download data for all experiments found.
    >     atlasData <- getAtlasData( atlasRes$Accession )
    Error in getAtlasData(atlasRes$Accession) : 
      Please provide experiment accessions as a vector.
    Execution halted
    ```

# HGNChelper

Version: 0.7.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(HGNChelper)
      > 
      > test_check("HGNChelper")
      [31m──[39m [31m1. Error: (unknown) (@test_checkGeneSymbols.R#77) [39m [31m─────────────────────────────────────────────[39m
      argument "failure_message" is missing, with no default
      1: expect(identical(res, res2)) at testthat/test_checkGeneSymbols.R:77
      2: paste(c(failure_message, info), collapse = "\n") at /private/tmp/Rtmp92v0RV/R.INSTALLc6a2447ef5c1/testthat/R/expectation.R:17
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 38 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_checkGeneSymbols.R#77) 
      
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
             jetpack::update("randomForest")
             jetpack::remove("randomForest")
             expect(!contains("DESCRIPTION", "randomForest"))
             expect(!contains("packrat.lock", "randomForest"))
         }) at testthat/test-jetpack.R:15
      4: force(code)
      5: expect(file.exists("DESCRIPTION")) at testthat/test-jetpack.R:17
      6: paste(c(failure_message, info), collapse = "\n") at /private/tmp/Rtmp92v0RV/R.INSTALLc6a2447ef5c1/testthat/R/expectation.R:17
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: it works (@test-jetpack.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# lifecontingencies

Version: 1.3.6

## Newly broken

*   checking running R code from vignettes ...
    ```
       ‘an_introduction_to_lifecontingencies_package.Rnw’ using ‘UTF-8’ ... failed
       ‘mortality_projection.Rnw’ using ‘UTF-8’ ... OK
       ‘PensionPlanVal.Rmd’ using ‘UTF-8’ ... OK
       ‘compute-detail.Rmd’ using ‘UTF-8’ ... OK
       ‘introToLifecontingencies.Rmd’ using ‘UTF-8’ ... OK
       ‘pensionfunding.Rmd’ using ‘UTF-8’ ... OK
     ERROR
    Errors in running code in vignettes:
    when running code in ‘an_introduction_to_lifecontingencies_package.Rnw’
      ...
    > require(parallel)
    Loading required package: parallel
    
    > cl <- makeCluster(1)
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 11215 cannot be opened
    
      When sourcing 'an_introduction_to_lifecontingencies_package.R':
    Error: cannot open the connection
    Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Version:  0.6.9.14
    Date:     2019-01-20
    BugReport: http://github.com/spedygiorgio/markovchain/issues
    
    Loading required package: parallel
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'an_introduction_to_lifecontingencies_package.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `ae.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.55 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# markmyassignment

Version: 0.8.1

## Newly broken

*   checking whether package ‘markmyassignment’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘checkmate::expect_vector’ by ‘testthat::expect_vector’ when loading ‘markmyassignment’
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/markmyassignment/new/markmyassignment.Rcheck/00install.out’ for details.
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
      ── 1. Error: baseline works (@test-multicolor.R#39)  ───────────────────────────
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(suppressMessages(multi_color(colors = c("seafoamgreen", "green"))), 
             expect_error(suppressMessages(multi_color(colors = c("maroon4", "bisque2"), direction = "one")))) at testthat/test-multicolor.R:39
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), 
             encodeString(cond$message, quote = "\""))
      4: encodeString(regexp, quote = "\"")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 26 SKIPPED: 1 FAILED: 1
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
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1)
      
      ── 2. Error: we can plot dotprops in 3D (@test-neuron.R#146)  ──────────────────
      methods::hasMethod(operator, class(act$val)) is not TRUE
      1: expect_gt(plottedSegments, 0) at testthat/test-neuron.R:146
      2: expect_compare(">", act, exp)
      3: stopifnot(methods::hasMethod(operator, class(act$val)), length(act$val) == 1)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 792 SKIPPED: 4 FAILED: 2
      1. Error: we can plot neurons in 3D (@test-neuron.R#141) 
      2. Error: we can plot dotprops in 3D (@test-neuron.R#146) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ndexr

Version: 1.4.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: Get network aspect as CX (ndex_network_get_aspect) (@test_04_networ
      object 'apiVersion' not found
      1: expect_is(metData, "data.frame", info = paste0("Checking class of aspect (api ", 
             apiVersion, ", aspect ", asp, ")")) at testthat/test_04_network_aspects_and_metadata.r:99
      2: expect(inherits(act$val, class), sprintf("%s inherits from `%s` not `%s`.", act$lab, 
             act$class, exp_lab), info = info)
      3: paste(c(failure_message, info), collapse = "\n")
      4: paste0("Checking class of aspect (api ", apiVersion, ", aspect ", asp, ")")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 125 SKIPPED: 0 FAILED: 1
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
    ndex_rest_GET: no visible global function definition for
      ‘packageVersion’
    ndex_rest_POST: no visible global function definition for
      ‘packageVersion’
    ndex_rest_PUT: no visible global function definition for
      ‘packageVersion’
    rcx_fromRCXgraph: no visible binding for global variable ‘po’
    rcx_toRCXgraph: no visible global function definition for ‘V’
    rcx_toRCXgraph: no visible global function definition for ‘V<-’
    rcx_toRCXgraph: no visible global function definition for ‘E’
    rcx_toRCXgraph: no visible global function definition for ‘E<-’
    rcxgraph_fromRCX: no visible global function definition for ‘V’
    rcxgraph_fromRCX: no visible global function definition for ‘V<-’
    rcxgraph_fromRCX: no visible global function definition for ‘E’
    rcxgraph_fromRCX: no visible global function definition for ‘E<-’
    rcxgraph_toRCX: no visible binding for global variable ‘po’
    Undefined global functions or variables:
      E E<- V V<- packageVersion po tail
    Consider adding
      importFrom("utils", "packageVersion", "tail")
    to your NAMESPACE file.
    ```

# nodiv

Version: 1.3.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        |                                                                            
        |=========================================================             |  82%
        |                                                                            
        |============================================================          |  86%
        |                                                                            
        |================================================================      |  91%
        |                                                                            
        |===================================================================   |  95%
        |                                                                            
        |======================================================================| 100%══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 63 SKIPPED: 0 FAILED: 1
      1. Error: add shape to object (@test_adding.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
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
         })
      4: withCallingHandlers(expr, message = function(c) invokeRestart("muffleMessage"))
      5: BatchJobs::makeRegistry(id = basename(fd), file.dir = fd, work.dir = wd)
      6: dbCreateJobStatusTable(reg)
      7: dbDoQuery(reg, query, flags = "rwc")
      8: stopf("Error in dbDoQuery. %s (%s)", res, query)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 350 SKIPPED: 0 FAILED: 1
      1. Error: warn on unregisterred level (@test_registerLevels.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    parallelExport: no visible global function definition for ‘setNames’
    parallelGetOptions: no visible global function definition for
      ‘setNames’
    parallelStop: no visible global function definition for
      ‘getFromNamespace’
    stopWithJobErrorMessages: no visible global function definition for
      ‘head’
    Undefined global functions or variables:
      getFromNamespace head setNames
    Consider adding
      importFrom("stats", "setNames")
      importFrom("utils", "getFromNamespace", "head")
    to your NAMESPACE file.
    ```

# PathoStat

Version: 1.8.4

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘PathoStat-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: findTaxonomy
    > ### Title: Find the taxonomy for unlimited tids
    > ### Aliases: findTaxonomy
    > 
    > ### ** Examples
    > 
    > example_data_dir <- system.file("example/data", package = "PathoStat")
    > pathoreport_file_suffix <- "-sam-report.tsv"
    > datlist <- readPathoscopeData(example_data_dir, pathoreport_file_suffix,
    + input.files.name.vec = as.character(1:6))
    > dat <- datlist$data
    > ids <- rownames(dat)
    > tids <- unlist(lapply(ids, FUN = grepTid))
    > taxonLevels <- findTaxonomy(tids[1:5])
    Error: HTTP failure: 429
    {"error":"API rate limit exceeded","api-key":"208.103.64.29","count":"4","limit":"3"}
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ComplexHeatmap’ ‘RColorBrewer’
      All declared Imports should be used.
    ```

# platetools

Version: 0.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: missing_wells errors when expected (@test-missing_wells.R#20)  ────
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(missing_wells(as.list(full), well = full$well), expect_error(missing_wells(full, 
             well = missing$wel))) at testthat/test-missing_wells.R:20
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), 
             encodeString(cond$message, quote = "\""))
      4: encodeString(regexp, quote = "\"")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 183 SKIPPED: 4 FAILED: 1
      1. Error: missing_wells errors when expected (@test-missing_wells.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# projpred

Version: 1.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("projpred")
      ── 1. Error: project: setting vind to 1:2 has an expected effect (@test_project.
      object 'i_inf' not found
      1: expect_equal(nrow(p$beta), length(vind), info = i_inf) at testthat/test_project.R:153
      2: expect(comp$equal, sprintf("%s not equal to %s.\n%s", act$lab, exp$lab, comp$message), 
             info = info)
      3: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1581 SKIPPED: 0 FAILED: 1
      1. Error: project: setting vind to 1:2 has an expected effect (@test_project.R#153) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# raustats

Version: 0.1.0

## Newly broken

*   checking examples ... ERROR
    ```
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
    Quitting from lines 576-578 (raustats_introduction.Rmd) 
    Error: processing vignette 'raustats_introduction.Rmd' failed with diagnostics:
    Entity 'nbsp' not defined [26]
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# Rpolyhedra

Version: 0.4.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      trying URL 'https://api.github.com/repos/qbotics/RpolyhedraDB/zipball/v0.4.2'
      downloaded 5.1 MB
      
      ── 2. Error: test on package lib functions (@test_package_lib.R#44)  ───────────
      argument "failure_message" is missing, with no default
      1: testthat::expect(!is.null(getPackageVersion())) at testthat/test_package_lib.R:44
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 645 SKIPPED: 0 FAILED: 2
      1. Error: test on env lib functions (@test_env_lib.R#27) 
      2. Error: test on package lib functions (@test_package_lib.R#44) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘testthat’
      All declared Imports should be used.
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

# simTool

Version: 1.1.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: prepare_cluster(cluster, ncpus, cluster_global_objects, cluster_libraries, cluster_seed, 
             df, pf)
      3: parallel::makeCluster(rep("localhost", ncpus), type = "PSOCK")
      4: makePSOCKcluster(names = spec, ...)
      5: newPSOCKnode(names[[i]], options = options, rank = i)
      6: socketConnection("localhost", port = port, server = TRUE, blocking = TRUE, open = "a+b", 
             timeout = timeout)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 109 SKIPPED: 0 FAILED: 2
      1. Error: (unknown) (@test_evalGrids.R#3) 
      2. Error: (unknown) (@test_eval_tibbles.R#838) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# skimr

Version: 1.0.5

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 369 SKIPPED: 2 FAILED: 77
      1. Error: Setting skimmers to an empty list does not throw an error (@test-functions.R#335) 
      2. Failure: Skimming a data frame works as expected (@test-skim.R#8) 
      3. Failure: Skimming a data frame works as expected (@test-skim.R#15) 
      4. Failure: Skimming a data frame works as expected (@test-skim.R#17) 
      5. Failure: Skimming a data frame works as expected (@test-skim.R#21) 
      6. Failure: Skimming a data frame works as expected (@test-skim.R#23) 
      7. Failure: Skimming a data frame works as expected (@test-skim.R#27) 
      8. Failure: Skimming a data frame works as expected (@test-skim.R#30) 
      9. Failure: Using skim_tee prints out the object (@test-skim.R#44) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dtplyr’
    ```

# slinky

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(slinky)
      > 
      > test_check("slinky")
      ── 1. Error: Scoring on landmark genes only works. (@test_score.R#35)  ─────────
      argument "failure_message" is missing, with no default
      1: expect(all.equal(zs[1:978, ], zs2)) at testthat/test_score.R:35
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 44 SKIPPED: 0 FAILED: 1
      1. Error: Scoring on landmark genes only works. (@test_score.R#35) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# stars

Version: 0.3-0

## Newly broken

*   checking tests ...
    ```
    ...
    > x        1 1440      0  0.25     NA    NA   NULL [x]
    > y        1  720     90 -0.25     NA    NA   NULL [y]
    > times    1    3     NA    NA     NA    NA   NULL    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: expect(all(st_dim$x$values < -74 & st_dim$x$values > -81)) at testthat/test_ncdf.R:67
      2: paste(c(failure_message, info), collapse = "\n")
      
      ── 2. Error: same number of values as rows/cols (@test_rectilinear.R#47)  ──────
      argument "failure_message" is missing, with no default
      1: expect(sf::st_crs(r_ce_dim$x$refsys) == sf::st_crs("+init=epsg:5070")) at testthat/test_rectilinear.R:47
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 29 SKIPPED: 0 FAILED: 2
      1. Error: curvilinear (@test_ncdf.R#67) 
      2. Error: same number of values as rows/cols (@test_rectilinear.R#47) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.0Mb
      sub-directories of 1Mb or more:
        doc  10.3Mb
        nc    3.5Mb
    ```

# tabula

Version: 1.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 433 SKIPPED: 0 FAILED: 1
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

# thriftr

Version: 1.1.5

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > #! /usr/bin/env Rscript
      > 
      > library(testthat)
      > library(thriftr)
      > 
      > test_check("thriftr")
      ── 1. Failure: test_inet_socket (@test.test_socket.R#37)  ──────────────────────
      ...[[]] isn't true.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 273 SKIPPED: 2 FAILED: 1
      1. Failure: test_inet_socket (@test.test_socket.R#37) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# unpivotr

Version: 0.5.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: expect(all(colnames(z) %in% colnames(x))) at testthat/test-pack.R:52
      2: paste(c(failure_message, info), collapse = "\n")
      
      ── 2. Error: rectify() works on common data types (@test-rectify.R#207)  ───────
      argument "failure_message" is missing, with no default
      1: expect(all(purrr::map2_lgl(y, x, identical))) at testthat/test-rectify.R:207
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 251 SKIPPED: 0 FAILED: 2
      1. Error: unpack() works on common data types (@test-pack.R#52) 
      2. Error: rectify() works on common data types (@test-rectify.R#207) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

