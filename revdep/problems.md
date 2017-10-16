# ABAEnrichment

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        R      1.3Mb
        doc    1.8Mb
        libs   4.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘ABAEnrichment/R/aba_enrich.R’:
      unlockBinding("remember", aba_env)
    ```

*   checking R/sysdata.rda ... NOTE
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                  old_size new_size compress
      sysdata.rda    1.9Mb    1.1Mb       xz
    ```

# abbyyR

Version: 0.5.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘curl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# abjutils

Version: 0.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘httr’
      All declared Imports should be used.
    ```

# ADPclust

Version: 0.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘fields’ ‘knitr’
      All declared Imports should be used.
    ```

# afex

Version: 0.18-0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ez’, ‘ascii’
    ```

# AHR

Version: 1.4.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘prodlim’
    ```

# aidar

Version: 1.0.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘XML’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    getHisto3D: no visible binding for global variable ‘xmlGetAttr’
    getProfile1D: no visible global function definition for ‘xmlRoot’
    getProfile1D: no visible global function definition for ‘xmlTreeParse’
    getProfile1D: no visible global function definition for ‘getNodeSet’
    getProfile1D: no visible binding for global variable ‘xmlGetAttr’
    getProfile2D: no visible global function definition for ‘xmlRoot’
    getProfile2D: no visible global function definition for ‘xmlTreeParse’
    getProfile2D: no visible global function definition for ‘getNodeSet’
    getProfile2D: no visible binding for global variable ‘xmlGetAttr’
    getRow: no visible global function definition for ‘getNodeSet’
    getRow: no visible binding for global variable ‘xmlGetAttr’
    getTuple: no visible global function definition for ‘xmlRoot’
    getTuple: no visible global function definition for ‘xmlTreeParse’
    getTuple: no visible global function definition for ‘getNodeSet’
    getTuple: no visible binding for global variable ‘xmlGetAttr’
    getXAxisInfo: no visible global function definition for ‘xmlGetAttr’
    getXStats: no visible global function definition for ‘xmlGetAttr’
    getYAxisInfo: no visible global function definition for ‘xmlGetAttr’
    getYStats: no visible global function definition for ‘xmlGetAttr’
    Undefined global functions or variables:
      getNodeSet xmlGetAttr xmlRoot xmlTreeParse
    ```

# ALA4R

Version: 1.5.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      10: asNamespace(ns)
      11: getNamespace(ns)
      12: tryCatch(loadNamespace(name), error = function(e) stop(e))
      13: tryCatchList(expr, classes, parentenv, handlers)
      14: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      15: value[[3L]](cond)
        ... and 2 more
      
      
      Maximum number of 10 failures reached, some test results may be missing.
      
      ═ DONE ═════════════════════════════════════════════════════════════════════════
      Keep trying!
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: maps
    
    Attaching package: 'maps'
    
    The following object is masked from 'package:plyr':
    
        ozone
    
    Quitting from lines 178-180 (ALA4R.Rmd) 
    Error: processing vignette 'ALA4R.Rmd' failed with diagnostics:
    there is no package called 'curl'
    Execution halted
    ```

# AlphaVantageClient

Version: 0.0.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      5: FUN(X[[i]], ...)
      6: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 33 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-fetch.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# alphavantager

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# alR

Version: 2.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# ameco

Version: 0.2.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(ameco)
      > 
      > test_check("ameco")
      1. Failure: Test that current version is still latest version (@tests.R#16) ----
      `last_update` not equal to `as.Date("2017-05-11")`.
      'is.NA' value mismatch: 0 in current 1 in target
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Failure: Test that current version is still latest version (@tests.R#16) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.7Mb
      sub-directories of 1Mb or more:
        data  15.6Mb
    ```

# analogsea

Version: 0.5.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 21 SKIPPED: 0 FAILED: 9
      1. Error: returns expected output for sizes endpoint (@test-do_GET.R#7) 
      2. Error: returns expected output for regions endpoint (@test-do_GET.R#16) 
      3. Failure: incorrect input to what param returns NULL (@test-domains.R#7) 
      4. Failure: fails well with non-existent droplet (@test-droplet.R#11) 
      5. Failure: fails well with non-existent droplet (@test-image.R#11) 
      6. Error: returns expected output for public images (@test-images.R#7) 
      7. Error: works with type parameter (@test-images.R#25) 
      8. Error: returns expected output (@test-regions.R#7) 
      9. Error: returns expected output (@test-sizes.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# AneuFinder

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    Aneufinder: multiple local function definitions for ‘parallel.helper’
      with different formal arguments
    ```

# ANLP

Version: 1.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3597 marked UTF-8 strings
    ```

# AnnotationBustR

Version: 1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: AnnotationBustR
      [1] "Working On Accession JN628859 Pallidochromis_tokolosh"
      1. Error: AnnotationBust Works (@test_AnnotationBust.R#31) ---------------------
      Unable to get any answer from socket after  10  trials.
      1: AnnotationBust(Accessions = "JN628859.1", Terms = mtDNAterms, Duplicates = c("tRNA_Leu", 
             "tRNA_Ser"), DuplicateInstances = c(2, 2), TranslateSeqs = TRUE, TranslateCode = 2) at testthat/test_AnnotationBust.R:31
      2: seqinr::query(paste("SUB", paste0("AC=", new.access), "AND T=CDS", sep = " "))
      3: stop(paste("Unable to get any answer from socket after ", attemptNumber, " trials."))
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 1
      1. Error: AnnotationBust Works (@test_AnnotationBust.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# annotatr

Version: 1.2.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    plot_coannotations: no visible binding for global variable ‘.’
    plot_numerical_coannotations: no visible binding for global variable
      ‘.’
    Undefined global functions or variables:
      .
    ```

# anomalyDetection

Version: 0.2.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘caret’
      All declared Imports should be used.
    ```

# antaresRead

Version: 1.1.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      7: FUN(X[[i]], ...)
      8: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 634 SKIPPED: 2 FAILED: 2
      1. Error: select simulation interactively (number) (@test-setup.R#112) 
      2. Error: (unknown) (@test-viewAntares.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# antaresViz

Version: 0.11

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘magrittr’ ‘tibble’
      All declared Imports should be used.
    ```

# apercu

Version: 0.2.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pls’
      All declared Imports should be used.
    ```

# archivist

Version: 2.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘archivist.github’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘rmarkdown’, ‘archivist.github’
    ```

# ari

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5. Error: ari_stitch() can combine audio and images into a video (@test_ari_stitch.R#21) 
      Could not find ffmpeg. See the documentation for ari_stitch() for more details.
      1: ari_stitch(graphs, sound, video) at testthat/test_ari_stitch.R:21
      2: stop("Could not find ffmpeg. See the documentation for ari_stitch() for more details.")
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 5
      1. Error: Ari can make a video from local HTML slides. (@test_ari_narrate.R#16) 
      2. Error: Ari can make a video from HTML slides on the web. (@test_ari_narrate.R#28) 
      3. Error: Ari use an Rmd file with HTML comments for a script. (@test_ari_narrate.R#40) 
      4. Error: Ari can process text with over 1500 characters. (@test_ari_spin.R#60) 
      5. Error: ari_stitch() can combine audio and images into a video (@test_ari_stitch.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ARPobservation

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    reported_observations: no visible global function definition for
      ‘aggregate’
    reported_observations: no visible binding for global variable ‘var’
    rgamma_eq : <anonymous>: no visible global function definition for
      ‘uniroot’
    rgamma_eq: no visible global function definition for ‘runif’
    rgamma_mix_eq : <anonymous>: no visible global function definition for
      ‘uniroot’
    rgamma_mix_eq: no visible global function definition for ‘runif’
    rweibull_eq : <anonymous>: no visible global function definition for
      ‘uniroot’
    rweibull_eq: no visible global function definition for ‘runif’
    smooth_cov: no visible global function definition for ‘dist’
    Undefined global functions or variables:
      aggregate dist integrate nobs pgamma qnorm quantile rbinom rexp
      rgamma rnorm runif rweibull uniroot var
    Consider adding
      importFrom("stats", "aggregate", "dist", "integrate", "nobs", "pgamma",
                 "qnorm", "quantile", "rbinom", "rexp", "rgamma", "rnorm",
                 "runif", "rweibull", "uniroot", "var")
    to your NAMESPACE file.
    ```

# ashr

Version: 2.0.5

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘REBayes’ ‘Rmosek’
    ```

# asremlPlus

Version: 2.0-12

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘asreml’
    ```

# assertive.base

Version: 0.0-7

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘assertive.properties’, ‘assertive.types’
    ```

# assertive.matrices

Version: 0.0-1

## In both

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': ‘assertive.base:::print_and_capture’
      See the note in ?`:::` about the use of this operator.
    ```

# assertive.reflection

Version: 0.0-4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rstudioapi’
    ```

# assertive.sets

Version: 0.0-3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sets’
    ```

# assertive.types

Version: 0.0-3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pryr’
    ```

# ASSIGN

Version: 1.12.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# attribrisk

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    attribrisk.fit: no visible global function definition for ‘binomial’
    attribrisk.fit: no visible global function definition for ‘glm.control’
    attribrisk.fit: no visible global function definition for ‘coef’
    attribrisk.fit: no visible global function definition for
      ‘coefficients’
    attribrisk_boot: no visible global function definition for ‘var’
    print.attribrisk: no visible global function definition for ‘qnorm’
    summary.attribrisk: no visible global function definition for ‘hasArg’
    summary.attribrisk: no visible global function definition for ‘var’
    Undefined global functions or variables:
      .getXlevels binomial coef coefficients glm.control glm.fit hasArg
      model.frame model.matrix model.offset model.response model.weights
      qnorm terms var
    Consider adding
      importFrom("methods", "hasArg")
      importFrom("stats", ".getXlevels", "binomial", "coef", "coefficients",
                 "glm.control", "glm.fit", "model.frame", "model.matrix",
                 "model.offset", "model.response", "model.weights", "qnorm",
                 "terms", "var")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# aurelius

Version: 0.8.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘rPython’
    ```

# autoBagging

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘abind’
      All declared Imports should be used.
    ```

# autoimage

Version: 1.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
          ppoints
      
      1. Error: sanity checks for autoimage.xyz.setup (@test-autoimage.xyz.setup.R#34) 
      'what' must be a character vector
      1: expect_error(autoimage.xyz.setup(NULL, NULL, 1:10, "", "", arglist, TRUE), "x and y must be specified when z is not a matrix", 
             TRUE) at testthat/test-autoimage.xyz.setup.R:34
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
      
      testthat results ================================================================
      OK: 111 SKIPPED: 0 FAILED: 1
      1. Error: sanity checks for autoimage.xyz.setup (@test-autoimage.xyz.setup.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# autothresholdr

Version: 0.6.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘EBImage’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# autovarCore

Version: 1.0-0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 448 SKIPPED: 0 FAILED: 4
      1. Error: autovar function returns hello world (@test_autovar.r#14) 
      2. Error: model_score calls its subfunctions correctly for AIC (@test_model_score.r#50) 
      3. Error: model_score calls its subfunctions correctly for BIC (@test_model_score.r#81) 
      4. Error: select_valid_masks calls bitwAnd correctly (@test_select_valid_masks.r#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# aws.signature

Version: 0.3.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("aws.signature")
      Loading required package: aws.signature
      1. Failure: locate_credentials() returns non-default region if requested (@tests-credentials_file.R#18) 
      `locate_credentials(region = "foo")[["region"]] == "foo"` isn't true.
      
      2. Failure: locate_credentials() returns NULLs when environment variables missing (@tests-credentials_file.R#31) 
      `cred[["region"]] == "us-east-1"` isn't true.
      
      testthat results ================================================================
      OK: 17 SKIPPED: 1 FAILED: 2
      1. Failure: locate_credentials() returns non-default region if requested (@tests-credentials_file.R#18) 
      2. Failure: locate_credentials() returns NULLs when environment variables missing (@tests-credentials_file.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# backShift

Version: 0.1.4.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘InvariantCausalPrediction’, ‘CompareCausalNetworks’
    ```

# backtestGraphics

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > test_check("backtestGraphics")
      Loading required package: backtestGraphics
      1. Failure: stat_calculation function (@test_stat_calculation.R#8) -------------
      Failed the test for calculating summary statistics not equal to `truth.1`.
      Component "pnl": Component "pnl.drawdown": Component "start": Attributes: < Component "levels": 1 string mismatch >
      Component "pnl": Component "pnl.drawdown": Component "start": 1 string mismatch
      
      testthat results ================================================================
      OK: 9 SKIPPED: 0 FAILED: 1
      1. Failure: stat_calculation function (@test_stat_calculation.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bacon

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    .hist: no visible binding for global variable ‘..density..’
    .qq: no visible binding for global variable ‘column’
    Undefined global functions or variables:
      ..density.. column
    ```

# badgecreatr

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# bagRboostR

Version: 0.0.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    bagging: no visible global function definition for ‘predict’
    samme: no visible global function definition for ‘predict’
    Undefined global functions or variables:
      predict
    Consider adding
      importFrom("stats", "predict")
    to your NAMESPACE file.
    ```

# ballgown

Version: 2.8.4

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘heat.colors’
    plotTranscripts: no visible global function definition for ‘text’
    plotTranscripts: no visible global function definition for ‘axis’
    stattest: no visible global function definition for ‘model.matrix’
    stattest: no visible global function definition for ‘p.adjust’
    writeFiles: no visible global function definition for ‘write.table’
    subset,ballgown: no visible binding for global variable ‘i_id’
    subset,ballgown: no visible binding for global variable ‘e_id’
    subset,ballgown: no visible binding for global variable ‘t_id’
    Undefined global functions or variables:
      abline as.dist axis cutree e_id hclust heat.colors i_id kmeans legend
      lines model.matrix p.adjust par plot polygon read.table t_id text
      title write.table
    Consider adding
      importFrom("grDevices", "heat.colors")
      importFrom("graphics", "abline", "axis", "legend", "lines", "par",
                 "plot", "polygon", "text", "title")
      importFrom("stats", "as.dist", "cutree", "hclust", "kmeans",
                 "model.matrix", "p.adjust")
      importFrom("utils", "read.table", "write.table")
    to your NAMESPACE file.
    ```

# banocc

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      27: tryCatch(withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test))         skip_empty()}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error), error = handle_fatal,     skip = function(e) {    })
      28: test_code(NULL, exprs, env)
      29: source_file(path, new.env(parent = env), chdir = TRUE, wrap = wrap)
      30: force(code)
      31: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE,             wrap = wrap)        end_context()    })
      32: FUN(X[[i]], ...)
      33: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE, wrap = wrap)
      34: force(code)
      35: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE, wrap = wrap))
      36: test_files(paths, reporter = reporter, env = env, stop_on_failure = stop_on_failure,     stop_on_warning = stop_on_warning, wrap = wrap)
      37: test_dir(path = test_path, reporter = reporter, env = env, filter = filter,     ..., stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap)
      38: test_package_dir(package = package, test_path = test_path, filter = filter,     reporter = reporter, ..., stop_on_failure = stop_on_failure,     stop_on_warning = stop_on_warning, wrap = wrap)
      39: test_check("banocc")
      An irrecoverable exception occurred. R is aborting now ...
      Segmentation fault (core dumped)
    ```

*   checking R code for possible problems ... NOTE
    ```
    calc_snc: no visible global function definition for ‘sd’
    get_IVs : <anonymous>: no visible global function definition for
      ‘rgamma’
    get_banocc_output : <anonymous>: no visible global function definition
      for ‘cov2cor’
    get_posterior_quantiles: no visible binding for global variable
      ‘quantile’
    rgbeta: no visible global function definition for ‘rbeta’
    rgbeta: no visible global function definition for ‘rbinom’
    Undefined global functions or variables:
      cov2cor quantile rbeta rbinom rgamma sd
    Consider adding
      importFrom("stats", "cov2cor", "quantile", "rbeta", "rbinom", "rgamma",
                 "sd")
    to your NAMESPACE file.
    ```

# banR

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# basictabler

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# BatchExperiments

Version: 1.4.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BatchJobs:::addIntModulo’ ‘BatchJobs:::buffer’
      ‘BatchJobs:::checkDir’ ‘BatchJobs:::checkId’ ‘BatchJobs:::checkIds’
      ‘BatchJobs:::checkPart’ ‘BatchJobs:::createShardedDirs’
      ‘BatchJobs:::dbConnectToJobsDB’ ‘BatchJobs:::dbCreateJobStatusTable’
      ‘BatchJobs:::dbDoQuery’ ‘BatchJobs:::dbFindDone’
      ‘BatchJobs:::dbFindRunning’ ‘BatchJobs:::dbRemoveJobs’
      ‘BatchJobs:::dbSelectWithIds’ ‘BatchJobs:::getJobDirs’
      ‘BatchJobs:::getJobInfoInternal’ ‘BatchJobs:::getKillJob’
      ‘BatchJobs:::getListJobs’ ‘BatchJobs:::getRandomSeed’
      ‘BatchJobs:::getResult’ ‘BatchJobs:::isRegistryDir’
      ‘BatchJobs:::makeRegistryInternal’ ‘BatchJobs:::saveRegistry’
      ‘BatchJobs:::seeder’ ‘BatchJobs:::syncRegistry’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for ‘setNames’
    calcDynamic: no visible global function definition for ‘setNames’
    checkExperimentRegistry: no visible global function definition for
      ‘head’
    dbSummarizeExperiments: no visible global function definition for
      ‘setNames’
    designIterator: no visible global function definition for ‘setNames’
    getIndex : exprToIndex: no visible global function definition for
      ‘capture.output’
    getProblemFilePaths: no visible global function definition for
      ‘setNames’
    updateRegistry.ExperimentRegistry: no visible global function
      definition for ‘packageVersion’
    Undefined global functions or variables:
      capture.output head is packageVersion setNames
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "setNames")
      importFrom("utils", "capture.output", "head", "packageVersion")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# BatchQC

Version: 1.4.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘lmFitC’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    gls.series.C: no visible global function definition for ‘lm.fit’
    Undefined global functions or variables:
      lm.fit
    Consider adding
      importFrom("stats", "lm.fit")
    to your NAMESPACE file.
    ```

# batchtools

Version: 0.9.6

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Lengths differ: 0 is not 2
      
      4. Failure: grepLogs (@test_grepLogs.R#37) -------------------------------------
      Check on grepLogs(pattern = "F..BAR", reg = reg) isn't true.
      Must have exactly 4 rows, but has 2 rows
      
      testthat results ================================================================
      OK: 1233 SKIPPED: 6 FAILED: 4
      1. Failure: grepLogs (@test_grepLogs.R#22) 
      2. Failure: grepLogs (@test_grepLogs.R#26) 
      3. Failure: grepLogs (@test_grepLogs.R#32) 
      4. Failure: grepLogs (@test_grepLogs.R#37) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# batman

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 19 marked UTF-8 strings
    ```

# bayesDP

Version: 1.2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# BayesFactor

Version: 0.9.12-2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.2Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs  17.0Mb
    ```

# bayesplot

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        doc   3.6Mb
    ```

# bbmle

Version: 1.0.19

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      NaNs produced
    Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(2.76406402163333,  :
      NaNs produced
    Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.191138285901962,  :
      NaNs produced
    Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(2.76406402163333,  :
      NaNs produced
    Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.191138285901962,  :
      NaNs produced
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'mle2.tex' failed.
    BibTeX errors:
    The top-level auxiliary file: mle2.aux
    I couldn't open style file chicago.bst
    ---line 19 of file mle2.aux
     : \bibstyle{chicago
     :                  }
    I'm skipping whatever remains of this command
    I found no style file---while reading file mle2.aux
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# beanz

Version: 2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 47.2Mb
      sub-directories of 1Mb or more:
        libs  45.8Mb
    ```

# BEDMatrix

Version: 1.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘crochet’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘LinkedMatrix’
    ```

# benchmarkmeData

Version: 0.5.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘benchmarkme’
    ```

# BEQI2

Version: 2.0-0

## In both

*   checking whether package ‘BEQI2’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/BEQI2/new/BEQI2.Rcheck/00install.out’ for details.
    ```

*   checking R code for possible problems ... NOTE
    ```
    beqi2: no visible global function definition for ‘na.omit’
    beqi2: no visible global function definition for ‘browseURL’
    readAMBI: no visible global function definition for ‘read.csv’
    readBEQI: no visible global function definition for ‘read.csv’
    readERF: no visible global function definition for ‘read.csv’
    readTWN: no visible global function definition for ‘read.csv’
    read_ITI_FIBI: no visible global function definition for ‘read.csv’
    Undefined global functions or variables:
      browseURL na.omit read.csv
    Consider adding
      importFrom("stats", "na.omit")
      importFrom("utils", "browseURL", "read.csv")
    to your NAMESPACE file.
    ```

# betalink

Version: 2.2.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Checking should be performed on sources prepared by ‘R CMD build’.
    ```

# bigKRLS

Version: 2.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

# BIGL

Version: 1.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning: Transformation introduced infinite values in continuous x-axis
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Transformation introduced infinite values in continuous x-axis
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 199 rows containing non-finite values (stat_contour).
    Warning in is.na(verts[, 2]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(verts[, 3]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(verts[, 1]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(verts[, 3]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(verts[, 1]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(verts[, 2]) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Quitting from lines 240-243 (analysis.Rmd) 
    Error: processing vignette 'analysis.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

# biglasso

Version: 1.3-6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        libs  10.1Mb
    ```

# bigmemory

Version: 4.5.19

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘biganalytics’ ‘bigtabulate’ ‘synchronicity’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

# bigQueryR

Version: 0.3.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 13 SKIPPED: 0 FAILED: 12
      1. Error: Can authenticate (@test_query.R#8) 
      2. Error: Can upload test set (@test_query.R#39) 
      3. Error: Can upload via Google Cloud Storage (@test_query.R#58) 
      4. Error: Can list tables (@test_query.R#72) 
      5. Error: Can query test set (@test_query.R#81) 
      6. Error: Single query bug (@test_query.R#91) 
      7. Error: Async query (@test_query.R#100) 
      8. Error: Extract data to Google Cloud Storage, and download (@test_query.R#117) 
      9. Error: Create a table (@test_query.R#142) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bigrquery’
    ```

# bigstatsr

Version: 0.2.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      'dimnames' applied to non-array
      1: sparseSVM::sparseSVM(X2, y.factor, alpha = alpha, lambda.min = lambda.min, penalty.factor = m) at testthat/test-spSVM.R:32
      
      2. Error: equality with sparseSVM with only half the data (@test-spSVM.R#68) ---
      'dimnames' applied to non-array
      1: sparseSVM::sparseSVM(X2[ind, ], y.factor[ind], alpha = alpha, lambda.min = lambda.min, 
             penalty.factor = m) at testthat/test-spSVM.R:68
      
      testthat results ================================================================
      OK: 1633 SKIPPED: 0 FAILED: 2
      1. Error: equality with sparseSVM with all data (@test-spSVM.R#32) 
      2. Error: equality with sparseSVM with only half the data (@test-spSVM.R#68) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.7Mb
      sub-directories of 1Mb or more:
        extdata   2.3Mb
        libs      9.6Mb
    ```

# bikedata

Version: 0.0.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

# binman

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 28 SKIPPED: 0 FAILED: 3
      1. Error: canDownloadFiles (@test-download_files.R#9) 
      2. Error: canReturnEmptyDFWhenEmptyDownloadFiles (@test-download_files.R#27) 
      3. Error: canProcessYaml (@test-process_yaml.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bio3d

Version: 2.3-3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
           'Using fake e-mail address may result in your jobs being killed and your IP, Organisation or entire domain being black-listed.'
      1: seqaln(seqs) at testthat/test-seqaln.R:18
      2: stop(paste("You do not have ", prg, " installed/working locally on your machine.\n", 
             "  We can attempt to use the EBI webserver if you provide an email address (required by the EBI).\n", 
             "  Please note that the EBI states (see their Terms of Use):\n", "     'Using fake e-mail address may result in your jobs being killed and your IP, Organisation or entire domain being black-listed.'\n", 
             sep = ""))
      
      testthat results ================================================================
      OK: 4269 SKIPPED: 3 FAILED: 3
      1. Error: aanma based eNMA works (@test-aanma.pdbs.R#22) 
      2. Error: read.all() reads all/select PDB atoms properly (@test-read.all.R#12) 
      3. Error: seqaln works (@test-seqaln.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   3.2Mb
    ```

# biobroom

Version: 1.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘DESeq2’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Missing or unexported object: ‘dplyr::tbl_dt’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      for ‘colData’
    tidy.deSet: no visible global function definition for ‘exprs<-’
    tidy.deSet: no visible binding for global variable ‘value’
    tidy.deSet: no visible binding for global variable ‘gene’
    tidy.deSet: no visible global function definition for ‘pData’
    tidy.qvalue: no visible binding for global variable ‘smoothed’
    tidy.qvalue: no visible binding for global variable ‘pi0’
    tidy.qvalue: no visible binding for global variable ‘lambda’
    tidy_matrix: no visible binding for global variable ‘value’
    tidy_matrix: no visible binding for global variable ‘gene’
    Undefined global functions or variables:
      . DGEList calcNormFactors colData counts design end estimate
      estimateSizeFactors exprs<- fData<- gene gr is lambda model.matrix
      p.adjust pData pData<- pi0 protein rowRanges sample.id seqnames
      setNames smoothed start tbl_dt term value voom voomWithQualityWeights
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "end", "model.matrix", "p.adjust", "setNames",
                 "start")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# bioCancer

Version: 1.4.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘magrittr’ ‘ggplot2’ ‘lubridate’ ‘tidyr’ ‘cgdsr’ ‘RCurl’ ‘XML’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.3Mb
      sub-directories of 1Mb or more:
        base        6.9Mb
        bioCancer   3.1Mb
        doc         2.8Mb
        quant       7.7Mb
    ```

# biogas

Version: 1.8.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'biogas_quick_start.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `mhchem.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.58 \usepackage
                    [colorlinks = true, urlcolor = blue]{hyperref} % Must be loa...
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# biogram

Version: 1.4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘seqinr’
    ```

# biolink

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 117 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-style.r#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# biomaRt

Version: 2.32.1

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘AnnotationDbi:::smartKeys’
      See the note in ?`:::` about the use of this operator.
    ```

# biomartr

Version: 0.5.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             download_url, "' currently available?", call. = FALSE)
      
      trying URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/overview.txt'
      Content type 'unknown' length 2605772 bytes (2.5 MB)
      ==================================================
      trying URL 'ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/metagenomes/assembly_summary.txt'
      Content type 'unknown' length 361738 bytes (353 KB)
      ==================================================
      testthat results ================================================================
      OK: 40 SKIPPED: 22 FAILED: 1
      1. Error: The getAssemblyStats() downloads assembly stats file and reads raw
                input: NCBI Genbank .. (@test-getAssemblyStats.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# biomformat

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    make_biom: no visible global function definition for ‘packageVersion’
    namedList: no visible global function definition for ‘setNames’
    Undefined global functions or variables:
      packageVersion setNames
    Consider adding
      importFrom("stats", "setNames")
      importFrom("utils", "packageVersion")
    to your NAMESPACE file.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘foreach’
    ```

# biomod2

Version: 3.3-7

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ecospat’
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    BugReports field is not a suitable URL but contains an email address
      which will be used as from R 3.4.0
    ```

# BioQC

Version: 1.4.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    rankSumTestWithCorrelation: no visible global function definition for
      ‘pt’
    wmw.test: no visible global function definition for ‘wilcox.test’
    wmwTest: no visible global function definition for ‘is’
    Undefined global functions or variables:
      is pt wilcox.test
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "pt", "wilcox.test")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# biotmle

Version: 1.0.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘SuperLearner’ ‘biotmleData’
      All declared Imports should be used.
    ```

# BisRNA

Version: 0.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘knitr’
      All declared Imports should be used.
    ```

# bizdays

Version: 1.0.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RQuantLib’
    ```

# blackbox

Version: 1.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

# blastula

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rJava’
      All declared Imports should be used.
    ```

# blme

Version: 1.0-4

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    getBglmerDevianceFunctionBody: no visible global function definition
      for ‘packageVersion’
    getParInfo : <anonymous>: no visible global function definition for
      ‘sd’
    makeRefitDevFun: no visible global function definition for
      ‘packageVersion’
    mkBglmerDevfun: no visible global function definition for
      ‘packageVersion’
    namedList: no visible global function definition for ‘setNames’
    refit.bmerMod: no visible global function definition for
      ‘packageVersion’
    refit.bmerMod: no visible global function definition for ‘model.frame’
    refit.bmerMod: no visible global function definition for ‘family’
    refit.bmerMod: no visible global function definition for ‘getCall’
    Undefined global functions or variables:
      family getCall model.frame packageVersion sd setNames
    Consider adding
      importFrom("stats", "family", "getCall", "model.frame", "sd",
                 "setNames")
      importFrom("utils", "packageVersion")
    to your NAMESPACE file.
    ```

# BMhyb

Version: 1.5.2

## In both

*   checking whether package ‘BMhyb’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘DBI’ is not available and has been replaced
    See ‘/home/muelleki/git/R/testthat/revdep/checks/BMhyb/new/BMhyb.Rcheck/00install.out’ for details.
    ```

# bnclassify

Version: 0.3.3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘memoise’
    ```

# bomrang

Version: 0.0.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5: eval(quote(`_fseq`(`_lhs`)), env, env)
      6: `_fseq`(`_lhs`)
      7: freduce(value, `_function_list`)
      8: withVisible(function_list[[k]](value))
      9: function_list[[k]](value)
      10: dplyr::mutate(., url = dplyr::if_else(httr::http_error(url), NA_character_, url))
      11: mutate.tbl_df(., url = dplyr::if_else(httr::http_error(url), NA_character_, url))
      12: mutate_impl(.data, dots)
      
      testthat results ================================================================
      OK: 100 SKIPPED: 0 FAILED: 1
      1. Error: update_station_locations() downloads and imports the proper file (@test-update_station_locations.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bossMaps

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rgdal’ ‘tidyr’
      All declared Imports should be used.
    ```

# BPRMeth

Version: 1.2.0

## In both

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# breathtestcore

Version: 0.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘breathteststan’
    ```

# breathteststan

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.7Mb
      sub-directories of 1Mb or more:
        libs  24.6Mb
    ```

# briskaR

Version: 0.1.1

## In both

*   checking whether package ‘briskaR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/briskaR/new/briskaR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘briskaR’ ...
** package ‘briskaR’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/briskaR/fftwtools/libs/fftwtools.so':
  libfftw3.so.3: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘briskaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/briskaR/new/briskaR.Rcheck/briskaR’

```
### CRAN

```
* installing *source* package ‘briskaR’ ...
** package ‘briskaR’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/briskaR/fftwtools/libs/fftwtools.so':
  libfftw3.so.3: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘briskaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/briskaR/old/briskaR.Rcheck/briskaR’

```
# brms

Version: 1.10.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading 'brms' package (version 1.10.0). Useful instructions
      can be found by typing help('brms'). A more detailed introduction
      to the package is available through vignette('brms_overview').
      Run theme_set(theme_default()) to use the default bayesplot theme.
      > 
      > test_check("brms")
      1. Failure: plotting functions don't throw unexpected errors (@tests.plots.R#13) 
      `p <- stanplot(fit, type = "trace", pars = "^b_")` produced messages.
      
      testthat results ================================================================
      OK: 1195 SKIPPED: 1 FAILED: 1
      1. Failure: plotting functions don't throw unexpected errors (@tests.plots.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Start sampling
    Compiling the C++ model
    Start sampling
    Using 10 posterior samples for ppc type 'dens_overlay' by default.
    Using 10 posterior samples for ppc type 'dens_overlay' by default.
    Warning: Found 1 observations with a pareto_k > 0.7 in model 'fit1'. It is recommended to set 'reloo = TRUE' in order to calculate the ELPD without the assumption that these observations are negligible. This will refit the model 1 times to compute the ELPDs for the problematic observations directly.
    Warning: Found 1 observations with a pareto_k > 0.7 in model 'fit2'. It is recommended to set 'reloo = TRUE' in order to calculate the ELPD without the assumption that these observations are negligible. This will refit the model 1 times to compute the ELPDs for the problematic observations directly.
    Compiling the C++ model
    Start sampling
    Compiling the C++ model
    Start sampling
    Compiling the C++ model
    Start sampling
    Compiling the C++ model
    Start sampling
    Warning in file(file, "r") :
      cannot open file 'C:/Users/paulb/Dropbox/Psychologie/Paper/2015_Bayesian_Regression_Models/Models/MCMCglmm/phylo.nex': No such file or directory
    Quitting from lines 35-40 (brms_phylogenetics.Rmd) 
    Error: processing vignette 'brms_phylogenetics.Rmd' failed with diagnostics:
    cannot open the connection
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.4Mb
    ```

# broom

Version: 0.4.2

## In both

*   checking examples ... ERROR
    ```
    ...
    +   f2 <- Finance[1:300, "hml"] - rf
    +   f3 <- Finance[1:300, "smb"] - rf
    +   h <- cbind(f1, f2, f3)
    +   res2 <- gmm(z ~ f1 + f2 + f3, x = h)
    +   
    +   td2 <- tidy(res2, conf.int = TRUE)
    +   td2
    +   
    +   # coefficient plot
    +   td2 %>%
    +     mutate(variable = reorder(variable, estimate)) %>%
    +     ggplot(aes(estimate, variable)) +
    +     geom_point() +
    +     geom_errorbarh(aes(xmin = conf.low, xmax = conf.high)) +
    +     facet_wrap(~ term) +
    +     geom_vline(xintercept = 0, color = "red", lty = 2)
    + }
    Error in `colnames<-`(`*tmp*`, value = c("conf.low", "conf.high")) : 
      attempt to set 'colnames' on an object with less than two dimensions
    Calls: tidy -> tidy.gmm -> process_lm -> colnames<-
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > test_check("broom")
      Loading required package: broom
      1. Error: (unknown) (@test-dplyr.R#4) ------------------------------------------
      could not find function "lahman_df"
      1: tbl(lahman_df(), "Batting") at testthat/test-dplyr.R:4
      
      Error in new_CppObject_xp(fields$.module, fields$.pointer, ...) : 
        no valid constructor available for the argument list
      testthat results ================================================================
      OK: 887 SKIPPED: 4 FAILED: 1
      1. Error: (unknown) (@test-dplyr.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bsplus

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# bssm

Version: 0.1.1-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 29.4Mb
      sub-directories of 1Mb or more:
        libs  28.5Mb
    ```

# BTYDplus

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 185 SKIPPED: 2 FAILED: 2
      1. Failure: Pareto/NBD (Abe) MCMC (@test-pareto-nbd-abe.R#43) 
      2. Failure: Package Style (@test-style.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# bumphunter

Version: 1.16.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      [4] 3 - 2 == 1
      
      Failed with error:  'invalid package name'
      testthat results ================================================================
      OK: 30 SKIPPED: 0 FAILED: 5
      1. Failure: Annotate Nearest (@test_annotation.R#13) 
      2. Failure: Annotate Nearest (@test_annotation.R#14) 
      3. Failure: Annotate Nearest (@test_annotation.R#15) 
      4. Failure: Annotate Nearest (@test_annotation.R#17) 
      5. Failure: Annotate Nearest (@test_annotation.R#19) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘S4Vectors’ ‘IRanges’ ‘GenomeInfoDb’ ‘GenomicRanges’ ‘foreach’
      ‘iterators’ ‘parallel’ ‘locfit’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘doParallel:::.options’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    bumphunterEngine: no visible binding for global variable ‘bootstraps’
    Undefined global functions or variables:
      bootstraps
    ```

# BurStMisc

Version: 1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘Hmisc’, ‘gtools’
    ```

# BuyseTest

Version: 1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test_parallel.R’ failed.
    Last 13 lines of output:
      +                                   type="TTE",censoring="event1",threshold=0, cpus = "all",
      +                                   n.bootstrap=n.bootstrap,trace=1,method=method)
      +   )
      + }
      method:  Gehan 
      R Version:  R version 3.4.2 (2017-09-28) 
      
      Library tcltk loaded.
      Library tcltk loaded in cluster.
      
      Error in checkForRemoteErrors(lapply(cl, recvResult)) : 
        16 nodes produced errors; first error: [tcl] invalid command name "toplevel".
      Calls: system.time ... sfClusterCall -> clusterCall -> checkForRemoteErrors
      Timing stopped at: 0.544 0.204 8.719
      Execution halted
    ```

*   checking whether package ‘BuyseTest’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/BuyseTest/new/BuyseTest.Rcheck/00install.out’ for details.
    ```

# callr

Version: 1.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 28 SKIPPED: 0 FAILED: 1
      1. Error: debugger is called (@test-error.R#45) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# canceR

Version: 1.8.0

## In both

*   R CMD check timed out
    

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# CancerInSilico

Version: 1.2.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   6.9Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# canvasXpress

Version: 1.17.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# Cardinal

Version: 1.8.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      function definition for ‘p.adjust’
    summary,iSet : <anonymous>: no visible global function definition for
      ‘object.size’
    summary,iSet: no visible global function definition for ‘object.size’
    topLabels,ResultSet: no visible global function definition for ‘head’
    Undefined global functions or variables:
      .Index abline approx as.formula col2rgb colorRamp dnorm filter
      flush.console head kmeans legend lines locator median object.size
      p.adjust packageDescription packageVersion par persp points pt
      quantile rainbow rgb rnorm runif smooth.spline tail trans3d
    Consider adding
      importFrom("grDevices", "col2rgb", "colorRamp", "rainbow", "rgb",
                 "trans3d")
      importFrom("graphics", "abline", "legend", "lines", "locator", "par",
                 "persp", "points")
      importFrom("stats", "approx", "as.formula", "dnorm", "filter",
                 "kmeans", "median", "p.adjust", "pt", "quantile", "rnorm",
                 "runif", "smooth.spline")
      importFrom("utils", "flush.console", "head", "object.size",
                 "packageDescription", "packageVersion", "tail")
    to your NAMESPACE file.
    ```

# caret

Version: 6.0-77

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data     1.5Mb
        models   2.4Mb
    ```

# caretEnsemble

Version: 2.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ^
      
      testthat results ================================================================
      OK: 706 SKIPPED: 7 FAILED: 8
      1. Error: CV works with method=boot (@test-caretList.R#213) 
      2. Error: CV works with method=adaptive_boot (@test-caretList.R#213) 
      3. Error: CV works with method=cv (@test-caretList.R#213) 
      4. Error: CV works with method=repeatedcv (@test-caretList.R#213) 
      5. Error: CV works with method=adaptive_cv (@test-caretList.R#213) 
      6. Error: CV works with method=LGOCV (@test-caretList.R#213) 
      7. Error: CV works with method=adaptive_LGOCV (@test-caretList.R#213) 
      8. Failure: Code Lint (@test-lintr.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# catSurv

Version: 1.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# Causata

Version: 4.2-0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    PredictivePowerCv: no visible global function definition for ‘sd’
    ReadCausataCsv: no visible global function definition for ‘read.csv’
    ToPmml.GlmnetModelDefinition: no visible global function definition for
      ‘coef’
    ToPmml.GlmnetModelDefinition: no visible global function definition for
      ‘terms.formula’
    ValidateModel: no visible global function definition for ‘predict’
    predict.GlmnetModelDefinition: no visible global function definition
      for ‘model.matrix’
    predict.GlmnetModelDefinition: no visible binding for global variable
      ‘contrasts’
    predict.GlmnetModelDefinition: no visible global function definition
      for ‘predict’
    Undefined global functions or variables:
      coef contrasts dbGetQuery median model.matrix na.omit predict
      quantile read.csv sd terms.formula
    Consider adding
      importFrom("stats", "coef", "contrasts", "median", "model.matrix",
                 "na.omit", "predict", "quantile", "sd", "terms.formula")
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# ccmap

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ccmap-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_dprimes
    > ### Title: Extract unbiased effect sizes from meta-analysis by crossmeta.
    > ### Aliases: get_dprimes
    > 
    > ### ** Examples
    > 
    > library(crossmeta)
    Error in library(crossmeta) : there is no package called ‘crossmeta’
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 47-71 (ccmap-vignette.Rmd) 
    Error: processing vignette 'ccmap-vignette.Rmd' failed with diagnostics:
    there is no package called 'crossmeta'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘crossmeta’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘xgboost:::predict.xgb.Booster’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘crossmeta’
    ```

# ccrepe

Version: 1.12.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Complete output:
      > BiocGenerics:::testPackage("ccrepe")
      Error in library("RUnit", quietly = TRUE) : 
        there is no package called 'RUnit'
      Calls: <Anonymous> -> library
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    calculate.z.stat.and.p.value: no visible global function definition for
      ‘var’
    calculate.z.stat.and.p.value: no visible global function definition for
      ‘pnorm’
    ccrepe: no visible binding for global variable ‘cor’
    nc.score: no visible global function definition for ‘na.omit’
    nc.score: no visible global function definition for ‘complete.cases’
    qc_filter: no visible binding for global variable ‘x’
    Undefined global functions or variables:
      complete.cases cor na.omit pnorm var x
    Consider adding
      importFrom("stats", "complete.cases", "cor", "na.omit", "pnorm", "var")
    to your NAMESPACE file.
    ```

# cda

Version: 2.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   7.6Mb
    ```

# Census2016

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

# censys

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      4: get_series()
      5: httr::GET(CENSYS_API_URL %s+% "data", check_api())
      6: request_build("GET", hu$url, as.request(config), ...)
      7: as.request(config)
      8: check_api()
      9: stop("Both CENSYS_API_ID and CENSYS_API_SECRET must be present in the R environment.")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: we can do something (@test-censys.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# changepoint

Version: 2.2.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    BugReports field is not a suitable URL but contains an email address
      which will be used as from R 3.4.0
    ```

# CheckDigit

Version: 0.1-1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# checkpoint

Version: 0.4.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Loading required package: checkpoint
      
      checkpoint: Part of the Reproducible R Toolkit from Microsoft
      https://mran.microsoft.com/documents/rro/reproducibility/
      Error in loadNamespace(name) : there is no package called 'crayon'
      Calls: test_check ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
      testthat results ================================================================
      OK: 61 SKIPPED: 6 FAILED: 4
      1. Error: deals correctly with invalid project paths (@test-7-anyRfiles.R#27) 
      2. Error: deals correctly with invalid project paths (@test-7-anyRfiles.R#27) 
      3. Error: (unknown) (@test-7-anyRfiles.R#26) 
      4. Error: (unknown) (@test-7-anyRfiles.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# Chicago

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: data.table
    
    Welcome to CHiCAGO - version 1.4.0
    If you are new to CHiCAGO, please consider reading the vignette through the command: vignette("Chicago").
    NOTE: Default values of tlb.minProxOEPerBin and tlb.minProxB2BPerBin changed as of Version 1.1.5. No action is required unless you specified non-default values, or wish to re-run the pipeline on old chicagoData objects. See news(package="Chicago")
    Quitting from lines 44-46 (Chicago.Rmd) 
    Error: processing vignette 'Chicago.Rmd' failed with diagnostics:
    there is no package called 'PCHiCdata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘PCHiCdata’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘PCHiCdata’
    ```

# chimeraviz

Version: 1.0.2

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘Biostrings’ ‘GenomicRanges’ ‘IRanges’ ‘Gviz’ ‘S4Vectors’ ‘ensembldb’
      ‘AnnotationFilter’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc       2.7Mb
        extdata   2.0Mb
    ```

# chipenrich.data

Version: 2.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 147.8Mb
      sub-directories of 1Mb or more:
        data  147.0Mb
    ```

# ChIPpeakAnno

Version: 3.10.2

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    >     library(EnsDb.Hsapiens.v75)
    Loading required package: ensembldb
    Loading required package: GenomicFeatures
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: AnnotationFilter
    >     data("myPeakList")
    >     annoGR <- toGRanges(EnsDb.Hsapiens.v75)
    Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: toGRanges ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      12: new(structure("AnnotationFilterList", package = "AnnotationFilter"), ...)
      13: initialize(value, ...)
      14: initialize(value, ...)
      15: validObject(.Object)
      16: stop(msg, ": ", errors, domain = NA)
      
      testthat results ================================================================
      OK: 187 SKIPPED: 3 FAILED: 2
      1. Error: binOverFeature works not correct (@test_binOverFeature.R#26) 
      2. Error: toGRanges works not correct (@test_toGRanges.R#46) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    duplicated or NA names found. Rename all the names by numbers.
    Missing totalTest! totalTest is required for HyperG test. 
    If totalTest is missing, pvalue will be calculated by estimating 
    the total binding sites of encoding region of human.
    totalTest = humanGenomeSize * (2%(codingDNA) + 
                 1%(regulationRegion)) / ( 2 * averagePeakWidth )
              = 3.3e+9 * 0.03 / ( 2 * averagePeakWidth)
              = 5e+7 /averagePeakWidth
    Quitting from lines 143-160 (ChIPpeakAnno.Rmd) 
    Error: processing vignette 'ChIPpeakAnno.Rmd' failed with diagnostics:
    invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘grid’ ‘IRanges’ ‘Biostrings’ ‘GenomicRanges’ ‘S4Vectors’
      ‘VennDiagram’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.6Mb
      sub-directories of 1Mb or more:
        data     12.7Mb
        doc       1.1Mb
        extdata   5.2Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘BiocStyle’
    A package should be listed in only one of these fields.
    ```

# chromer

Version: 0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    parse_counts: no visible global function definition for ‘na.omit’
    Undefined global functions or variables:
      na.omit
    Consider adding
      importFrom("stats", "na.omit")
    to your NAMESPACE file.
    ```

# chromstaR

Version: 1.2.0

## In both

*   checking whether package ‘chromstaR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/chromstaR/new/chromstaR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘chromstaR’ ...
** libs
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_interface.cpp -o R_interface.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utility.cpp -o utility.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c densities.cpp -o densities.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c scalehmm.cpp -o scalehmm.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.cpp -o init.o
g++ -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o chromstaR.so R_interface.o densities.o init.o scalehmm.o utility.o -fopenmp -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/chromstaR/new/chromstaR.Rcheck/chromstaR/libs
** R
** data
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/chromstaR/bamsignals/libs/bamsignals.so':
  libhts.so.0: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘chromstaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/chromstaR/new/chromstaR.Rcheck/chromstaR’

```
### CRAN

```
* installing *source* package ‘chromstaR’ ...
** libs
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c init.cpp -o init.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_interface.cpp -o R_interface.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utility.cpp -o utility.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c densities.cpp -o densities.o
g++  -I/usr/share/R/include -DNDEBUG     -fopenmp -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c scalehmm.cpp -o scalehmm.o
g++ -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o chromstaR.so R_interface.o densities.o init.o scalehmm.o utility.o -fopenmp -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/chromstaR/old/chromstaR.Rcheck/chromstaR/libs
** R
** data
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/chromstaR/bamsignals/libs/bamsignals.so':
  libhts.so.0: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘chromstaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/chromstaR/old/chromstaR.Rcheck/chromstaR’

```
# CINdex

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Loading required package: org.Hs.eg.db
    
    Loading required package: TxDb.Hsapiens.UCSC.hg19.knownGene
    Warning: call dbDisconnect() when finished working with a connection
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'CINdex.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `biblatex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.76 \usepackage
                    [english]{babel}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.4Mb
      sub-directories of 1Mb or more:
        data  17.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    comp.heatmap: no visible binding for global variable ‘dataMatrix’
    process.probe.anno: no visible binding for global variable ‘ID’
    process.probe.anno: no visible binding for global variable ‘midpoint’
    process.reference.genome: no visible binding for global variable
      ‘chrom’
    process.reference.genome: no visible binding for global variable ‘name’
    process.reference.genome: no visible binding for global variable
      ‘stain’
    Undefined global functions or variables:
      ID chrom dataMatrix midpoint name stain
    ```

# civis

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 742 SKIPPED: 4 FAILED: 17
      1. Error: calls scripts_post_custom (@test_civis_ml.R#24) 
      2. Error: calls civis_ml.data.frame for local df (@test_civis_ml.R#103) 
      3. Error: calls scripts_post_custom (@test_civis_ml.R#326) 
      4. Error: uploads local df and passes a file_id (@test_civis_ml.R#400) 
      5. Error: uses the correct template_id (@test_civis_ml.R#547) 
      6. Error: converts parameters arg to JSON string (@test_civis_ml.R#564) 
      7. Error: converts cross_validation_parameters to JSON string (@test_civis_ml.R#581) 
      8. Error: converts fit_params to JSON string (@test_civis_ml.R#600) 
      9. Error: space separates excluded_columns (@test_civis_ml.R#618) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# classifierplots

Version: 1.3.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# cld2

Version: 1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: readtext::readtext at testthat/test-detect.R:6
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 1
      1. Error: vectorised input works (@test-detect.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘readtext’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# cld3

Version: 1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# cleanEHR

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# cleaver

Version: 1.14.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# clust.bin.pair

Version: 0.0.6

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: expect_equal(.mcnemar.impl(psychiatry$bh, psychiatry$ch), 11.85, tolerance = 0.1, 
             scale = NULL, "psychiatry") at testthat/test_clust_bin_pair.R:11
      2: compare(act$val, exp$val, ...)
      3: compare.numeric(act$val, exp$val, ...)
      4: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      5: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      6: stop(gettextf("'%s' must be logical", "check.attributes"), domain = NA)
      
      testthat results ================================================================
      OK: 44 SKIPPED: 0 FAILED: 1
      1. Error: McNemar scores datasets correctly (@test_clust_bin_pair.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# clusterExperiment

Version: 1.2.0

## In both

*   checking whether package ‘clusterExperiment’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘DBI’ is not available and has been replaced
    See ‘/home/muelleki/git/R/testthat/revdep/checks/clusterExperiment/new/clusterExperiment.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
    ```

# clustermq

Version: 0.7.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rzmq’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# ClusterR

Version: 1.0.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# ClusterSignificance

Version: 1.4.1

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# clusterSim

Version: 0.46-2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc   2.9Mb
        pdf   2.2Mb
    ```

# CNEr

Version: 1.12.1

## In both

*   checking compiled code ... WARNING
    ```
    File ‘CNEr/libs/CNEr.so’:
      Found ‘abort’, possibly from ‘abort’ (C)
        Object: ‘ucsc/errabort.o’
      Found ‘exit’, possibly from ‘exit’ (C)
        Objects: ‘ucsc/errabort.o’, ‘ucsc/pipeline.o’
      Found ‘puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Object: ‘ucsc/pipeline.o’
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘ucsc/obscure.o’
      Found ‘stderr’, possibly from ‘stderr’ (C)
        Objects: ‘ucsc/axt.o’, ‘ucsc/errabort.o’, ‘ucsc/obscure.o’,
          ‘ucsc/verbose.o’, ‘ucsc/os.o’
      Found ‘stdout’, possibly from ‘stdout’ (C)
        Objects: ‘ucsc/common.o’, ‘ucsc/errabort.o’, ‘ucsc/verbose.o’,
          ‘ucsc/os.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor the system RNG.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.3Mb
      sub-directories of 1Mb or more:
        extdata  15.9Mb
        libs      1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::make_zero_col_DataFrame’
      See the note in ?`:::` about the use of this operator.
    ```

# CNPBayes

Version: 1.6.1

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'labelSwitching':
    labelSwitching
      Code: function(object, ...)
      Docs: function(object, merge = TRUE)
      Argument names in code not in docs:
        ...
      Argument names in docs not in code:
        merge
      Mismatches in argument names:
        Position: 2 Code: ... Docs: merge
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.7Mb
      sub-directories of 1Mb or more:
        libs  10.6Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘GenomicRanges’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    consensusRegion: no visible global function definition for
      ‘elementLengths’
    Undefined global functions or variables:
      elementLengths
    ```

# coala

Version: 0.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

# cocor

Version: 1.1-3

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘rkward’
    ```

# cocorresp

Version: 0.3-0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pls’
    ```

# cocron

Version: 1.0-1

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘rkward’
    ```

# coefplot

Version: 1.2.4

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘glmnet’ ‘maxLik’
    ```

# CoGAPS

Version: 2.10.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    GWCoGAPS: no visible binding for global variable ‘i’
    patternMatcher : <anonymous>: no visible binding for global variable
      ‘Samples’
    patternMatcher : <anonymous>: no visible binding for global variable
      ‘value’
    patternMatcher : <anonymous>: no visible binding for global variable
      ‘BySet’
    Undefined global functions or variables:
      BySet Samples i value
    ```

# collapsibleTree

Version: 0.1.6

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘knitr’ ‘shiny’
    ```

# colordistance

Version: 0.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# colorpatch

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘grid’ ‘gridExtra’
      All declared Imports should be used.
    ```

# COMPASS

Version: 1.14.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘COMPASS-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getCounts
    > ### Title: Get a data.table of counts of polyfunctional subsets
    > ### Aliases: getCounts
    > 
    > ### ** Examples
    > 
    > getCounts(CR)
    Error in loadNamespace(name) : there is no package called ‘reshape2’
    Calls: getCounts ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'translate_marker_names'
      ‘x’
    Documented arguments not in \usage in documentation object 'translate_marker_names':
      ‘cellpops’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs    3.5Mb
        shiny   1.4Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘methods’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘flowWorkspace:::.getNodeInd’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    COMPASSContainerFromGatingSet : .checkMarkerConsistency : <anonymous> :
      <anonymous>: no visible global function definition for ‘parameters’
    COMPASSContainerFromGatingSet : .checkMarkerConsistency : <anonymous>:
      no visible global function definition for ‘parameters’
    COMPASSContainerFromGatingSet : .checkMarkerConsistency : <anonymous>:
      no visible global function definition for ‘getData’
    COMPASSContainerFromGatingSet: no visible global function definition
      for ‘parameters’
    COMPASSContainerFromGatingSet: no visible global function definition
      for ‘getSingleCellExpression’
    GetThresholdedIntensities: no visible global function definition for
      ‘parameters’
    GetThresholdedIntensities: no visible global function definition for
      ‘exprs’
    GetThresholdedIntensities : <anonymous>: no visible global function
      definition for ‘getData’
    draw_polar_legend: no visible binding for global variable ‘trtLabels’
    shinyCOMPASS: no visible global function definition for ‘runApp’
    Undefined global functions or variables:
      exprs getData getSingleCellExpression pData parameters runApp
      trtLabels
    ```

# ComplexHeatmap

Version: 1.14.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        doc   4.2Mb
    ```

# condformat

Version: 0.6.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# confidence

Version: 1.1-2

## In both

*   checking whether package ‘confidence’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/confidence/new/confidence.Rcheck/00install.out’ for details.
    ```

# configr

Version: 0.3.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘config’
    ```

# ConR

Version: 1.2.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘speciesgeocodeR’
    ```

# constants

Version: 0.0.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# convexjlr

Version: 0.6.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: Variable(c(2, 2)) at testthat/test_SOCP_JuliaCall.R:21
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 8
      1. Error: Results for example of exponential cone programming (@test_ECP.R#18) 
      2. Error: Results for example of exponential cone programming with JuliaCall (@test_ECP_JuliaCall.R#18) 
      3. Error: Results for example of linear programming (@test_LP.R#24) 
      4. Error: Results for example of linear programming with JuliaCall (@test_LP_JuliaCall.R#24) 
      5. Error: Results for example of semidefinite programming (@test_SDP.R#17) 
      6. Error: Results for example of semidefinite programming with JuliaCall (@test_SDP_JuliaCall.R#17) 
      7. Error: Results for example of second order cone programming (@test_SOCP.R#21) 
      8. Error: Results for example of second order cone programming with JuliaCall (@test_SOCP_JuliaCall.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# coRanking

Version: 0.1.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rtsne’ ‘scatterplot3d’
      All declared Imports should be used.
    ```

# corpus

Version: 0.9.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      x[2]: is a ros..."
      y[2]: "1 1                                    Rose    is a rose is a rose is
      y[2]:  a r..."
      
      x[3]: "2 3                    Snow White and    Rose    Red                 
      x[3]:            "
      y[3]: "2 3                  Snow White and    Rose    Red                   
      y[3]:        "
      
      testthat results ================================================================
      OK: 740 SKIPPED: 5 FAILED: 1
      1. Failure: 'text_locate' prints results correctly (@test-text_locate.R#165) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘quanteda’ ‘tm’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 578 marked UTF-8 strings
    ```

# corpustools

Version: 0.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 438 marked UTF-8 strings
    ```

# COSMIC.67

Version: 1.12.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 39.3Mb
      sub-directories of 1Mb or more:
        data  16.6Mb
        vcf   22.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# Countr

Version: 3.2.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# countrycode

Version: 0.19

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 765 marked UTF-8 strings
    ```

# countyfloods

Version: 0.0.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
    To use this package, you must install the hurricaneexposuredata
    package. To install that package, run
    `install.packages('hurricaneexposuredata',
    repos='https://geanders.github.io/drat/', type='source')`. See the
    `hurricaneexposure` vignette for more details.
    To use this function, you must have the `hurricaneexposuredata`
    package installed. See the `hurricaneexposure` package vignette
    for more details.
    Quitting from lines 304-306 (countyflood.Rmd) 
    Error: processing vignette 'countyflood.Rmd' failed with diagnostics:
    there is no package called 'hurricaneexposuredata'
    Execution halted
    ```

# covr

Version: 3.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      x[115]: isplay\\\">\\n  <thead>\\n    <tr>\\n      <th>Coverage<\\/th>\\n      ...
      y[115]: "          <script type=\"application/json\" data-for=\"htmlwidget-eaef49d
      y[115]: 4a484bc22a8b4\">{\"x\":{\"filter\":\"none\",\"data\":[[\"<div class=\\\"co
      y[115]: verage-box coverage-high\\\">100.00\\u003c/div>\"],[\"<a href=\\\"#\\\">R/
      y[115]: TestS4.R\\u003c/a>\"],[38],[6],[6],[0],[\"2\"]],\"container\":\"<table cla
      y[115]: ss=\\\"display\\\">\\n  <thead>\\n    <tr>\\n      <th>Coverage\\u003c/...
      
      testthat results ================================================================
      OK: 232 SKIPPED: 0 FAILED: 3
      1. Error: parse_gcov parses files properly (@test-gcov.R#3) 
      2. Error: clean_gcov correctly clears files (@test-gcov.R#63) 
      3. Failure: it works with coverage objects (@test-report.R#28) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# cowbell

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘misc3d’
      All declared Imports should be used.
    ```

# crisprseekplus

Version: 1.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'crisprseekplus.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

# crossmeta

Version: 1.2.0

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    Data with usage in documentation object 'gs.names' but not in code:
      gs.names
    
    Data with usage in documentation object 'gslist' but not in code:
      gslist
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported objects:
      ‘crossmeta::gs.names’ ‘crossmeta::gslist’
    ```

*   checking R code for possible problems ... NOTE
    ```
    explore_paths : server: no visible binding for global variable ‘gslist’
    explore_paths : server: no visible binding for global variable
      ‘gs.names’
    Undefined global functions or variables:
      gs.names gslist
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘PADOG’, ‘GeneMeta’
    ```

# Crossover

Version: 0.1-16

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 163 SKIPPED: 0 FAILED: 16
      1. Failure: (unknown) (@test-r-vs-c.R#39) 
      2. Failure: (unknown) (@test-r-vs-c.R#39) 
      3. Failure: (unknown) (@test-r-vs-c.R#39) 
      4. Failure: (unknown) (@test-r-vs-c.R#39) 
      5. Failure: (unknown) (@test-r-vs-c.R#39) 
      6. Failure: (unknown) (@test-r-vs-c.R#39) 
      7. Failure: (unknown) (@test-r-vs-c.R#39) 
      8. Failure: (unknown) (@test-r-vs-c.R#39) 
      9. Failure: (unknown) (@test-r-vs-c.R#39) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following object is masked from 'package:MASS':
    
        geyser
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Crossover.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algorithmic.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.68 \usepackage
                    {algorithm}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# crul

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘httpcode’
      All declared Imports should be used.
    ```

# curatedMetagenomicData

Version: 1.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘dplyr’ ‘phyloseq’ ‘Biobase’ ‘ExperimentHub’ ‘AnnotationHub’
      ‘magrittr’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        help   7.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘BiocInstaller’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BiocInstaller’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ExpressionSet2MRexperiment: no visible global function definition for
      ‘AnnotatedDataFrame’
    ExpressionSet2MRexperiment: no visible global function definition for
      ‘phenoData’
    curatedMetagenomicData : <anonymous>: no visible global function
      definition for ‘exprs<-’
    Undefined global functions or variables:
      AnnotatedDataFrame exprs<- phenoData
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: HMP_2012.Rd:540-542: Dropping empty section \seealso
    prepare_Rd: KarlssonFH_2013.Rd:90-92: Dropping empty section \seealso
    prepare_Rd: LeChatelierE_2013.Rd:86-88: Dropping empty section \seealso
    prepare_Rd: LomanNJ_2013_Hi.Rd:82-84: Dropping empty section \seealso
    prepare_Rd: LomanNJ_2013_Mi.Rd:82-84: Dropping empty section \seealso
    prepare_Rd: NielsenHB_2014.Rd:94-96: Dropping empty section \seealso
    prepare_Rd: Obregon_TitoAJ_2015.Rd:94-96: Dropping empty section \seealso
    prepare_Rd: OhJ_2014.Rd:86-88: Dropping empty section \seealso
    prepare_Rd: QinJ_2012.Rd:106-108: Dropping empty section \seealso
    prepare_Rd: QinN_2014.Rd:94-96: Dropping empty section \seealso
    prepare_Rd: RampelliS_2015.Rd:90-92: Dropping empty section \seealso
    prepare_Rd: TettAJ_2016.Rd:184-186: Dropping empty section \seealso
    prepare_Rd: ZellerG_2014.Rd:94-96: Dropping empty section \seealso
    ```

# curl

Version: 3.0

## In both

*   checking compiled code ... NOTE
    ```
    File ‘curl/libs/curl.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# CVE

Version: 1.2.0

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                                    old_size new_size compress
      WGCNAmelanoma_extension.RData    2.4Mb    2.1Mb       xz
      crcCase.RData                    1.1Mb    676Kb       xz
      melanomaCase.RData               654Kb    473Kb       xz
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘shiny’ ‘ConsensusClusterPlus’ ‘RColorBrewer’ ‘gplots’ ‘plyr’
      ‘ggplot2’ ‘jsonlite’ ‘ape’ ‘WGCNA’ ‘RTCGAToolbox’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘RTCGAToolbox’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# Cyclops

Version: 1.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 23.2Mb
      sub-directories of 1Mb or more:
        libs  22.5Mb
    ```

# cydar

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(e1) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(e1) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning in is.na(e1) :
      is.na() applied to non-(list or vector) of type 'NULL'
    Warning: did not converge in 10 iterations
    Warning: did not converge in 10 iterations
    Loading required package: limma
    
    Attaching package: 'limma'
    
    The following object is masked from 'package:BiocGenerics':
    
        plotMA
    
    Quitting from lines 229-233 (cydar.Rmd) 
    Error: processing vignette 'cydar.Rmd' failed with diagnostics:
    statmod package required but is not installed
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘S4Vectors:::selectSome’
      ‘SummarizedExperiment:::.SummarizedExperiment.charbound’
      See the note in ?`:::` about the use of this operator.
    ```

# cytofkit

Version: 1.8.4

## In both

*   checking whether package ‘cytofkit’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/cytofkit/new/cytofkit.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc       2.1Mb
        extdata   3.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    cytof_clusterPlot: no visible global function definition for
      ‘geom_text’
    cytof_progressionPlot: no visible global function definition for ‘aes’
    cytof_progressionPlot: no visible binding for global variable
      ‘Pseudotime’
    cytof_progressionPlot: no visible binding for global variable ‘cluster’
    cytofkitShinyAPP : <anonymous> : C_ScatterPlotInput: no visible global
      function definition for ‘scatterPlot’
    cytofkitShinyAPP : <anonymous>: no visible global function definition
      for ‘heatMap’
    cytofkitShinyAPP : <anonymous> : M_markerExpressionPlotInput: no
      visible global function definition for ‘scatterPlot’
    cytofkitShinyAPP : <anonymous> : M_stackDensityPlotInput: no visible
      global function definition for ‘stackDenistyPlot’
    cytofkitShinyAPP : <anonymous> : P_markerPlotInput: no visible global
      function definition for ‘cytof_expressionTrends’
    Undefined global functions or variables:
      Pseudotime aes cluster cytof_expressionTrends geom_text heatMap
      scatterPlot stackDenistyPlot
    ```

# CytoML

Version: 1.2.1

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'divaWorkspace-class'
      ‘x’ ‘object’ ‘obj’ ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 30.7Mb
      sub-directories of 1Mb or more:
        doc    3.0Mb
        libs  27.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘flowUtils:::.fuEnv’ ‘flowUtils:::smartTreeParse’
      ‘flowWorkspace:::.cpp_getCompensation’
      ‘flowWorkspace:::.fix_channel_slash’ ‘flowWorkspace:::.groupByTree’
      ‘flowWorkspace:::compute.timestep’ ‘flowWorkspace:::isHidden’
      ‘flowWorkspace:::isNegated’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    subPopulationNode : <anonymous> : <anonymous>: no visible global
      function definition for ‘is’
    xmlTag: no visible global function definition for ‘is’
    compensate,GatingSet-graphGML: no visible global function definition
      for ‘is’
    getSamples,divaWorkspace: no visible global function definition for
      ‘selectMethod’
    getTransformations,graphGML : <anonymous>: no visible global function
      definition for ‘extends’
    transform,ellipsoidGate: no visible global function definition for ‘as’
    Undefined global functions or variables:
      . as comp_ref count extends fcs fcs_filename gate_def gate_id id is
      is.smaller menu name new pData<- parent parent_count population rgb
      sampleSelected selectMethod slot specimen x y
    Consider adding
      importFrom("grDevices", "rgb")
      importFrom("methods", "as", "extends", "is", "new", "selectMethod",
                 "slot")
      importFrom("utils", "menu")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking compilation flags in Makevars ... NOTE
    ```
    Package has both ‘src/Makevars.in’ and ‘src/Makevars’.
    Installation with --no-configure' is unlikely to work.  If you intended
    ‘src/Makevars’ to be used on Windows, rename it to ‘src/Makevars.win’
    otherwise remove it.  If ‘configure’ created ‘src/Makevars’, you need a
    ‘cleanup’ script.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# d3r

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: d3_v8 has d3 (@test_v8.R#9) ------------------------------------------
      The V8 package must be installed for this function.  Please install.packages('V8').
      1: expect_identical(d3_v8()$get("global.d3.version"), d3_dep_v4()$version) at testthat/test_v8.R:9
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      4: d3_v8()
      5: stop("The V8 package must be installed for this function.  Please install.packages('V8').")
      
      testthat results ================================================================
      OK: 11 SKIPPED: 3 FAILED: 2
      1. Error: d3-jetpack on latest release (@test_deps.R#47) 
      2. Error: d3_v8 has d3 (@test_v8.R#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘igraph’ ‘partykit’ ‘treemap’ ‘V8’
    ```

# DAISIE

Version: 1.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# DaMiRseq

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   5.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    DaMiR.Allplot: warning in pheatmap(sampleDistMatrix,
      clustering_distance_rows = mydist, clustering_distance_cols = mydist,
      col = colors, breaks = seque, annotation_col = df): partial argument
      match of 'col' to 'color'
    DaMiR.Clustplot: warning in pheatmap(count_data,
      clustering_distance_rows = d_r, clustering_distance_cols = d_c, scale
      = "row", col = colors, annotation_col = df): partial argument match
      of 'col' to 'color'
    DaMiR.Allplot: no visible binding for global variable ‘X1’
    DaMiR.Allplot: no visible binding for global variable ‘X2’
    DaMiR.EnsembleLearning: no visible binding for global variable
      ‘Predictors’
    DaMiR.EnsembleLearning: no visible binding for global variable
      ‘Accuracy’
    DaMiR.MDSplot: no visible binding for global variable ‘X1’
    DaMiR.MDSplot: no visible binding for global variable ‘X2’
    Undefined global functions or variables:
      Accuracy Predictors X1 X2
    ```

# DAPAR

Version: 1.8.7

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented data sets:
      ‘testWithoutNA’ ‘test’ ‘UPSpep25’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Prostar’
    ```

# darksky

Version: 1.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      + }
      1. Error: the API call works (@test-darksky.R#6) -------------------------------
      Please set env var DARKSKY_API_KEY to your Dark Sky API key
      1: get_current_forecast(43.2672, -70.8617) at testthat/test-darksky.R:6
      2: sprintf("https://api.darksky.net/forecast/%s/%s,%s", darksky_api_key(), latitude, 
             longitude)
      3: darksky_api_key()
      4: stop("Please set env var DARKSKY_API_KEY to your Dark Sky API key", call. = FALSE)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: the API call works (@test-darksky.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dat

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        code_path = file.path(loc, "R")
                  ^
      tests/testthat/test-watcher.R:50:13: style: Use <-, not =, for assignment.
        test_path = file.path(loc, "tests")
                  ^
      tests/testthat/test-watcher.R:56:59: style: Put spaces around all infix operators.
          system(paste0("bash -c 'sleep 1;", command, "'"), wait=FALSE)
                                                               ~^~
      
      testthat results ================================================================
      OK: 109 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-lintr.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# data.tree

Version: 0.7.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 512-515 (data.tree.Rmd) 
    Error: processing vignette 'data.tree.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

# data.world

Version: 1.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: FUN(X[[i]], ...)
      5: is_base_pkg(pkg_name)
      6: x %in% rownames(utils::installed.packages(priority = "base"))
      7: rownames(utils::installed.packages(priority = "base"))
      8: utils::installed.packages(priority = "base")
      9: saveRDS(list(base = base, value = ret0), dest)
      10: gzfile(file, mode)
      
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 2
      1. Error: SQL query making correct calls (@test_query.R#24) 
      2. Error: SPARQL query making correct calls (@test_query.R#51) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# datadr

Version: 0.8.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rhipe’
    ```

# datafsm

Version: 0.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Looking up history[1], period 1: (0, 536871054, 0)
      Looking up history[2], period 0: (1, 536870925, 0)
      Looking up history[3], period 1: (0, 536870936, 0)
      Looking up history[4], period 1: (0, 536870922, 0)
      Looking up history[1], period 1: (0, 536870925, 0)
      Looking up history[2], period 0: (1, 536870925, 0)
      Looking up history[3], period 1: (0, 536870925, 0)
      Looking up history[4], period 1: (0, 536871054, 0)
      Looking up history[1], period 1: (1, 536870925, 0)
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 1
      1. Error: evolve_model() returns warnings and errors (@test_mainfunc.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dataonderivatives

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      2. Failure: BSDR API accesible (@test-bsdr.R#8) --------------------------------
      `df2` inherits from `NULL` not `data.frame`.
      
      3. Failure: BSDR API accesible (@test-bsdr.R#9) --------------------------------
      `nrow(df1) <= nrow(df2)` isn't true.
      
      testthat results ================================================================
      OK: 24 SKIPPED: 0 FAILED: 3
      1. Failure: BSDR API accesible (@test-bsdr.R#6) 
      2. Failure: BSDR API accesible (@test-bsdr.R#8) 
      3. Failure: BSDR API accesible (@test-bsdr.R#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# datapasta

Version: 2.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(datapasta)
      > 
      > test_check("datapasta")
      1. Error: .rs.readUiPref() returns an integer (@test_rstudio.R#7) --------------
      could not find function ".rs.readUiPref"
      1: expect_type(.rs.readUiPref("num_spaces_for_tab"), type = "integer") at testthat/test_rstudio.R:7
      2: quasi_label(enquo(object))
      3: eval_bare(get_expr(quo), get_env(quo))
      
      testthat results ================================================================
      OK: 12 SKIPPED: 17 FAILED: 1
      1. Error: .rs.readUiPref() returns an integer (@test_rstudio.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dataPreparation

Version: 0.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘dataPreparation-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: aggregateByKey
    > ### Title: Automatic dataSet aggregation by key
    > ### Aliases: aggregateByKey
    > 
    > ### ** Examples
    > 
    > # Get generic dataset from R
    > data("adult")
    > 
    > # Aggregate it using aggregateByKey, in order to extract characteristics for each country
    > adult_aggregated <- aggregateByKey(adult, key = 'country')
    [1] "aggregateByKey: I start to aggregate"
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "toplevel".
    Calls: aggregateByKey ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: (unknown) (@test_aggregate.R#11) 
      2. Error: (unknown) (@test_datesManipulation.R#12) 
      3. Error: unFactor: change level (@test_factorManipulation.R#10) 
      4. Error: fastRound:  (@test_fastFunctions.R#22) 
      5. Error: (unknown) (@test_fastFunctions.R#35) 
      6. Error: (unknown) (@test_generateFromDate.R#10) 
      7. Error: (unknown) (@test_numericsManipulations.R#12) 
      8. Error: (unknown) (@test_prepareSet.R#6) 
      9. Error: (unknown) (@test_sameShape.R#27) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning message:
      no DISPLAY variable so Tk is not available 
      Execution halted
    ```

*   checking whether package ‘dataPreparation’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/dataPreparation/new/dataPreparation.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'lubridate'
    
    The following object is masked from 'package:base':
    
        date
    
    Loading required package: stringr
    Loading required package: Matrix
    Warning: no DISPLAY variable so Tk is not available
    
    Attaching package: 'data.table'
    
    The following objects are masked from 'package:lubridate':
    
        hour, isoweek, mday, minute, month, quarter, second, wday,
        week, yday, year
    
    Quitting from lines 124-127 (dataPreparation.Rmd) 
    Error: processing vignette 'dataPreparation.Rmd' failed with diagnostics:
    [tcl] invalid command name "toplevel".
    Execution halted
    ```

# datarobot

Version: 2.7.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

# datastructures

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 53.2Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  51.1Mb
    ```

# dbhydroR

Version: 0.2-3

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘dbhydroR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_wq
    > ### Title: Retrieve water quality data from the DBHYDRO Environmental
    > ###   Database
    > ### Aliases: get_wq getwq
    > 
    > ### ** Examples
    > 
    > 
    > #one variable and one station
    > get_wq(station_id = "FLAB08",
    + date_min = "2011-03-01", date_max = "2012-05-01", 
    + test_name = "CHLOROPHYLLA-SALINE")
    Error in if (!any(!is.na(res)) | !any(res$Matrix != "DI")) { : 
      missing value where TRUE/FALSE needed
    Calls: get_wq
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      4: ncol(get_wq(station_id = c("FLAB08", "FLAB09"), date_min = "2011-03-01", date_max = "2012-05-01", 
             test_name = "CHLOROPHYLLA-SALINE"))
      5: get_wq(station_id = c("FLAB08", "FLAB09"), date_min = "2011-03-01", date_max = "2012-05-01", 
             test_name = "CHLOROPHYLLA-SALINE")
      
      testthat results ================================================================
      OK: 13 SKIPPED: 0 FAILED: 3
      1. Error: get_wq works (@test-getwq.R#6) 
      2. Error: get_wq fails well (@test-getwq.R#14) 
      3. Error: multiple stations return correct num of columns (@test-getwq.R#56) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# DBItest

Version: 1.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# dbplyr

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# dbscan

Version: 1.1-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        doc    2.4Mb
        libs   7.8Mb
    ```

# dcemriS4

Version: 0.55

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘quantile’
    .dcemri.spline.single: no visible binding for global variable ‘median’
    .dcemri.spline.single: no visible global function definition for
      ‘median’
    .ftm: no visible global function definition for ‘fft’
    .ftm: no visible global function definition for ‘matplot’
    .ftm: no visible global function definition for ‘legend’
    compartmentalModel : <anonymous>: no visible global function definition
      for ‘approx’
    convFFT: no visible global function definition for ‘fft’
    extractAIF : c.start: no visible global function definition for ‘sd’
    extractAIF : c.start: no visible global function definition for ‘cor’
    Undefined global functions or variables:
      approx cor dbeta dgamma dnorm fft legend lsfit matplot median optim
      quantile sd setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("graphics", "legend", "matplot")
      importFrom("stats", "approx", "cor", "dbeta", "dgamma", "dnorm", "fft",
                 "lsfit", "median", "optim", "quantile", "sd")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# DChIPRep

Version: 1.6.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# dcmr

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘combn’
    SampleParameterEstimates: no visible global function definition for
      ‘rnorm’
    plot,attribute.class-missing: no visible binding for global variable
      ‘attr.number’
    plot,attribute.class-missing: no visible binding for global variable
      ‘mean.attr’
    plot,attribute.profile.class-missing: no visible binding for global
      variable ‘attr.profile.number’
    plot,attribute.profile.class-missing: no visible binding for global
      variable ‘mean.attr.profile’
    summary,attribute.class: no visible binding for global variable ‘value’
    summary,attribute.profile.class: no visible binding for global variable
      ‘max.class’
    Undefined global functions or variables:
      attr.number attr.profile.number combn max.class mean.attr
      mean.attr.profile rmultinom rnorm runif value
    Consider adding
      importFrom("stats", "rmultinom", "rnorm", "runif")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

# ddgraph

Version: 1.20.0

## In both

*   checking examples ... ERROR
    ```
    ...
    Number of undirected edges:  2 
    Number of directed edges:    12 
    Total number of edges:       14 
    
    $nbr
    character(0)
    
    $mb
    character(0)
    
    > 
    > # run hill-climbing with BIC penalization and plot the resulting Bayesian Network
    > # NOTE: plotting requires the Rgraphviz package
    > if(require("Rgraphviz"))
    + calcDependence(mesoBin$VM, "hc-bic", make.plot=TRUE)
    Loading required package: Rgraphviz
    Loading required package: grid
    Error in check.colour(highlight$col) : 
      highlight$col must be a single colour.
    Calls: calcDependence ... plotBNLearn -> graphviz.plot -> graphviz.backend -> check.colour
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘Rgraphviz’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    svmFeatureSelectionLOOCV: no visible global function definition for
      ‘svm’
    ciTest,DDDataSet: no visible global function definition for
      ‘fisher.test’
    plot,DDGraph-missing: no visible global function definition for ‘par’
    plot,DDGraph-missing: no visible global function definition for
      ‘layoutGraph’
    plot,DDGraph-missing: no visible global function definition for
      ‘renderGraph’
    Undefined global functions or variables:
      abline barplot dev.off fisher.test glob2rx hist layoutGraph p.adjust
      par pdf performance predict prediction rbeta read.delim renderGraph
      rnorm runif strheight strwidth svm text var
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("graphics", "abline", "barplot", "hist", "par", "strheight",
                 "strwidth", "text")
      importFrom("stats", "fisher.test", "p.adjust", "predict", "rbeta",
                 "rnorm", "runif", "var")
      importFrom("utils", "glob2rx", "read.delim")
    to your NAMESPACE file.
    ```

# debrowser

Version: 1.4.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'DEBrowser.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        doc       6.3Mb
        extdata   2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    scatterZoom: no visible binding for global variable ‘size.hover’
    scatterZoom: no visible binding for global variable ‘key’
    startDEBrowser: no visible binding for global variable
      ‘.startdebrowser.called’
    volcanoPlot: no visible global function definition for ‘:=’
    volcanoPlot: no visible binding for global variable ‘size’
    volcanoPlot: no visible binding for global variable ‘size.hover’
    volcanoPlot: no visible binding for global variable ‘fillOpacity’
    volcanoPlot: no visible binding for global variable ‘fillOpacity.hover’
    volcanoPlot: no visible binding for global variable ‘fill.brush’
    volcanoPlot: no visible binding for global variable ‘opacity’
    volcanoPlot: no visible binding for global variable ‘key’
    volcanoZoom: no visible global function definition for ‘:=’
    volcanoZoom: no visible binding for global variable ‘size’
    volcanoZoom: no visible binding for global variable ‘size.hover’
    volcanoZoom: no visible binding for global variable ‘key’
    Undefined global functions or variables:
      .startdebrowser.called := NUL align baseline biocLite conds debrowser
      demodata fill fill.brush fillOpacity fillOpacity.hover fit fontSize
      get_user_info googleAuth googleAuthUI initStore key opacity samples
      searched size size.hover stroke updateStore with_shiny
    ```

# debugme

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 35 SKIPPED: 0 FAILED: 1
      1. Error: get_timestamp_stamp (@test-debug.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# decompr

Version: 4.5.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gvc’
    ```

# DEFormats

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    as.DESeqDataSet.DGEList: no visible global function definition for ‘as’
    as.DGEList.DESeqDataSet: no visible global function definition for ‘as’
    simulateRnaSeqData: no visible global function definition for ‘as’
    DGEList,RangedSummarizedExperiment: no visible global function
      definition for ‘new’
    Undefined global functions or variables:
      as new
    Consider adding
      importFrom("methods", "as", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# Delaporte

Version: 6.1.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘nloptr’
    ```

# DeLorean

Version: 1.2.5

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    filter:
      function(x, filter, method, sides, circular, init)
    filter.cells:
      function(dl, .filter, number, cells)
    
    filter:
      function(x, filter, method, sides, circular, init)
    filter.genes:
      function(dl, .filter, number, genes)
    
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

# dendextend

Version: 1.5.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘ggdendro’ ‘labeltodendro’ ‘dendroextras’ ‘Hmisc’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘WGCNA’, ‘dendroextras’, ‘moduleColor’, ‘distory’, ‘phangorn’, ‘ggdendro’, ‘zoo’
    ```

# DEploid

Version: 0.4.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# DepthProc

Version: 2.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# derfinder

Version: 1.10.6

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in citation("BiocStyle") :
      no date field in DESCRIPTION file of package 'BiocStyle'
    Quitting from lines 53-115 (derfinder-quickstart.Rmd) 
    Error: processing vignette 'derfinder-quickstart.Rmd' failed with diagnostics:
    package 'knitrBootstrap' not found
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘derfinderPlot’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomeInfoDb:::.guessSpeciesStyle’
      ‘GenomeInfoDb:::.supportedSeqnameMappings’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.smootherFstats’
    ```

# derfinderHelper

Version: 1.10.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in citation("BiocStyle") :
      no date field in DESCRIPTION file of package 'BiocStyle'
    Quitting from lines 51-82 (derfinderHelper.Rmd) 
    Error: processing vignette 'derfinderHelper.Rmd' failed with diagnostics:
    package 'BiocParallel' not found
    Execution halted
    ```

# derfinderPlot

Version: 1.10.0

## In both

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘RefManageR’
    ```

# describer

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 8 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-styling.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# DESeq2

Version: 1.16.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("DESeq2")
      1. Error: tximport works (@test_tximport.R#12) ---------------------------------
      importing inferential replicates for Salmon or Sailfish requires package `rjson`.
        to skip this step, set dropInfReps=TRUE
      1: tximport(files, type = "salmon", tx2gene = tx2gene) at testthat/test_tximport.R:12
      2: infRepImporter(dirname(files[i]))
      3: readInfRepFish(x, type)
      4: stop("importing inferential replicates for Salmon or Sailfish requires package `rjson`.\n  to skip this step, set dropInfReps=TRUE")
      
      testthat results ================================================================
      OK: 203 SKIPPED: 0 FAILED: 1
      1. Error: tximport works (@test_tximport.R#12) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    reading in files with read_tsv
    1 Quitting from lines 256-257 (DESeq2.Rmd) 
    Error: processing vignette 'DESeq2.Rmd' failed with diagnostics:
    importing inferential replicates for Salmon or Sailfish requires package `rjson`.
      to skip this step, set dropInfReps=TRUE
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc    2.4Mb
        libs   2.6Mb
    ```

# destiny

Version: 2.4.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘rgl’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc    3.1Mb
        libs   2.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scatterplot3d’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rgl’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'plot.DPT':
      ‘plot.DPT’
    
    S3 methods shown with full name in documentation object 'plot.DiffusionMap':
      ‘plot.DiffusionMap’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘viridis’
    'library' or 'require' calls not declared from:
      ‘IRdisplay’ ‘IRkernel’ ‘base64enc’ ‘repr’ ‘xlsx’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'DPT.ipynbmeta' failed with diagnostics:
    Either IPython 3+ or Jupyter has to be installed, but neither could be called.
    Execution halted
    ```

# devtools

Version: 1.13.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-that.R’ failed.
    Last 13 lines of output:
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      
      testthat results ================================================================
      OK: 433 SKIPPED: 0 FAILED: 4
      1. Error: user is queried if no package structure present (@test-load.r#9) 
      2. Error: setup is called upon user consent if no package structure present (@test-load.r#20) 
      3. Error: setup is called if no package structure present (@test-load.r#31) 
      4. Error: error is thrown if no package structure present (@test-load.r#41) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dexter

Version: 0.4.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 109 marked UTF-8 strings
    ```

# dggridR

Version: 2.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.5Mb
      sub-directories of 1Mb or more:
        doc    1.9Mb
        libs  25.2Mb
    ```

# dgo

Version: 0.2.10

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             if (identical(caller_env, globalenv())) {
                 stop("must be called in a function")
             }
             if (missing(x)) {
                 stop("argument \"x\" is missing")
             }
             .Call(rlang_capturearg, NULL, NULL, pairlist(caller_env, strict), get_env())
         })(object)
      
      testthat results ================================================================
      OK: 265 SKIPPED: 0 FAILED: 1
      1. Error: raking equalizes weights when they should be equal (@test-raking.r#235) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# DHARMa

Version: 0.1.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mgcv’
      All declared Imports should be used.
    ```

# DiceKriging

Version: 1.5.5

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘model.matrix’
    paramSample,covAffineScaling: no visible global function definition for
      ‘runif’
    paramSample,covIso: no visible global function definition for ‘runif’
    paramSample,covScaling: no visible global function definition for
      ‘runif’
    paramSample,covTensorProduct: no visible global function definition for
      ‘runif’
    vect2covparam,covScaling: no visible global function definition for
      ‘unstack’
    Undefined global functions or variables:
      abline as.formula dist lines lm matplot model.matrix optim par qnorm
      qqline qqnorm qt quantile reformulate rnorm runif sd terms unstack
      var
    Consider adding
      importFrom("graphics", "abline", "lines", "matplot", "par")
      importFrom("stats", "as.formula", "dist", "lm", "model.matrix",
                 "optim", "qnorm", "qqline", "qqnorm", "qt", "quantile",
                 "reformulate", "rnorm", "runif", "sd", "terms", "var")
      importFrom("utils", "unstack")
    to your NAMESPACE file.
    ```

# DiffBind

Version: 2.4.8

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘rgl’ ‘XLConnect’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   3.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    pv.DBAplotVolcano: no visible binding for global variable ‘Fold’
    pv.DBAplotVolcano: no visible binding for global variable ‘Legend’
    Undefined global functions or variables:
      Fold Legend
    ```

# DiffLogo

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘colorRampPalette’
    diffLogoTable: no visible global function definition for ‘rgb’
    diffLogoTable: no visible global function definition for ‘dist’
    diffLogoTable: no visible global function definition for ‘hclust’
    diffLogoTable: no visible global function definition for ‘par’
    diffLogoTable: no visible global function definition for ‘plot’
    diffLogoTable: no visible global function definition for ‘rect’
    diffLogoTable: no visible global function definition for ‘axis’
    seqLogo: no visible global function definition for ‘plot’
    seqLogo: no visible global function definition for ‘abline’
    seqLogo: no visible global function definition for ‘axis’
    seqLogo: no visible global function definition for ‘polygon’
    Undefined global functions or variables:
      abline axis colorRampPalette dist hclust lines par plot plot.new
      polygon rect rgb
    Consider adding
      importFrom("grDevices", "colorRampPalette", "rgb")
      importFrom("graphics", "abline", "axis", "lines", "par", "plot",
                 "plot.new", "polygon", "rect")
      importFrom("stats", "dist", "hclust")
    to your NAMESPACE file.
    ```

# diffloop

Version: 1.4.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# diffobj

Version: 0.1.6

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run.R’ failed.
    Last 13 lines of output:
      ⠸ |  4       | warnings
      ⠼ |  5       | warnings
      ⠴ |  6       | warnings
      ⠦ |  7       | warnings
      ✔ |  7       | warnings [0.3 s]
      
      ═ Results ══════════════════════════════════════════════════════════════════════
      OK:       425
      Failed:   2
      Warnings: 0
      Skipped:  2
      Error in eval(substitute(expr), data, enclos = parent.frame()) : 
        Errors: 2 Failures: 0
      Calls: local ... eval -> eval -> with -> with.default -> eval -> eval
      Execution halted
    ```

# diffusr

Version: 0.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        libs  10.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# dils

Version: 0.8.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      ‘Rcpp’ ‘igraph’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    RssSuggestedNetwork: no visible global function definition for ‘vcount’
    RssSuggestedNetwork: no visible global function definition for
      ‘graph.adjacency’
    RssSuggestedNetwork: no visible global function definition for
      ‘graph.density’
    ScalablePCA: no visible global function definition for ‘txtProgressBar’
    ScalablePCA: no visible global function definition for ‘prcomp’
    ScalablePCA: no visible binding for global variable ‘sd’
    ScalablePCA: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      E V V<- betweenness delete.edges ecount get.adjacency graph.adjacency
      graph.density is is.directed prcomp read.delim sd setTxtProgressBar
      txtProgressBar vcount
    Consider adding
      importFrom("methods", "is")
      importFrom("stats", "prcomp", "sd")
      importFrom("utils", "read.delim", "setTxtProgressBar",
                 "txtProgressBar")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# discgolf

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 6 SKIPPED: 0 FAILED: 17
      1. Error: badges works as expected (@test-badges.R#6) 
      2. Error: badges_user works as expected (@test-badges.R#23) 
      3. Failure: badges_user fails well with no input (@test-badges.R#41) 
      4. Failure: fails well with non-existent user (@test-badges.R#53) 
      5. Error: categories works as expected (@test-categories.R#6) 
      6. Error: category works as expected (@test-categories.R#20) 
      7. Error: category_latest_topics works as expected (@test-categories.R#34) 
      8. Failure: fails well with no input (@test-categories.R#48) 
      9. Failure: fails well with no input (@test-categories.R#50) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# discretecdAlgorithm

Version: 0.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   9.4Mb
    ```

# DLMtool

Version: 4.4.1

## In both

*   checking whether package ‘DLMtool’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/DLMtool/new/DLMtool.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

# DMRScan

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   4.9Mb
    ```

# DNAshapeR

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        extdata   1.8Mb
        libs      3.6Mb
    ```

# document

Version: 2.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library("document")
      > test_check("document")
      1. Error: (unknown) (@test_basic.R#13) -----------------------------------------
      R CMD check failed, read the above log and fix.
      1: document(file_name, check_package = TRUE, runit = TRUE) at testthat/test_basic.R:13
      2: check_package(package_directory = package_directory, working_directory = working_directory, 
             check_as_cran = check_as_cran, debug = debug, stop_on_check_not_passing = stop_on_check_not_passing)
      3: throw("R CMD check failed, read the above log and fix.")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_basic.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# docuSignr

Version: 0.0.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 15
      1. Failure: Environmental vars exist (@test-1-login.R#5) 
      2. Failure: Environmental vars exist (@test-1-login.R#6) 
      3. Failure: Environmental vars exist (@test-1-login.R#7) 
      4. Error: Login works doesn't error (@test-1-login.R#12) 
      5. Error: An actual account is returned (@test-1-login.R#17) 
      6. Error: Retrieve envelope without error for signing (@test-2-signing.R#5) 
      7. Error: envelopId is returned (@test-2-signing.R#24) 
      8. Error: Embed doesn't error (@test-2-signing.R#29) 
      9. Error: URL is legit (@test-2-signing.R#41) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dodgr

Version: 0.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        doc    3.6Mb
        libs   5.5Mb
    ```

# domino

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        -  Login failed
      1: domino.login(Sys.getenv("TESTUSER"), Sys.getenv("TESTUSERPASS"), FALSE, "https://app.dominodatalab.com") at testthat/test-login.R:5
      2: domino.runCommand(loginCommand, domino.OK, "Login failed", theinput)
      3: domino.runCommandFromDefaultPath(commandAndArgs, successCallback, failureMessage, 
             stdInput)
      4: domino.handleCommandNotFound(failureMessage)
      5: stop(paste("Couldn't find domino client in the PATH or in default locations.\n  Add domino client directory path to PATH environment variable.\n  If you don't have domino client installed follow instructions on 'http://help.dominodatalab.com/client'.\n  If you use R-Studio Domino on GNU/Linux through a desktop launcher, add domino path to the .desktop file.\n\n  If you need more help, email support@dominodatalab.com or visit http://help.dominodatalab.com/troubleshooting\n\n  - ", 
             failureMessage), call. = FALSE)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: The login command works (@test-login.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# DOSE

Version: 3.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   3.0Mb
        doc    2.5Mb
    ```

# dostats

Version: 1.3.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    dostats: no visible binding for global variable ‘na.fail’
    first: no visible global function definition for ‘head’
    last: no visible global function definition for ‘tail’
    pval.default: no visible global function definition for ‘.hasSlot’
    pval.lm: no visible global function definition for ‘anova’
    Undefined global functions or variables:
      .hasSlot anova head na.fail tail
    Consider adding
      importFrom("methods", ".hasSlot")
      importFrom("stats", "anova", "na.fail")
      importFrom("utils", "head", "tail")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# dotCall64

Version: 0.9-04

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run-all.R’ failed.
    Last 13 lines of output:
      1. Error: pass-long-int64_t (@test-long_int64.R#7) -----------------------------
      cannot allocate vector of size 16.0 Gb
      1: expect_identical(.C64("BENCHMARK", SIGNATURE = "int64", a = a, INTENT = "rw", NAOK = TRUE, 
             VERBOSE = 1, PACKAGE = "dotCall64")$a, a) at testthat/test-long_int64.R:7
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      4: .C64("BENCHMARK", SIGNATURE = "int64", a = a, INTENT = "rw", NAOK = TRUE, VERBOSE = 1, 
             PACKAGE = "dotCall64")
      
      testthat results ================================================================
      OK: 145 SKIPPED: 0 FAILED: 1
      1. Error: pass-long-int64_t (@test-long_int64.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# dplyr

Version: 0.7.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 33.0Mb
      sub-directories of 1Mb or more:
        libs  31.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# drake

Version: 4.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      25: value[[3L]](cond)
      26: register_expectation(e)
      27: get_reporter()$add_result(context = get_reporter()$.context, test = test, result = e)
      28: o_apply(self$reporters, "add_result", context = context, test = test, result = result)
      29: lapply(objects, function(x) x[[method]](...))
      30: FUN(X[[i]], ...)
      31: x[[method]](...)
      
      local_parL_2: testthat results ================================================================
      OK: 698 SKIPPED: 2 FAILED: 2
      1. Error: evaluate, expand, and gather (@test-generate.R#66) 
      2. Error: test_scenarios() (@test-testing.R#73) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# drtmle

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      ...
    drtmle: TMLE with doubly robust inference
    Version: 1.0.0
    Loading required package: nnls
    Super Learner
    Version: 2.0-22
    Package created on 2017-07-18
    
    Loading required package: nloptr
    Loading required package: quadprog
    Loading required package: gam
    Loading required package: splines
    Loading required package: foreach
    Loaded gam 1.14-4
    
    Loading required package: iterators
    Loading required package: parallel
    Quitting from lines 408-420 (using_drtmle.Rmd) 
    Error: processing vignette 'using_drtmle.Rmd' failed with diagnostics:
    there is no package called 'snow'
    Execution halted
    ```

# DSsim

Version: 1.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘shapefiles’
      All declared Imports should be used.
    ```

# dtwclust

Version: 4.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 1927 SKIPPED: 4 FAILED: 15
      1. Failure: Errors in centroid argument are correctly detected by dtwclust. 
      2. Failure: Errors in centroid argument are correctly detected by dtwclust. 
      3. Failure: Errors in centroid argument are correctly detected by tsclust. 
      4. Failure: Errors in centroid argument are correctly detected by tsclust. 
      5. Error: Pairwise proxy distances give the same result as references 
      6. Error: Included (valid) distances can accept multivariate series. 
      7. Error: Pairwise proxy distances give the same result as references 
      8. Error: Distance matrices calculated with families give the same results as references. 
      9. Error: Centroids calculated with families give the same results as references. 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        doc    1.9Mb
        libs   7.2Mb
    ```

# dwapi

Version: 0.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 48 SKIPPED: 0 FAILED: 13
      1. Error: get_table_as_dataframe making the correct HTTR request (@test_download_table_as_data_frame.R#22) 
      2. Error: getDataset making the correct HTTR request (@test_get_dataset.R#20) 
      3. Error: get_table_schema making the correct HTTR request (@test_get_table_schema.R#20) 
      4. Error: list_tables making the correct HTTR request (@test_list_tables.R#20) 
      5. Error: replaceDataset making the correct HTTR request (@test_replace_dataset.R#23) 
      6. Error: SPARQL query making the correct HTTR request (@test_sparql.R#30) 
      7. Error: SQL query making the correct HTTR request (@test_sql.R#24) 
      8. Error: sync making the correct HTTR request (@test_sync_dataset.R#20) 
      9. Error: update_dataset making the correct HTTR request (@test_update_dataset.R#22) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

# dygraphs

Version: 1.1.1.4

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘rmarkdown’ ‘shiny’
    ```

# DYM

Version: 0.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘stringdist’
    ```

# dynamichazard

Version: 0.4.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                 quo_splice(node_cdr(x), warn = warn)
             }
         }, pairlist = {
             while (!is_null(x)) {
                 quo_splice(node_car(x), x, warn = warn)
                 x <- node_cdr(x)
             }
         })
      9: expr_type_of(.x)
      10: typeof(x)
      11: duplicate(quo)
      
      ═ DONE ═════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    a_0 not supplied. One iteration IWLS of static glm model is used
    Did not succed to fit the model wit a learning rate of 1. The learning rate was decrease by a factor 0.9 to yield a fit
    a_0 not supplied. One iteration IWLS of static glm model is used
    a_0 not supplied. One iteration IWLS of static glm model is used
    a_0 not supplied. One iteration IWLS of static glm model is used
    a_0 not supplied. One iteration IWLS of static glm model is used
    ! LaTeX Error: File `algorithm.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.131 \usepackage
    
    pandoc: Error producing PDF
    Error: processing vignette 'ddhazard.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.8Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs  17.9Mb
    ```

# dynetNLAResistance

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘graphics’
      All declared Imports should be used.
    ```

# dynr

Version: 0.1.11-8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        models   4.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# EAinference

Version: 0.2.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Expected class: missing
      Actual class:   simpleError/error/condition
      
      2. Failure: cv.lasso (@test-cvlasso.R#82) --------------------------------------
      `lassoFit(X = X, Y = Y, type = "lasso", lbd = "cv")` threw an error with unexpected class.
      Expected class: invalid
      Actual class:   simpleError/error/condition
      
      testthat results ================================================================
      OK: 100 SKIPPED: 0 FAILED: 2
      1. Failure: cv.lasso (@test-cvlasso.R#80) 
      2. Failure: cv.lasso (@test-cvlasso.R#82) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# easyml

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘corrplot’ ‘scorer’
      All declared Imports should be used.
    ```

# EBSeq

Version: 1.16.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    PolyFitPlot: no visible global function definition for ‘lm’
    PolyFitPlot: no visible global function definition for ‘smoothScatter’
    PolyFitPlot: no visible global function definition for ‘axis’
    PolyFitPlot: no visible global function definition for ‘lines’
    QQP: no visible global function definition for ‘rbeta’
    QQP: no visible global function definition for ‘qqplot’
    QQP: no visible global function definition for ‘lm’
    QQP: no visible global function definition for ‘abline’
    QuantileNorm : <anonymous>: no visible global function definition for
      ‘quantile’
    beta.mom: no visible global function definition for ‘var’
    Undefined global functions or variables:
      abline axis dbeta heatmap hist legend lines lm median optim par plot
      qqplot quantile rainbow rbeta rect smoothScatter var
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "axis", "hist", "legend", "lines",
                 "par", "plot", "rect", "smoothScatter")
      importFrom("stats", "dbeta", "heatmap", "lm", "median", "optim",
                 "qqplot", "quantile", "rbeta", "var")
    to your NAMESPACE file.
    ```

# ecoengine

Version: 1.11.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# EcoSimR

Version: 0.1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    summary.sizenullmod: no visible global function definition for
      ‘quantile’
    summary.sizenullmod: no visible global function definition for ‘sd’
    v_ratio: no visible global function definition for ‘rbinom’
    v_ratio: no visible global function definition for ‘var’
    v_ratio: no visible binding for global variable ‘var’
    var_diff: no visible global function definition for ‘runif’
    var_diff: no visible global function definition for ‘var’
    var_ratio: no visible global function definition for ‘runif’
    var_ratio: no visible global function definition for ‘var’
    Undefined global functions or variables:
      abline barplot combn hist lines lowess mtext par plot points quantile
      rbeta rbinom rect rgamma rnorm rpois runif sd setTxtProgressBar text
      txtProgressBar var
    Consider adding
      importFrom("graphics", "abline", "barplot", "hist", "lines", "mtext",
                 "par", "plot", "points", "rect", "text")
      importFrom("stats", "lowess", "quantile", "rbeta", "rbinom", "rgamma",
                 "rnorm", "rpois", "runif", "sd", "var")
      importFrom("utils", "combn", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# edge

Version: 2.8.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    fitFDist: no visible global function definition for ‘median’
    fitFDist: no visible global function definition for ‘lm.fit’
    fitFDist: no visible global function definition for ‘predict’
    fit_wmodels: no visible global function definition for ‘model.matrix’
    fit_wmodels: no visible global function definition for ‘lm.wfit’
    null: no visible global function definition for ‘model.matrix’
    apply_sva,deSet: no visible global function definition for ‘as.formula’
    apply_sva,deSet: no visible global function definition for ‘terms’
    fit_models,deSet: no visible global function definition for
      ‘model.matrix’
    fullModel<-,deSet: no visible global function definition for
      ‘model.matrix’
    lrt,deSet-deFit: no visible global function definition for ‘pf’
    nullModel<-,deSet: no visible global function definition for
      ‘model.matrix’
    Undefined global functions or variables:
      as.formula lm.fit lm.wfit median model.matrix pf predict terms
    Consider adding
      importFrom("stats", "as.formula", "lm.fit", "lm.wfit", "median",
                 "model.matrix", "pf", "predict", "terms")
    to your NAMESPACE file.
    ```

# edpclient

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 56 SKIPPED: 1 FAILED: 16
      1. Failure: source lints (@test_lint.R#7) 
      2. Error: populations can be listed (@test_population.R#3) 
      3. Error: population object utilities work (@test_population.R#12) 
      4. Error: population model object utilities work (@test_population.R#22) 
      5. Error: population models on a population can be listed (@test_population.R#35) 
      6. Error: we can find the latest population model (@test_population.R#43) 
      7. Error: basic edp_session operations work (@test_session.R#3) 
      8. Error: we can work with population models (@test_session.R#11) 
      9. Error: we can select from yaxcatpeople (@test_session.R#24) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# eechidna

Version: 1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   4.9Mb
        doc    1.2Mb
    ```

# eeptools

Version: 1.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Quitting from lines 172-181 (intro.Rmd) 
    Error: processing vignette 'intro.Rmd' failed with diagnostics:
    Package `maps` required for `map_data`.
    Please install and try again.
    Execution halted
    ```

# EGAD

Version: 1.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 42.3Mb
      sub-directories of 1Mb or more:
        data  41.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘affy’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_distribution: no visible global function definition for ‘lines’
    plot_distribution: no visible global function definition for ‘abline’
    plot_prc: no visible global function definition for ‘plot’
    plot_prc: no visible global function definition for ‘abline’
    plot_roc: no visible global function definition for ‘plot’
    plot_roc_overlay: no visible global function definition for ‘axis’
    plot_roc_overlay: no visible global function definition for ‘lines’
    plot_value_compare: no visible global function definition for ‘plot’
    plot_value_compare: no visible global function definition for ‘abline’
    Undefined global functions or variables:
      abline aggregate axis boxplot col2rgb convolve cor density
      download.file hist lines median plot points polygon read.table rgb
      unzip
    Consider adding
      importFrom("grDevices", "col2rgb", "rgb")
      importFrom("graphics", "abline", "axis", "boxplot", "hist", "lines",
                 "plot", "points", "polygon")
      importFrom("stats", "aggregate", "convolve", "cor", "density",
                 "median")
      importFrom("utils", "download.file", "read.table", "unzip")
    to your NAMESPACE file.
    ```

# eggCounts

Version: 1.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 42.1Mb
      sub-directories of 1Mb or more:
        libs  41.8Mb
    ```

# EGSEA

Version: 1.4.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    buildGeneSetDBIdx: no visible binding for global variable ‘GOTERM’
    buildMSigDBIdx: no visible binding for global variable ‘msigdb’
    generateSummaryPlots: no visible binding for global variable ‘x.data’
    generateSummaryPlots: no visible binding for global variable ‘y.data’
    generateSummaryPlots: no visible binding for global variable ‘gsSize’
    generateSummaryPlots: no visible binding for global variable ‘id’
    generateSummaryPlots: no visible binding for global variable ‘sig’
    loadKeggData: no visible binding for global variable ‘kegg.pathways’
    plotBars,EGSEAResults: no visible global function definition for
      ‘abline’
    Undefined global functions or variables:
      GOTERM abline gsSize id kegg.pathways msigdb sig x.data y.data
    Consider adding
      importFrom("graphics", "abline")
    to your NAMESPACE file.
    ```

# ElastH

Version: 0.3.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 238 marked Latin-1 strings
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Warning in grepl("(Rerun to get|biblatex.*\\(re\\)run)", readLines(log,  :
      input string 795 is invalid in this locale
    Warning in grepl("(Rerun to get|biblatex.*\\(re\\)run)", readLines(log,  :
      input string 813 is invalid in this locale
    Warning in grepl("(Rerun to get|biblatex.*\\(re\\)run)", readLines(log,  :
      input string 814 is invalid in this locale
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ElastH.tex' failed.
    LaTeX errors:
    ! Package babel Error: Unknown option `brazil'. Either you misspelled it
    (babel)                or the language definition file brazil.ldf was not found
    .
    
    See the babel package documentation for explanation.
    ! Package babel Error: You haven't specified a language option.
    
    See the babel package documentation for explanation.
    Type  H <return>  for immediate help.
     ...                                              
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# elasticsearchr

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 25 SKIPPED: 0 FAILED: 16
      1. Error: %index% correctly indexes a large (>10mb single chunk) data frame (@test-api.R#172) 
      2. Error: %create% can create an index with a custom mapping (@test-api.R#199) 
      3. Error: %delete% can delete all documents from an index (@test-api.R#218) 
      4. Error: %delete% can delete all documents from a type (@test-api.R#238) 
      5. Error: %delete% can delete selected documents from a type (@test-api.R#261) 
      6. Error: we can query using the %search% operator and return all documents (@test-api.R#286) 
      7. Error: we can query using the %search% operator on a subset of all documents (@test-api.R#308) 
      8. Error: we can aggregate using the %search% operator (@test-api.R#331) 
      9. Error: we can query + sort using the %search% operator (@test-api.R#353) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# elementR

Version: 1.3.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘elementR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: elementR_project
    > ### Title: Object elementR_project
    > ### Aliases: elementR_project
    > 
    > ### ** Examples
    > 
    > ## create a new elementR_repStandard object based on the "filePath" 
    > ## from a folder containing sample replicate
    > 
    > filePath <- system.file("Example_Session", package="elementR")
    > 
    > exampleProject <- elementR_project$new(filePath)
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "toplevel".
    Calls: <Anonymous> ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking whether package ‘elementR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/elementR/new/elementR.Rcheck/00install.out’ for details.
    ```

# elevatr

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: gzfile(file, "rb")
      
      3. Error: proj_expand works (@test-internal.R#22) ------------------------------
      cannot open the connection
      1: readRDS("key_file.rds") at testthat/test-internal.R:22
      2: gzfile(file, "rb")
      
      testthat results ================================================================
      OK: 11 SKIPPED: 0 FAILED: 3
      1. Error: get_elev_point returns correctly (@test-get_elev_point.R#15) 
      2. Error: get_elev_raster returns correctly (@test-get_elev_raster.R#14) 
      3. Error: proj_expand works (@test-internal.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 37-39 (introduction_to_elevatr.Rmd) 
    Error: processing vignette 'introduction_to_elevatr.Rmd' failed with diagnostics:
    cannot open the connection
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘prettyunits’ ‘ratelimitr’ ‘rgdal’
      All declared Imports should be used.
    ```

# emdbook

Version: 1.3.9

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘mvtnorm’
    ```

# emdi

Version: 1.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘FNN’ ‘ggmap’ ‘simFrame’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2098 marked UTF-8 strings
    ```

# emil

Version: 2.2.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# EML

Version: 1.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        R     1.0Mb
        xsd   5.4Mb
    ```

# EmpiricalBrownsMethod

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    calculateCovariances: no visible global function definition for ‘cov’
    calculateKostCovariance: no visible global function definition for
      ‘cor.test’
    combinePValues: no visible global function definition for ‘pchisq’
    pop.var: no visible global function definition for ‘var’
    transformData: no visible global function definition for ‘ecdf’
    Undefined global functions or variables:
      cor.test cov ecdf pchisq var
    Consider adding
      importFrom("stats", "cor.test", "cov", "ecdf", "pchisq", "var")
    to your NAMESPACE file.
    ```

# enigma

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: stop("need an API key for the Enigma API")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 8
      1. Error: enigma_data column selection works correctly (@test-enigma_data.R#8) 
      2. Error: enigma_data works correctly for sorting data (@test-enigma_data.R#20) 
      3. Error: enigma_data works correctly to get data subset (@test-enigma_data.R#33) 
      4. Error: enigma_metadata basic functionality works (@test-enigma_metadata.R#10) 
      5. Error: enigma_metadata parent node data differs from child node data (@test-enigma_metadata.R#21) 
      6. Error: enigma_stats works correctly with varchar column (@test-enigma_stats.R#9) 
      7. Error: enigma_stats works correctly with numeric column (@test-enigma_stats.R#20) 
      8. Error: enigma_stats works correctly with date column (@test-enigma_stats.R#32) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# EnrichedHeatmap

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc       2.5Mb
        extdata   2.5Mb
    ```

# ensembldb

Version: 2.0.4

## In both

*   checking examples ... ERROR
    ```
    ...
    > ## List /real/ database column names.
    > listColumns(edb)
     [1] "seq_name"              "seq_length"            "is_circular"          
     [4] "exon_id"               "exon_seq_start"        "exon_seq_end"         
     [7] "gene_id"               "gene_name"             "entrezid"             
    [10] "gene_biotype"          "gene_seq_start"        "gene_seq_end"         
    [13] "seq_strand"            "seq_coord_system"      "symbol"               
    [16] "name"                  "value"                 "tx_id"                
    [19] "protein_id"            "protein_sequence"      "protein_domain_id"    
    [22] "protein_domain_source" "interpro_accession"    "prot_dom_start"       
    [25] "prot_dom_end"          "tx_biotype"            "tx_seq_start"         
    [28] "tx_seq_end"            "tx_cds_seq_start"      "tx_cds_seq_end"       
    [31] "tx_name"               "exon_idx"              "uniprot_id"           
    [34] "uniprot_db"            "uniprot_mapping_type" 
    > 
    > ## Retrieve all keys corresponding to transcript ids.
    > txids <- keys(edb, keytype = "TXID")
    Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: keys ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      OK: 480 SKIPPED: 1 FAILED: 75
      1. Error: ensDbQuery works (@test_Methods-Filter.R#143) 
      2. Error: ensDbQuery works for AnnotationFilterList (@test_Methods-Filter.R#209) 
      3. Error: ensDbColumn works with AnnotationFilterList (@test_Methods-Filter.R#381) 
      4. Error: returnFilterColumns works with_genes (@test_Methods-with-returnFilterColumns.R#20) 
      5. Error: returnFilterColumns works with_tx (@test_Methods-with-returnFilterColumns.R#58) 
      6. Error: returnFilterColumns works with exons (@test_Methods-with-returnFilterColumns.R#92) 
      7. Error: returnFilterColumns works with exonsBy (@test_Methods-with-returnFilterColumns.R#127) 
      8. Error: returnFilterColumns works with transcriptsBy (@test_Methods-with-returnFilterColumns.R#182) 
      9. Error: returnFilterColumns works with_cdsBy (@test_Methods-with-returnFilterColumns.R#213) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: There were 17 warnings (use warnings() to see them)
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Loading required package: GenomicFeatures
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: AnnotationFilter
    Quitting from lines 181-183 (ensembldb.Rmd) 
    Error: processing vignette 'ensembldb.Rmd' failed with diagnostics:
    invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘RMySQL’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   3.6Mb
    ```

# entropart

Version: 1.4-7

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘SPECIES’
    ```

# epicontacts

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 144 SKIPPED: 1 FAILED: 14
      1. Failure: graph3D produces json that is not null (@test_graph3D.R#12) 
      2. Failure: graph3D errors as expected on bad annotation and group specification (@test_graph3D.R#38) 
      3. Failure: graph3D errors as expected on bad annotation and group specification (@test_graph3D.R#41) 
      4. Failure: graph3D errors as expected on bad annotation and group specification (@test_graph3D.R#44) 
      5. Failure: graph3D errors as expected on bad annotation and group specification (@test_graph3D.R#47) 
      6. Failure: graph3D object includes annotation (@test_graph3D.R#61) 
      7. Failure: Printing objects works (@test_print.epicontacts.R#11) 
      8. Failure: Plotting groups as color (@test_vis_epicontacts.R#24) 
      9. Failure: Plotting groups as color (@test_vis_epicontacts.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘colorspace’
      All declared Imports should be used.
    ```

# epivizr

Version: 2.6.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘minfi’
    ```

# epivizrData

Version: 1.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      10: is(x, "formula")
      11: AnnotationFilterList()
      12: .AnnotationFilterList(filters, logOp = logOp)
      13: new(structure("AnnotationFilterList", package = "AnnotationFilter"), ...)
      14: initialize(value, ...)
      15: initialize(value, ...)
      16: validObject(.Object)
      17: stop(msg, ": ", errors, domain = NA)
      
      testthat results ================================================================
      OK: 109 SKIPPED: 0 FAILED: 1
      1. Error: register works for an EnsDb object (@test-register.R#134) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# eulerr

Version: 2.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘qualpalr’
    ```

# evaluator

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggalt’ ‘pander’ ‘psych’
      All declared Imports should be used.
    Missing or unexported object: ‘purrr::by_row’
    ```

# EventStudy

Version: 0.34

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘openxlsx’ ‘stringr’
      All declared Imports should be used.
    ```

# evolqg

Version: 0.2-5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# excerptr

Version: 1.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rPython’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# excursions

Version: 2.2.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

# exifr

Version: 0.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        exiftool  12.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# exprso

Version: 0.1.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘affy’
      All declared Imports should be used.
    ```

# expss

Version: 0.8.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      dplyr not found
      Set default dataset to 'def'
      Set default dataset to 'dfs'
      Default dataset disabled.
      dplyr not found
      dplyr not found
      dplyr not found
      Set default dataset to 'd_iris'
      testthat results ========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
      OK: 2548 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_if_val.R#715) 
      
      Error: testthat unit tests failed
      In addition: There were 11 warnings (use warnings() to see them)
      Execution halted
    ```

# extraDistr

Version: 1.8.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.6Mb
      sub-directories of 1Mb or more:
        libs  20.2Mb
    ```

# extraTrees

Version: 1.0.5

## In both

*   checking R code for possible problems ... NOTE
    ```
    toJavaMatrix2D: no visible global function definition for ‘is’
    Undefined global functions or variables:
      is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# eyetrackingR

Version: 0.1.6

## In both

*   checking examples ... ERROR
    ```
    ...
    +                                time_column = "TimeFromTrialOnset",
    +                                trackloss_column = "TrackLoss",
    +                                aoi_columns = c('Animate','Inanimate'),
    +                                treat_non_aoi_looks_as_missing = TRUE )
    `mutate_each()` is deprecated.
    Use `mutate_all()`, `mutate_at()` or `mutate_if()` instead.
    To map `funs` over a selection of variables, use `mutate_at()`
    > response_window <- subset_by_window(data, window_start_time = 15500, window_end_time = 21000, 
    +                                     rezero = FALSE)
    Avg. window length in new data will be 5500
    > response_time <- make_time_sequence_data(response_window, time_bin_size = 500, aois = "Animate", 
    +                                          predictor_columns = "Sex")
    > 
    > time_cluster_data <- make_time_cluster_data(data = response_time, predictor_column = "SexM", 
    +                          aoi = "Animate", test = "lmer", 
    +                          threshold = 1.5, 
    +                          formula = LogitAdjusted ~ Sex + (1|Trial) + (1|ParticipantName))
    Error in UseMethod("analyze_time_bins") : 
      no applicable method for 'analyze_time_bins' applied to an object of class "data.frame"
    Calls: make_time_cluster_data ... make_time_cluster_data.time_sequence_data -> do.call -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Predictor:	 Target 
      Formula:	 Prop ~ Target 
      Runs of Significant Time Bins: 
      Positive Run 1  ===== 
      	Time:		 15900 - 21000 1. Error: (unknown) (@test_cluster_analysis.R#143) -----------------------------
      no applicable method for 'make_time_cluster_data' applied to an object of class "data.frame"
      1: make_time_cluster_data(response_time_by_ppt, predictor_column = "Sex", test = "boot_splines", 
             within_subj = FALSE, smoother = "smooth.spline", alpha = 0.05) at testthat/test_cluster_analysis.R:143
      
      testthat results ================================================================
      OK: 42 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_cluster_analysis.R#143) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ezknitr

Version: 0.6

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch http://ropensci.org/public_images/github_footer.png
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "ropensci.org" 80
    Error: processing vignette 'ezknitr.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# fanovaGraph

Version: 1.4.8

## In both

*   checking whether package ‘fanovaGraph’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/fanovaGraph/new/fanovaGraph.Rcheck/00install.out’ for details.
    ```

# fauxpas

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘whisker’
      All declared Imports should be used.
    ```

# fdapace

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 46.9Mb
      sub-directories of 1Mb or more:
        libs  46.1Mb
    ```

# ffstream

Version: 0.1.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        libs   9.2Mb
    ```

# Fgmutils

Version: 0.9.4

## In both

*   checking whether package ‘Fgmutils’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/Fgmutils/new/Fgmutils.Rcheck/00install.out’ for details.
    ```

# fgsea

Version: 1.2.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    gmtPathways: no visible binding for global variable ‘head’
    Undefined global functions or variables:
      head
    Consider adding
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

# fiery

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      8: private$run_blocking_server(showcase = showcase)
      9: startServer(self$host, self$port, list(call = private$request_logic, onHeaders = private$header_logic, 
             onWSOpen = private$websocket_logic))
      10: stop("Failed to create server")
      
      testthat results ================================================================
      OK: 207 SKIPPED: 0 FAILED: 5
      1. Error: life cycle events get fired (@test-Fire.R#168) 
      2. Error: futures can be added and called (@test-Fire.R#302) 
      3. Error: ignite is blocked during run (@test-Fire.R#387) 
      4. Error: external triggers are fired (@test-Fire.R#404) 
      5. Error: showcase opens a browser (@test-Fire.R#429) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# filenamer

Version: 0.2.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘io’
    ```

# FinancialInstrument

Version: 1.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘its’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘XML’ ‘foreach’ ‘its’ ‘timeSeries’ ‘utils’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘read.csv’
    update_instruments.iShares: no visible global function definition for
      ‘read.delim’
    update_instruments.masterDATA: no visible global function definition
      for ‘read.csv’
    update_instruments.md: no visible global function definition for
      ‘read.csv’
    update_instruments.yahoo: no visible global function definition for
      ‘hasArg’
    update_instruments.yahoo: no visible global function definition for
      ‘na.omit’
    Undefined global functions or variables:
      as.ts download.file end hasArg na.omit read.csv read.delim start str
      tail write.csv
    Consider adding
      importFrom("methods", "hasArg")
      importFrom("stats", "as.ts", "end", "na.omit", "start")
      importFrom("utils", "download.file", "read.csv", "read.delim", "str",
                 "tail", "write.csv")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# finch

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      `aa$data` inherits from `character` not `list`.
      
      2. Failure: dwca_get - works with a url - read=FALSE (@test-dwca_get.R#49) -----
      Names of `aa$data` ('') don't match 'core', 'extension'
      
      trying URL 'http://ipt.jbrj.gov.br/jbrj/archive.do?r=redlist_2013_taxons&v=3.12'
      downloaded 105 KB
      
      testthat results ================================================================
      OK: 50 SKIPPED: 0 FAILED: 2
      1. Failure: dwca_get - works with a url - read=FALSE (@test-dwca_get.R#48) 
      2. Failure: dwca_get - works with a url - read=FALSE (@test-dwca_get.R#49) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# FindMyFriends

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        extdata   1.8Mb
        libs      5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘gtable:::insert.unit’ ‘gtable:::z_arrange_gtables’
      See the note in ?`:::` about the use of this operator.
    ```

# flexsurv

Version: 1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ActuDistns’
    ```

# flextable

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: pmap_chr(x, function(image_src, width, height) {
             format(external_img(src = image_src, width = width, height = height), type = type)
         })
      7: .f(image_src = .l[[c(1L, i)]], width = .l[[c(2L, i)]], height = .l[[c(3L, i)]], ...)
      8: format(external_img(src = image_src, width = width, height = height), type = type)
      9: external_img(src = image_src, width = width, height = height)
      10: stopifnot(file.exists(src))
      11: stop(msg, call. = FALSE, domain = NA)
      
      testthat results ================================================================
      OK: 67 SKIPPED: 0 FAILED: 1
      1. Error: images (@test-images.R#44) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: officer
    Quitting from lines 323-336 (format.Rmd) 
    Error: processing vignette 'format.Rmd' failed with diagnostics:
    file.exists(src) is not TRUE
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# FLightR

Version: 0.4.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# flowClust

Version: 3.14.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        libs   7.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RBGL’ ‘ellipse’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘flowViz:::fplot’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘image’
    plot,flowFrame-tmixFilterResult: no visible global function definition
      for ‘hist’
    ruleOutliers<-,flowClust-list: no visible global function definition
      for ‘qf’
    ruleOutliers<-,flowClust-list: no visible global function definition
      for ‘qchisq’
    Undefined global functions or variables:
      abline cm.colors contour cov cov.shrink curve dist ellipse gray
      heat.colors hist image kmeans lines mahalanobis na.omit optim
      optimize points qchisq qf qnorm quantile rainbow stripchart
      terrain.colors title topo.colors var
    Consider adding
      importFrom("grDevices", "cm.colors", "gray", "heat.colors", "rainbow",
                 "terrain.colors", "topo.colors")
      importFrom("graphics", "abline", "contour", "curve", "hist", "image",
                 "lines", "points", "stripchart", "title")
      importFrom("stats", "cov", "dist", "kmeans", "mahalanobis", "na.omit",
                 "optim", "optimize", "qchisq", "qf", "qnorm", "quantile",
                 "var")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowCore

Version: 1.42.3

## In both

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
      Code: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, truncate_max_range =
                     TRUE, emptyValue = TRUE, ignore.text.offset = FALSE,
                     ...)
      Docs: function(files = NULL, path = ".", pattern = NULL, phenoData,
                     descriptions, name.keyword, alter.names = FALSE,
                     transformation = "linearize", which.lines = NULL,
                     column.pattern = NULL, invert.pattern = FALSE, decades
                     = 0, sep = "\t", as.is = TRUE, name, ncdf = FALSE,
                     dataset = NULL, min.limit = NULL, emptyValue = TRUE,
                     ignore.text.offset = FALSE, ...)
      Argument names in code not in docs:
        truncate_max_range
      Mismatches in argument names:
        Position: 19 Code: truncate_max_range Docs: emptyValue
        Position: 20 Code: emptyValue Docs: ignore.text.offset
        Position: 21 Code: ignore.text.offset Docs: ...
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'read.flowSet':
      ‘truncate_max_range’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking if this is a source package ... NOTE
    ```
    Found the following apparent object files/libraries:
      src/boost_regex/c_regex_traits.o src/boost_regex/cpp_regex_traits.o
      src/boost_regex/cregex.o src/boost_regex/fileiter.o
      src/boost_regex/icu.o src/boost_regex/instances.o
      src/boost_regex/posix_api.o src/boost_regex/regex.o
      src/boost_regex/regex_debug.o src/boost_regex/regex_raw_buffer.o
      src/boost_regex/regex_traits_defaults.o
      src/boost_regex/static_mutex.o src/boost_regex/usinstances.o
      src/boost_regex/w32_regex_traits.o src/boost_regex/wc_regex_traits.o
      src/boost_regex/wide_posix_api.o src/boost_regex/winstances.o
    Object files/libraries should not be included in a source package.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 34.2Mb
      sub-directories of 1Mb or more:
        data      5.0Mb
        extdata   1.1Mb
        lib      20.3Mb
        libs      5.6Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘Rgraphviz’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    %in%,flowFrame-norm2Filter: no visible global function definition for
      ‘cov.rob’
    spillover,flowSet: no visible global function definition for
      ‘devAskNewPage’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘rangeGate’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘density’
    spillover,flowSet : <anonymous>: no visible global function definition
      for ‘abline’
    spillover,flowSet : <anonymous> : <anonymous>: no visible global
      function definition for ‘density’
    split,flowFrame-factor: no visible binding for global variable ‘i’
    summary,workFlow: no visible binding for global variable ‘wf’
    Undefined global functions or variables:
      abline cov.rob density devAskNewPage i rangeGate wf
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "abline")
      importFrom("stats", "density")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowWorkspace

Version: 3.24.4

## In both

*   checking if this is a source package ... NOTE
    ```
    ...
      src/pb_build/src/google/protobuf/io/zero_copy_stream_impl_lite.lo
      src/pb_build/src/google/protobuf/message.lo
      src/pb_build/src/google/protobuf/message_lite.lo
      src/pb_build/src/google/protobuf/reflection_ops.lo
      src/pb_build/src/google/protobuf/repeated_field.lo
      src/pb_build/src/google/protobuf/service.lo
      src/pb_build/src/google/protobuf/stubs/atomicops_internals_x86_gcc.lo
      src/pb_build/src/google/protobuf/stubs/atomicops_internals_x86_msvc.lo
      src/pb_build/src/google/protobuf/stubs/common.lo
      src/pb_build/src/google/protobuf/stubs/once.lo
      src/pb_build/src/google/protobuf/stubs/stringprintf.lo
      src/pb_build/src/google/protobuf/stubs/structurally_valid.lo
      src/pb_build/src/google/protobuf/stubs/strutil.lo
      src/pb_build/src/google/protobuf/stubs/substitute.lo
      src/pb_build/src/google/protobuf/text_format.lo
      src/pb_build/src/google/protobuf/unknown_field_set.lo
      src/pb_build/src/google/protobuf/wire_format.lo
      src/pb_build/src/google/protobuf/wire_format_lite.lo
      src/pb_build/src/libprotobuf.la
      src/protobuf-2.6.0/src/solaris/libstdc++.la
    Object files/libraries should not be included in a source package.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      src/pb_build/src/google/protobuf/.dirstamp
      src/pb_build/src/google/protobuf/io/.dirstamp
      src/pb_build/src/google/protobuf/stubs/.dirstamp
      src/pb_build/src/.libs
      src/pb_build/src/google/protobuf/.libs
      src/pb_build/src/google/protobuf/io/.libs
      src/pb_build/src/google/protobuf/stubs/.libs
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 108.1Mb
      sub-directories of 1Mb or more:
        doc       1.1Mb
        include   2.7Mb
        lib      72.9Mb
        libs     30.6Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘RSVGTipsDevice’ ‘parallel’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespaces in Imports field not imported from:
      ‘RBGL’ ‘graphics’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘Rgraphviz:::getRenderPar’ ‘flowCore:::.estimateLogicle’
      ‘flowCore:::checkClass’ ‘flowCore:::copyFlowSet’ ‘flowCore:::guid’
      ‘flowCore:::logicle_transform’ ‘graph:::.makeEdgeKeys’
      ‘lattice:::updateList’ ‘ncdfFlow:::.isValidSamples’
      ‘stats:::.splinefun’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.load_gs’ ‘.preprocessMap’ ‘.uuid_gen’ ‘isNegated’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    rbind2,GatingSetList-missing: no visible global function definition for
      ‘new’
    rbind2,GatingSetList-missing: no visible binding for global variable
      ‘slot’
    recompute,GatingSetList: no visible global function definition for
      ‘selectMethod’
    transform,GatingSet: no visible global function definition for ‘is’
    Undefined global functions or variables:
      . .hasSlot IQR as as.formula callNextMethod decade dev.off dev.prev
      dev.set extends gray groupName is max_val median min_val new node
      offset old openCyto.count polygon rect sampleName selectMethod slot
      strheight strwidth symbols text validObject xml.count
    Consider adding
      importFrom("grDevices", "dev.off", "dev.prev", "dev.set", "gray")
      importFrom("graphics", "polygon", "rect", "strheight", "strwidth",
                 "symbols", "text")
      importFrom("methods", ".hasSlot", "as", "callNextMethod", "extends",
                 "is", "new", "selectMethod", "slot", "validObject")
      importFrom("stats", "IQR", "as.formula", "median", "offset")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flsa

Version: 1.05

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# foghorn

Version: 0.4.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      
      testthat results ================================================================
      OK: 51 SKIPPED: 1 FAILED: 8
      1. Failure: output of summary cran results (@test-foghorn.R#176) 
      2. Failure: output of summary cran results (@test-foghorn.R#178) 
      3. Failure: output of summary cran results (@test-foghorn.R#189) 
      4. Failure: output of summary cran results (@test-foghorn.R#201) 
      5. Failure: output of summary cran results (@test-foghorn.R#213) 
      6. Failure: output of summary cran results (@test-foghorn.R#226) 
      7. Failure: output of summary cran results (@test-foghorn.R#233) 
      8. Failure: output of summary cran results (@test-foghorn.R#239) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# forecast

Version: 8.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   4.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘seasonal’, ‘forecTheta’
    ```

# forestplot

Version: 1.7.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rmeta’
    ```

# freqweights

Version: 1.0.4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Hmisc’
    ```

# FRK

Version: 0.1.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    
    Package which this enhances but not available for checking: ‘dggrids’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   4.8Mb
        doc    1.6Mb
    ```

# FSA

Version: 0.8.16

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘alr3’, ‘doBy’, ‘psych’, ‘prettyR’, ‘fBasics’, ‘RMark’, ‘asbio’, ‘PMCMR’, ‘pgirmess’, ‘agricolae’, ‘DescTools’
    ```

# FSelectorRcpp

Version: 0.1.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        doc    2.2Mb
        libs   8.9Mb
    ```

# fuser

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# GA4GHclient

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 129 SKIPPED: 0 FAILED: 15
      1. Error: getVariant works (@test-getVariant.R#8) 
      2. Error: getVariant asVCF=FALSE works (@test-getVariant.R#19) 
      3. Error: getVariant multiple alt bases works (@test-getVariant.R#32) 
      4. Error: makeVCFFromGA4GHResponse works (@test-makeVCFFromGA4GHResponse.R#10) 
      5. Failure: searchCallSets works (@test-searchCallSets.R#10) 
      6. Failure: searchCallSets responseSize parameter works (@test-searchCallSets.R#28) 
      7. Error: searchReads works (@test-searchReads.R#11) 
      8. Failure: searchVariantSets works (@test-searchVariantSets.R#12) 
      9. Error: searchVariants works (@test-searchVariants.R#8) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# games

Version: 1.1.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    Undefined global functions or variables:
      .checkMFClasses .getXlevels AIC binomial bxp coef delete.response
      dlogis dnorm fitted.values formula glm.fit hasArg head lines logLik
      lsfit median menu model.frame model.matrix na.pass par pbinom plogis
      plot pnorm points predict printCoefmat quantile rlogis runif sd
      setTxtProgressBar spline tail terms txtProgressBar update var vcov
      weights
    Consider adding
      importFrom("graphics", "bxp", "lines", "par", "plot", "points")
      importFrom("methods", "hasArg")
      importFrom("stats", ".checkMFClasses", ".getXlevels", "AIC",
                 "binomial", "coef", "delete.response", "dlogis", "dnorm",
                 "fitted.values", "formula", "glm.fit", "logLik", "lsfit",
                 "median", "model.frame", "model.matrix", "na.pass",
                 "pbinom", "plogis", "pnorm", "predict", "printCoefmat",
                 "quantile", "rlogis", "runif", "sd", "spline", "terms",
                 "update", "var", "vcov", "weights")
      importFrom("utils", "head", "menu", "setTxtProgressBar", "tail",
                 "txtProgressBar")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# gamesGA

Version: 1.1.3.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grDevices’
      All declared Imports should be used.
    ```

# gapfill

Version: 0.9.5-3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘raster’ ‘doParallel’ ‘doMPI’
    ```

# GAS

Version: 0.2.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.8Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        libs  13.0Mb
    ```

# gastempt

Version: 0.4.01

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 58.6Mb
      sub-directories of 1Mb or more:
        libs  58.2Mb
    ```

# GauPro

Version: 0.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        libs   6.2Mb
    ```

# GBJ

Version: 0.5.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             5), bincorr = G_cor))) at testthat/test_omnibus.R:159
      2: eval(code, test_env)
      
      3. Error: OMNI p-value correct for summary statistics case (@test_omnibus.R#207) 
      object 'results' not found
      1: MC_OMNI_ss(num_sims = 500, cor_mat = cor_mat, obs_omni = obs_omni) at testthat/test_omnibus.R:207
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 3
      1. Error: OMNI p-value correct for logistic regression case (@test_omnibus.R#115) 
      2. Error: OMNI p-value correct for linear regression case (@test_omnibus.R#159) 
      3. Error: OMNI p-value correct for summary statistics case (@test_omnibus.R#207) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gbp

Version: 0.1.0.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.3Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  18.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# GDELTtools

Version: 1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘tools’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    DownloadGdelt: no visible global function definition for
      ‘packageVersion’
    DownloadGdelt: no visible global function definition for
      ‘download.file’
    GdeltZipToDataframe: no visible global function definition for
      ‘read.delim’
    GdeltZipToDataframe: no visible global function definition for ‘unzip’
    GetSizeOfGDELT: no visible global function definition for ‘read.delim’
    IsValidGDELT: no visible global function definition for ‘read.delim’
    IsValidGDELT: no visible global function definition for ‘md5sum’
    NormEventCounts: no visible global function definition for
      ‘download.file’
    NormEventCounts: no visible global function definition for ‘read.csv’
    Undefined global functions or variables:
      download.file md5sum packageVersion read.csv read.delim unzip
    Consider adding
      importFrom("utils", "download.file", "packageVersion", "read.csv",
                 "read.delim", "unzip")
    to your NAMESPACE file.
    ```

# GDINA

Version: 1.4.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# geex

Version: 1.0.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rootSolve’
      All declared Imports should be used.
    ```

# GEM

Version: 1.2.0

## In both

*   checking whether package ‘GEM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/GEM/new/GEM.Rcheck/00install.out’ for details.
    ```

# gender

Version: 0.5.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genderdata’
    ```

# genderizeR

Version: 2.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sortinghat’
    ```

# genepop

Version: 1.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        libs   9.0Mb
    ```

# GenoGAM

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    plot_base: no visible global function definition for ‘lines’
    plot_base: no visible global function definition for ‘abline’
    plot_base: no visible global function definition for ‘mtext’
    writeToBroadPeaks: no visible global function definition for
      ‘write.table’
    writeToNarrowPeaks: no visible global function definition for
      ‘write.table’
    xsd : <anonymous>: no visible binding for global variable ‘position’
    xsd: no visible binding for global variable ‘position’
    Undefined global functions or variables:
      abline as.formula axis coefficients dev.off dnbinom estimate fdr fit
      gene hist id lines mtext optim p.adjust par plot png pnorm position
      pval pvalue region runif write.table zscore
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "axis", "hist", "lines", "mtext",
                 "par", "plot")
      importFrom("stats", "as.formula", "coefficients", "dnbinom", "optim",
                 "p.adjust", "pnorm", "runif")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'plot.GenoGAM':
      ‘plot.GenoGAM’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# GenomicDataCommons

Version: 1.0.5

## In both

*   checking R code for possible problems ... NOTE
    ```
    default_fields.character: no visible binding for global variable
      ‘defaults’
    Undefined global functions or variables:
      defaults
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'as.data.frame.GDCResults':
      ‘as.data.frame.GDCResults’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# GenomicInteractions

Version: 1.10.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc       2.0Mb
        extdata   7.9Mb
    ```

# GenomicTuples

Version: 1.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomicRanges:::clone’ ‘GenomicRanges:::extraColumnSlotNames’
      ‘GenomicRanges:::extraColumnSlots’
      ‘GenomicRanges:::extraColumnSlotsAsDF’ ‘GenomicRanges:::showList’
      ‘S4Vectors:::VH_recycle’ ‘S4Vectors:::decodeRle’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      ‘S4Vectors:::orderBy’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    coerce<-,GTuplesList-GRangesList: no visible global function definition
      for ‘slot<-’
    coerce<-,GTuplesList-GRangesList: no visible global function definition
      for ‘slot’
    Undefined global functions or variables:
      slot slot<-
    Consider adding
      importFrom("methods", "slot", "slot<-")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘GenomicAlignments’, ‘Biostrings’
    ```

# genotypeeval

Version: 1.8.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘makeHistogram’ ‘pcaPlot’ ‘tsnePlot’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# genotypeR

Version: 0.0.1.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘colorspace’
      All declared Imports should be used.
    ```

# GenRank

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    CombP: no visible global function definition for ‘read.table’
    ComputeCE: no visible global function definition for ‘read.table’
    ComputeCE: no visible global function definition for ‘complete.cases’
    ComputeRP: no visible global function definition for ‘read.table’
    ComputeRP: no visible global function definition for ‘complete.cases’
    Undefined global functions or variables:
      complete.cases read.table
    Consider adding
      importFrom("stats", "complete.cases")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

# GenVisR

Version: 1.6.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    waterfall: warning in waterfall_align(genes = gene_plot, heatmap =
      heatmap, burden = burden_plot, clinical = clinical_plot, proportion =
      proportions_plot, section_heights = section_heights): partial
      argument match of 'proportion' to 'proportions'
    waterfall: warning in waterfall_align(genes = gene_plot, heatmap =
      heatmap, burden = burden_plot, proportion = proportions_plot,
      section_heights = section_heights): partial argument match of
      'proportion' to 'proportions'
    ```

# geofacet

Version: 0.1.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 16 SKIPPED: 1 FAILED: 1
      1. Failure: package Style (@test-zzz-lintr.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 79 marked UTF-8 strings
    ```

# geojson

Version: 0.1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘jqr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# geojsonio

Version: 0.4.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      with 1 features
      It has 1 fields
      testthat results ================================================================
      OK: 536 SKIPPED: 0 FAILED: 8
      1. Error: map_gist works with file inputs (@test-map_gist.R#8) 
      2. Error: map_gist works with geo_list inputs (@test-map_gist.R#20) 
      3. Error: map_gist works with json inputs (@test-map_gist.R#31) 
      4. Error: map_gist works with SpatialPoints inputs (@test-map_gist.R#46) 
      5. Error: map_gist works with SpatialPointsDataFrame inputs (@test-map_gist.R#61) 
      6. Error: map_gist works with SpatialPolygons inputs (@test-map_gist.R#77) 
      7. Error: map_gist works with data.frame inputs (@test-map_gist.R#88) 
      8. Error: map_gist works with data.frame inputs (@test-map_gist.R#97) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc        1.4Mb
        examples   1.5Mb
        vign       1.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘geojson’
      All declared Imports should be used.
    ```

# geojsonR

Version: 1.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc    1.3Mb
        libs   4.1Mb
    ```

# geoknife

Version: 1.5.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          url
      
      1. Failure: error on url (@test-geoknife_utils.R#15) ---------------------------
      `geoknife:::retryVERB(httr::GET("bad.url.html"))` threw an error with unexpected message.
      Expected match: "Couldn't resolve host name"
      Actual message: "Could not resolve host: bad.url.html"
      
      XPath error : Undefined namespace prefix
      XPath error : Invalid expression
      testthat results ================================================================
      OK: 181 SKIPPED: 0 FAILED: 1
      1. Failure: error on url (@test-geoknife_utils.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 360-364 (geoknife.Rmd) 
    Error: processing vignette 'geoknife.Rmd' failed with diagnostics:
    need finite 'xlim' values
    Execution halted
    ```

# geoparser

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: no problems if no results (@test_query.R#26) -------------------------
      HTTP failure: 401
      1: geoparser_q(text_input = "no placename here") at testthat/test_query.R:26
      2: lapply(text_input, total, key = key)
      3: FUN(X[[i]], ...)
      4: geoparser_check(temp)
      5: stop("HTTP failure: ", status, call. = FALSE)
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 2
      1. Error: query returns a list of data.frames (@test_query.R#4) 
      2. Error: no problems if no results (@test_query.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 34-37 (geoparser.Rmd) 
    Error: processing vignette 'geoparser.Rmd' failed with diagnostics:
    HTTP failure: 401
    Execution halted
    ```

# GERGM

Version: 0.11.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   4.2Mb
    ```

# GerminaR

Version: 1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘shinydashboard’
      All declared Imports should be used.
    ```

# getopt

Version: 1.20.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    getopt: no visible global function definition for ‘na.omit’
    Undefined global functions or variables:
      na.omit
    Consider adding
      importFrom("stats", "na.omit")
    to your NAMESPACE file.
    ```

# GetTDData

Version: 1.3

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GetTDData-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get.yield.curve
    > ### Title: Gets the current yield curve
    > ### Aliases: get.yield.curve
    > 
    > ### ** Examples
    > 
    > df.yield <- get.yield.curve()
    Error in my.l[[6]] : subscript out of bounds
    Calls: get.yield.curve
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 17-21 (gtdd-vignette_YieldCurve.Rmd) 
    Error: processing vignette 'gtdd-vignette_YieldCurve.Rmd' failed with diagnostics:
    subscript out of bounds
    Execution halted
    ```

# GeuvadisTranscriptExpr

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 112.4Mb
      sub-directories of 1Mb or more:
        extdata  112.0Mb
    ```

# ggalt

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plotly’
      All declared Imports should be used.
    ```

# ggbio

Version: 1.24.1

## In both

*   checking examples ... ERROR
    ```
    ...
    ------utr...
    aggregating...
    Done
    Constructing graphics...
    reduce alignemnts...
    > 
    > 
    > ###################################################
    > ### EnsDb
    > ###################################################
    > ## Fetching gene models from an EnsDb object.
    > library(EnsDb.Hsapiens.v75)
    Loading required package: ensembldb
    Loading required package: AnnotationFilter
    > ensdb <- EnsDb.Hsapiens.v75
    > ## We use a GenenameFilter to specifically retrieve all transcripts for that gene.
    > p1 <- autoplot(ensdb, which = GenenameFilter("ALDOA"), names.expr = "gene_name")
    Fetching data...Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: autoplot ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      'S4Vectors:::top_prenv' 'ggplot2:::add_ggplot' 'ggplot2:::cunion'
      'ggplot2:::rename_aes' 'ggplot2:::rescale01'
      'ggplot2:::set_last_plot'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    layout_karyogram,GRanges: no visible binding for global variable
      'yend2'
    layout_karyogram,GRanges : <anonymous>: no visible binding for global
      variable 'name'
    layout_karyogram,GRanges : <anonymous>: no visible binding for global
      variable 'gieStain'
    plotFragLength,character-GRanges: no visible binding for global
      variable '.fragLength'
    plotSpliceSum,character-EnsDb: possible error in GRangesFilter(which,
      condition = "overlapping"): unused argument (condition =
      "overlapping")
    stat_mismatch,GRanges: no visible binding for global variable 'sts'
    stat_mismatch,GRanges: no visible binding for global variable 'eds'
    stat_mismatch,GRanges: no visible binding for global variable 'read'
    Undefined global functions or variables:
      .fragLength .layout_circle.stats .x breaks coefs cytobands data eds
      fe fl gieStain ideoCyto indexProbesProcessed midpoint mt name read se
      stepping sts value variable x xend y y.text y2 yend yend2
    Consider adding
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# ggconf

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# ggcyto

Version: 1.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc   5.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scales’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowWorkspace:::.mergeGates’ ‘flowWorkspace:::compact’
      ‘flowWorkspace:::fix_y_axis’ ‘ggplot2:::+.gg’ ‘ggplot2:::add_group’
      ‘ggplot2:::check_aesthetics’ ‘ggplot2:::ggplot.data.frame’
      ‘ggplot2:::is.waive’ ‘ggplot2:::is_calculated_aes’
      ‘ggplot2:::make_scale’ ‘ggplot2:::plot_clone’
      ‘ggplot2:::print.ggplot’ ‘ggplot2:::scales_add_defaults’
      ‘ggplot2:::update_theme’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    fortify_fs.GatingSetList: no visible global function definition for
      ‘getS3method’
    getFlowFrame.GatingSetList: no visible global function definition for
      ‘getS3method’
    getFlowFrame.ncdfFlowList: no visible global function definition for
      ‘getS3method’
    ggcyto.GatingSetList: no visible global function definition for
      ‘getS3method’
    ggcyto.flowSet: no visible binding for global variable ‘name’
    ggcyto.flowSet: no visible binding for global variable ‘axis’
    ggcyto.ncdfFlowList: no visible global function definition for
      ‘getS3method’
    ggcyto_arrange: no visible binding for global variable ‘name’
    Undefined global functions or variables:
      approx axis density desc dist getS3method gray modifyList name
    Consider adding
      importFrom("grDevices", "gray")
      importFrom("graphics", "axis")
      importFrom("stats", "approx", "density", "dist")
      importFrom("utils", "getS3method", "modifyList")
    to your NAMESPACE file.
    ```

# ggExtra

Version: 0.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grDevices’
      All declared Imports should be used.
    ```

# ggfortify

Version: 0.4.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ggfortify-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: gglagplot
    > ### Title: Plot time series against lagged versions of themselves
    > ### Aliases: gglagplot
    > 
    > ### ** Examples
    > 
    > gglagplot(AirPassengers)
    Error: `x` must be a vector, not a ts object, do you want `stats::lag()`?
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 1617 SKIPPED: 0 FAILED: 6
      1. Failure: autoplot.aareg works for lung (@test-surv.R#220) 
      2. Failure: autoplot.aareg works for lung (@test-surv.R#221) 
      3. Failure: autoplot.aareg works for lung (@test-surv.R#222) 
      4. Failure: autoplot.aareg works for lung (@test-surv.R#223) 
      5. Error: gglagplot (@test-tslib.R#103) 
      6. Failure: Code Lint (@test_lint.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   5.0Mb
    ```

# ggguitar

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘lazyeval’ ‘readr’
      All declared Imports should be used.
    ```

# ggiraphExtra

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘XML’ ‘mapproj’ ‘moonBook’
      All declared Imports should be used.
    ```

# ggloop

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 88 SKIPPED: 0 FAILED: 18
      1. Error: Test xydot.TF names (@test2.R#36) 
      2. Error: Test xydot.TT names (@test2.R#81) 
      3. Error: Teest xydot.FF names (@test2.R#126) 
      4. Error: Test xydot.FT names (@test2.R#162) 
      5. Error: Test xydot.NAT names (@test2.R#195) 
      6. Error: Test xydot.NAF names (@test2.R#225) 
      7. Error: Test xydots.TF names (@test2.R#258) 
      8. Error: Test xydots.TT names (@test2.R#291) 
      9. Error: Test xydots.FF names (@test2.R#322) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ggplot2

Version: 2.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# ggQC

Version: 0.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘plyr’ ‘reshape2’
      All declared Imports should be used.
    ```

# ggRandomForests

Version: 2.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘randomForest’
      All declared Imports should be used.
    ```

# ggraptR

Version: 1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: eval(ei, envir)
      4: eval(ei, envir)
      5: source("script/utils/funs.R")
      6: withVisible(eval(ei, envir))
      7: eval(ei, envir)
      8: eval(ei, envir)
      9: source("../../inst/ggraptR/functions/helper.R")
      10: file(filename, "r", encoding = encoding)
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test2App.R#3) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘GGally’ ‘RColorBrewer’ ‘Rcpp’ ‘assertthat’ ‘backports’
      ‘colorspace’ ‘colourpicker’ ‘evaluate’ ‘futile.options’ ‘gdtools’
      ‘gtable’ ‘htmltools’ ‘htmlwidgets’ ‘httpuv’ ‘labeling’ ‘lambda.r’
      ‘lazyeval’ ‘magrittr’ ‘miniUI’ ‘munsell’ ‘plyr’ ‘reshape’ ‘rprojroot’
      ‘scales’ ‘stringi’ ‘stringr’ ‘svglite’ ‘tibble’ ‘xtable’ ‘yaml’
      All declared Imports should be used.
    ```

# ggrepel

Version: 0.7.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 332-362 (ggrepel.Rmd) 
    Error: processing vignette 'ggrepel.Rmd' failed with diagnostics:
    there is no package called 'gridExtra'
    Execution halted
    ```

# ggridges

Version: 0.4.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6242 marked UTF-8 strings
    ```

# ggstance

Version: 0.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# ggthemes

Version: 3.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘latticeExtra’
    ```

# ggtree

Version: 1.8.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EBImage’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        doc        6.8Mb
        examples   3.7Mb
    ```

# ggvis

Version: 0.4.3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plyr’
    ```

# gistr

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 4 SKIPPED: 2 FAILED: 19
      1. Error: commits works (@test-commits.R#7) 
      2. Error: config options work (@test-commits.R#20) 
      3. Error: delete returns NULL (@test-delete.R#10) 
      4. Error: delete returns correct message (@test-delete.R#19) 
      5. Error: embed returns correct string and is character (@test-embed.R#7) 
      6. Error: fork works (@test-fork.R#7) 
      7. Error: forks works (@test-fork.R#19) 
      8. Error: gist works (@test-gist.R#7) 
      9. Error: as.gist works - character gist ID input (@test-gist.R#13) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# githubinstall

Version: 0.2.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 34 SKIPPED: 0 FAILED: 12
      1. Error: Install: ask no (@test-gh_install_packages.R#27) 
      2. Error: Install: ask yes (@test-gh_install_packages.R#37) 
      3. Error: recommend_dependencies: ask = TRUE (@test-utils_for_install.R#49) 
      4. Error: select_repository: multi candidates (@test-utils_for_install.R#130) 
      5. Error: select_repository: cancel (@test-utils_for_install.R#142) 
      6. Error: remove_conflict_repos: no installed (@test-utils_for_install.R#169) 
      7. Error: remove_conflict_repos: not conflict (@test-utils_for_install.R#183) 
      8. Error: remove_conflict_repos: conflict GitHub, ask yes (@test-utils_for_install.R#198) 
      9. Error: remove_conflict_repos: conflict GitHub, ask no (@test-utils_for_install.R#213) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# glassdoor

Version: 0.7.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘xml2’
      All declared Imports should be used.
    ```

# Glimma

Version: 1.4.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# glmmsr

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: FUN(X[[i]], ...)
      5: eval(subexpr_mod, envir = data_subexpr)
      6: eval(subexpr_mod, envir = data_subexpr)
      7: `-fr`(`[fr`(ability, player1), `[fr`(ability, player2))
      8: is_modfr(modfr1)
      9: `[fr`(ability, player1)
      
      testthat results ================================================================
      OK: 69 SKIPPED: 2 FAILED: 3
      1. Error: prev_fit doesn't affect the result (@test_fit.R#125) 
      2. Error: (unknown) (@test_model_frames.R#20) 
      3. Error: (unknown) (@test_subformula.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 346-355 (glmmsr-vignette.Rmd) 
    Error: processing vignette 'glmmsr-vignette.Rmd' failed with diagnostics:
    incorrect number of dimensions
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 50.5Mb
      sub-directories of 1Mb or more:
        libs  49.8Mb
    ```

# glmmTMB

Version: 0.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Warning in f(x, order = 1) : value out of range in 'lgamma'
    Loading required package: stats4
    Warning in qt((1 - level)/2, df) : NaNs produced
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'glmmTMB.tex' failed.
    BibTeX errors:
    The top-level auxiliary file: glmmTMB.aux
    I couldn't open style file chicago.bst
    ---line 19 of file glmmTMB.aux
     : \bibstyle{chicago
     :                  }
    I'm skipping whatever remains of this command
    I found no style file---while reading file glmmTMB.aux
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 44.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  42.4Mb
    ```

# Gmisc

Version: 1.4.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      label: Highlighting (with options) 
      List of 1
       $ echo: logi TRUE
      
        ordinary text without R code
      
      /usr/bin/pandoc +RTS -K512m -RTS Full_test_suite.utf8.md --to html --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output /home/muelleki/tmp/Rtmp8ucTrz/tmp.html --smart --email-obfuscation none --standalone --section-divs --template /home/muelleki/git/R/testthat/revdep/library/Gmisc/rmarkdown/rmd/h/default.html --no-highlight --css docx.css 
      testthat results ================================================================
      OK: 288 SKIPPED: 0 FAILED: 2
      1. Failure: Test figure caption basic functionality (@test-figCapNo.R#10) 
      2. Failure: Test figure caption basic functionality (@test-figCapNo.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gmum.r

Version: 0.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.9Mb
      sub-directories of 1Mb or more:
        libs  19.9Mb
    ```

# googleAuthR

Version: 0.5.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      11: oauth_listener(url)
      12: httpuv::startServer(use$host, use$port, list(call = listen))
      13: stop("Failed to create server")
      
      testthat results ================================================================
      OK: 19 SKIPPED: 3 FAILED: 6
      1. Error: A batch call works (@test-batch.R#95) 
      2. Error: A walk batch call works but with no returned data (@test-batch.R#103) 
      3. Error: Can authenticate .httr looking for existing file (@test-gaAuthR.R#65) 
      4. Error: Can authenticate .httr passing a token (@test-gaAuthR.R#71) 
      5. Error: Can authenticate default auto settings (@test-gaAuthR.R#112) 
      6. Error: Right message when wrong token file location given (@test-gaAuthR.R#124) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# googleCloudStorageR

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 36 SKIPPED: 0 FAILED: 36
      1. Error: We can login (@test.R#11) 
      2. Error: We can list buckets (@test.R#25) 
      3. Error: We can get a bucket (@test.R#32) 
      4. Error: We can create a bucket (@test.R#41) 
      5. Error: We can upload to the new bucket (@test.R#50) 
      6. Error: We can delete upload to the new bucket (@test.R#59) 
      7. Error: We can make a bucket with lifecycle and versioning set (@test.R#72) 
      8. Error: We can upload a file (@test.R#92) 
      9. Error: We can upload a data.frame (@test.R#100) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 17 SKIPPED: 0 FAILED: 46
      1. Error: We can see a project resource (@test_aa_auth.R#16) 
      2. Error: We can set auto project (@test_aa_auth.R#26) 
      3. Error: We can get auto project (@test_aa_auth.R#37) 
      4. Error: We can list networks (@test_aa_auth.R#70) 
      5. Error: We can get a network (@test_aa_auth.R#79) 
      6. Error: We can make a container VM (@test_bb_create_vm.R#7) 
      7. Error: We can make a VM with metadata (@test_bb_create_vm.R#24) 
      8. Error: We can make a template VM (@test_bb_create_vm.R#41) 
      9. Error: We can make a VM with custom disk size (@test_bb_create_vm.R#57) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# GoogleGenomics

Version: 1.8.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GoogleGenomics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: getReads
    > ### Title: Get reads from Google Genomics.
    > ### Aliases: getReads
    > 
    > ### ** Examples
    > 
    > # Authenticated on package load from the env variable GOOGLE_API_KEY.
    > reads <- getReads()
    Error in getSearchPage("reads", body, fields, pageToken) : 
      You are not authenticated; see ?GoogleGenomics::authenticate.
    Calls: getReads -> getReadsPage -> getSearchPage
    Execution halted
    ```

# googlesheets

Version: 0.2.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 157 SKIPPED: 1 FAILED: 10
      1.  Error: (unknown) (@test-auth.R#12) 
      2.  Error: (unknown) (@test-cell-edit.R#3) 
      3.  Error: (unknown) (@test-consume-data-private.R#3) 
      4.  Error: (unknown) (@test-gs-create-delete-copy-rename.R#3) 
      5.  Error: (unknown) (@test-gs-ls.R#3) 
      6.  Error: (unknown) (@test-gs-permissions.R#3) 
      7.  Error: (unknown) (@test-gs-register.R#3) 
      8.  Error: (unknown) (@test-gs-upload.R#3) 
      9.  Error: (unknown) (@test-ws-edits.R#3) 
      10. Error: (unknown) (@test-zz-clean-up.R#1) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 37-41 (basic-usage.Rmd) 
    Error: processing vignette 'basic-usage.Rmd' failed with diagnostics:
    Cannot read token from alleged .rds file:
    ../tests/testthat/googlesheets_token.rds
    Execution halted
    ```

# gpuR

Version: 1.2.1

## In both

*   checking whether package ‘gpuR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/gpuR/new/gpuR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gpuR’ ...
** package ‘gpuR’ successfully unpacked and MD5 sums checked
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
cl2.hpp header exists

*********** Generated Makevars file ***********
CXX_STD=CXX11
PKG_CPPFLAGS=-I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP
PKG_CXXFLAGS=
PKG_LIBS=-lOpenCL
BUILD_LIB=

$(SHLIB): $(BUILD_LIB)

../inst/include/loader/libOpenCL.a:
	cd ../inst/include/loader/ && $(MAKE) libOpenCL.a \
	CC="$(CC)" CFLAGS="$(ALL_CFLAGS)" AR="$(AR)" RM="$(RM)" \
	ICD_OS=icd_linux
***********************************************
** libs
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c platform.cpp -o platform.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c context.cpp -o context.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c device.cpp -o device.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils-vcl.cpp -o utils-vcl.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c trunc_gpuMat.cpp -o trunc_gpuMat.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils.cpp -o utils.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuMatrix_igemm.cpp -o gpuMatrix_igemm.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c set_row_order.cpp -o set_row_order.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c chol.cpp -o chol.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vclPtr.cpp -o vclPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuEigenPtr.cpp -o gpuEigenPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_svd.cpp -o vienna_svd.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c solve.cpp -o solve.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas3.cpp -o vienna_blas3.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas1.cpp -o vienna_blas1.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_qr.cpp -o vienna_qr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_eigen.cpp -o vienna_eigen.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_stats.cpp -o vienna_stats.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o gpuR.so RcppExports.o chol.o context.o device.o gpuEigenPtr.o gpuMatrix_igemm.o platform.o set_row_order.o solve.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/gpuR/new/gpuR.Rcheck/gpuR/libs
** R
** inst
** preparing package for lazy loading
Creating a generic function for ‘eigen’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘%o%’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘nrow’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘ncol’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘crossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘tcrossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘cov’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘colSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘dist’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘diag’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘diag<-’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.R’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.Q’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘typeof’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colnames<-’ from package ‘base’ in package ‘gpuR’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
Error: package or namespace load failed for ‘gpuR’:
 .onAttach failed in attachNamespace() for 'gpuR', details:
  call: initContexts()
  error: ViennaCL: FATAL ERROR: ViennaCL encountered an unknown OpenCL error. Most likely your OpenCL SDK or driver is not installed properly. In some cases, this error is due to an invalid global work size or several kernel compilation errors.
If you think that this is a bug in ViennaCL, please report it at viennacl-support@lists.sourceforge.net and supply at least the following information:
 * Operating System
 * Which OpenCL implementation (AMD, NVIDIA, etc.)
 * ViennaCL version
Many thanks in advance!
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/gpuR/new/gpuR.Rcheck/gpuR’

```
### CRAN

```
* installing *source* package ‘gpuR’ ...
** package ‘gpuR’ successfully unpacked and MD5 sums checked
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
cl2.hpp header exists

*********** Generated Makevars file ***********
CXX_STD=CXX11
PKG_CPPFLAGS=-I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP
PKG_CXXFLAGS=
PKG_LIBS=-lOpenCL
BUILD_LIB=

$(SHLIB): $(BUILD_LIB)

../inst/include/loader/libOpenCL.a:
	cd ../inst/include/loader/ && $(MAKE) libOpenCL.a \
	CC="$(CC)" CFLAGS="$(ALL_CFLAGS)" AR="$(AR)" RM="$(RM)" \
	ICD_OS=icd_linux
***********************************************
** libs
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c platform.cpp -o platform.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c device.cpp -o device.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c context.cpp -o context.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils-vcl.cpp -o utils-vcl.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c chol.cpp -o chol.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c set_row_order.cpp -o set_row_order.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuMatrix_igemm.cpp -o gpuMatrix_igemm.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils.cpp -o utils.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c trunc_gpuMat.cpp -o trunc_gpuMat.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vclPtr.cpp -o vclPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuEigenPtr.cpp -o gpuEigenPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_svd.cpp -o vienna_svd.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c solve.cpp -o solve.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas3.cpp -o vienna_blas3.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas1.cpp -o vienna_blas1.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_eigen.cpp -o vienna_eigen.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_qr.cpp -o vienna_qr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/Rcpp/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RcppEigen/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/RViennaCL/include" -I"/home/muelleki/git/R/testthat/revdep/library/gpuR/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_stats.cpp -o vienna_stats.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o gpuR.so RcppExports.o chol.o context.o device.o gpuEigenPtr.o gpuMatrix_igemm.o platform.o set_row_order.o solve.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/gpuR/old/gpuR.Rcheck/gpuR/libs
** R
** inst
** preparing package for lazy loading
Creating a generic function for ‘eigen’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘%o%’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘nrow’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘ncol’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘crossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘tcrossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘cov’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘colSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘dist’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘diag’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘diag<-’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.R’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.Q’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘typeof’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colnames<-’ from package ‘base’ in package ‘gpuR’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
Error: package or namespace load failed for ‘gpuR’:
 .onAttach failed in attachNamespace() for 'gpuR', details:
  call: initContexts()
  error: ViennaCL: FATAL ERROR: ViennaCL encountered an unknown OpenCL error. Most likely your OpenCL SDK or driver is not installed properly. In some cases, this error is due to an invalid global work size or several kernel compilation errors.
If you think that this is a bug in ViennaCL, please report it at viennacl-support@lists.sourceforge.net and supply at least the following information:
 * Operating System
 * Which OpenCL implementation (AMD, NVIDIA, etc.)
 * ViennaCL version
Many thanks in advance!
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/gpuR/old/gpuR.Rcheck/gpuR’

```
# gqlr

Version: 0.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘base’
      All declared Imports should be used.
    ```

# graphite

Version: 1.22.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘DEGraph’ ‘RCytoscape’ ‘RCy3’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘DEGraph’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 26 marked UTF-8 strings
    ```

# grattan

Version: 1.5.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘taxstats’
    ```

# Greg

Version: 1.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rmeta’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'printCrudeAndAdjustedModel':
      ‘rbind.printCrudeAndAdjusted’ ‘cbind.printCrudeAndAdjusted’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# grf

Version: 0.9.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        libs   9.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# gridsampler

Version: 0.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BiasedUrn’
      All declared Imports should be used.
    ```

# growcurves

Version: 0.2.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.5Mb
      sub-directories of 1Mb or more:
        libs  18.0Mb
    ```

# growfunctions

Version: 0.13

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        libs  12.8Mb
    ```

# GrpString

Version: 0.3.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# GRridge

Version: 1.0.0

## In both

*   checking whether package ‘GRridge’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘stats::xtabs’ by ‘BiocGenerics::xtabs’ when loading ‘GRridge’
      Warning: replacing previous import ‘stats::sd’ by ‘BiocGenerics::sd’ when loading ‘GRridge’
      Warning: replacing previous import ‘stats::mad’ by ‘BiocGenerics::mad’ when loading ‘GRridge’
      Warning: replacing previous import ‘stats::IQR’ by ‘BiocGenerics::IQR’ when loading ‘GRridge’
      Warning: replacing previous import ‘GSEABase::intersect’ by ‘BiocGenerics::intersect’ when loading ‘GRridge’
      Warning: replacing previous import ‘penalized::as.data.frame’ by ‘BiocGenerics::as.data.frame’ when loading ‘GRridge’
      Warning: replacing previous import ‘GSEABase::setdiff’ by ‘BiocGenerics::setdiff’ when loading ‘GRridge’
      Warning: replacing previous import ‘stats::var’ by ‘BiocGenerics::var’ when loading ‘GRridge’
    See ‘/home/muelleki/git/R/testthat/revdep/checks/GRridge/new/GRridge.Rcheck/00install.out’ for details.
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                        old_size new_size compress
      dataFarkas.rda       3.4Mb    2.5Mb    bzip2
      dataWurdinger.rda    1.9Mb    1.2Mb       xz
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘penalized’ ‘Iso’ ‘survival’ ‘GSEABase’ ‘BiocGenerics’ ‘Biobase’
      ‘annotate’ ‘graph’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        data   8.5Mb
    ```

# gsrc

Version: 1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘brassicaData’
    ```

# gutenbergr

Version: 0.1.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13617 marked UTF-8 strings
    ```

# gWidgets2RGtk2

Version: 1.0-6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run-tests.R’ failed.
    Last 13 lines of output:
      > f <- Filter(function(x) !grepl("README", x), f)
      > f <- Filter(function(x) !grepl("html", x), f)
      > 
      > sapply(f, function(i) {
      +   message("testing ", i)
      +   source(i)
      + })
      testing /home/muelleki/git/R/testthat/revdep/library/gWidgets2RGtk2/gWidgets2/tests/button.R
      Loading required package: gWidgets2RGtk2
      Loading required package: memoise
      Loading required package: RGtk2
      R session is headless; GTK+ not initialized.
      Error in guiToolkit() : Can't load RGtk2
      Calls: sapply ... withVisible -> eval -> eval -> gwindow -> guiToolkit
      Execution halted
    ```

# gWidgets2tcltk

Version: 1.0-5

## In both

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** R
** demo
** inst
** preparing package for lazy loading
Warning: no DISPLAY variable so Tk is not available
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error : unable to load R code in package ‘gWidgets2tcltk’
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/gWidgets2tcltk’

```
### CRAN

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** R
** demo
** inst
** preparing package for lazy loading
Warning: no DISPLAY variable so Tk is not available
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error : unable to load R code in package ‘gWidgets2tcltk’
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/gWidgets2tcltk/old/gWidgets2tcltk.Rcheck/gWidgets2tcltk’

```
# GWLelast

Version: 1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    GWLelast.est: no visible global function definition for ‘dist’
    GWLelast.inner: no visible global function definition for ‘predict’
    GWLelast.inner.parallel: no visible global function definition for
      ‘predict’
    GWLelast.sel.bw: no visible global function definition for ‘dist’
    GWLelast.sel.bw: no visible global function definition for ‘optimize’
    Undefined global functions or variables:
      dist optimize predict
    Consider adding
      importFrom("stats", "dist", "optimize", "predict")
    to your NAMESPACE file.
    ```

# hansard

Version: 0.5.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat-mp.R’ failed.
    Last 13 lines of output:
             verbose = verbose)
      3: jsonlite::fromJSON(paste0(baseurl, mp_id, dates, session_query, extra_args), flatten = TRUE)
      4: fromJSON_string(txt = txt, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame, 
             simplifyMatrix = simplifyMatrix, flatten = flatten, ...)
      5: parseJSON(txt, bigint_as_char)
      6: parse_con(txt, bigint_as_char)
      7: open(con, "rb")
      8: open.connection(con, "rb")
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 1
      1. Error: members vote record and questions functions return expected format (@test_mp_misc.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# hash

Version: 2.2.6

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    hash: no visible global function definition for ‘new’
    is.hash: no visible global function definition for ‘is’
    Undefined global functions or variables:
      is new
    Consider adding
      importFrom("methods", "is", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# hashmap

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        libs  16.2Mb
    ```

# haven

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hms’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hddtools

Version: 0.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      trying URL 'ftp://ftp.bafg.de/pub/REFERATE/GRDC/ltdata/africa.zip'
      Content type 'unknown' length 10558875 bytes (10.1 MB)
      ==================================================
      1. Error: Test tsGRDC function (@test-tsGRDC.R#6) ------------------------------
      cannot open the connection
      1: tsGRDC(stationID = 1107700) at testthat/test-tsGRDC.R:6
      2: readLines(fpath)
      3: file(con, "r")
      
      testthat results ================================================================
      OK: 25 SKIPPED: 0 FAILED: 1
      1. Error: Test tsGRDC function (@test-tsGRDC.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# heatmaply

Version: 0.11.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘webshot’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘d3heatmap’
    ```

# heatmaps

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘EBImage’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# hei

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      Files named as vignettes but with no recognized vignette engine:
       ‘vignettes/Analysis.Rmd’
    (Is a VignetteBuilder field missing?)
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    simpleWarning in download.file(url, tf, mode = "wb", quiet = TRUE): downloaded length 2240178 != reported length 6820400
    
    
    Quitting from lines 36-39 (GettingStarted.Rmd) 
    Error: processing vignette 'GettingStarted.Rmd' failed with diagnostics:
    attempt to set an attribute on NULL
    Execution halted
    ```

# hiAnnotator

Version: 1.11.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    makeChunks: no visible global function definition for ‘breakInChunks’
    makeChunks: no visible global function definition for ‘detectCores’
    makeChunks : <anonymous>: no visible global function definition for
      ‘keepSeqlevels’
    makeChunks : <anonymous>: no visible global function definition for
      ‘seqlevelsInUse’
    makeGRanges: no visible global function definition for ‘IRanges’
    makeGRanges: no visible global function definition for ‘seqlengths’
    makeGRanges: no visible global function definition for ‘seqlevels<-’
    makeGRanges: no visible global function definition for ‘sortSeqlevels’
    makeGRanges: no visible global function definition for ‘seqlevelsInUse’
    makeGRanges: no visible global function definition for ‘seqlengths<-’
    makeGRanges: no visible global function definition for ‘seqlevels’
    Undefined global functions or variables:
      IRanges breakInChunks countQueryHits detectCores dist featureName
      keepSeqlevels mid n overlapsAny qStrand queryHits seqlengths
      seqlengths<- seqlevels seqlevels<- seqlevelsInUse sortSeqlevels
      subjectHits
    Consider adding
      importFrom("stats", "dist")
    to your NAMESPACE file.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# HIBPwned

Version: 0.1.6

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("HIBPwned")
      1. Failure: account_breaches works for a single account (@test-account_breaches.R#14) 
      ncol(res[[acct]]) is not strictly more than 1. Difference: 0
      
      2. Failure: account_breaches works for a single account (@test-account_breaches.R#34) 
      ncol(res[[acct]]) is not strictly more than 1. Difference: 0
      
      testthat results ================================================================
      OK: 127 SKIPPED: 0 FAILED: 2
      1. Failure: account_breaches works for a single account (@test-account_breaches.R#14) 
      2. Failure: account_breaches works for a single account (@test-account_breaches.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ratelimitr’
      All declared Imports should be used.
    ```

# HilbertCurve

Version: 1.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        doc   7.1Mb
    ```

# hiReadsProcessor

Version: 1.12.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘qBaseInsert’
    read.psl : <anonymous>: no visible binding for global variable
      ‘tBaseInsert’
    read.psl: no visible binding for global variable ‘matches’
    read.psl: no visible binding for global variable ‘misMatches’
    read.psl: no visible binding for global variable ‘qBaseInsert’
    read.psl: no visible binding for global variable ‘tBaseInsert’
    read.sampleInfo: no visible global function definition for ‘SimpleList’
    splitSeqsToFiles: no visible global function definition for
      ‘fasta.info’
    vpairwiseAlignSeqs: no visible global function definition for ‘Rle’
    vpairwiseAlignSeqs: no visible global function definition for
      ‘runLength’
    vpairwiseAlignSeqs: no visible global function definition for ‘IRanges’
    vpairwiseAlignSeqs: no visible global function definition for
      ‘runValue’
    Undefined global functions or variables:
      DataFrame IRanges IRangesList Rle ScanBamParam SimpleList
      breakInChunks clusteredValue clusteredValue.freq detectCores
      fasta.info matches mclapply metadata metadata<- misMatches
      qBaseInsert queryHits runLength runValue scanBamFlag tBaseInsert
    ```

# htmlTable

Version: 1.9

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pxweb’
    ```

# htmltools

Version: 0.3.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘knitr’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘shiny’
    ```

# httping

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
          time
      
      1. Failure: ping works (@test-ping.R#14) ---------------------------------------
      Names of `aa1$request$request$options` ('useragent', 'httpget') don't match 'useragent', 'customrequest'
      
      2. Failure: ping works (@test-ping.R#19) ---------------------------------------
      Names of `bb1$request$request$options` ('useragent', 'timeout_ms', 'httpget') don't match 'useragent', 'timeout_ms', 'customrequest'
      
      testthat results ================================================================
      OK: 48 SKIPPED: 0 FAILED: 2
      1. Failure: ping works (@test-ping.R#14) 
      2. Failure: ping works (@test-ping.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# httptest

Version: 2.1.2

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: expect-verb
    > ### Title: Expecations for mocked HTTP requests
    > ### Aliases: expect-verb expect_GET expect_POST expect_PUT expect_PATCH
    > ###   expect_DELETE expect_no_request expect_POST expect_PATCH expect_PUT
    > ###   expect_DELETE expect_no_request
    > 
    > ### ** Examples
    > 
    > library(httr)
    > without_internet({
    +     expect_GET(GET("http://httpbin.org/get"),
    +         "http://httpbin.org/get")
    +     expect_PUT(PUT("http://httpbin.org/put", body='{"a":1}'),
    +         'http://httpbin.org/put',
    +         '{"a":1}')
    +     expect_PUT(PUT("http://httpbin.org/put", body='{"a":1}'))
    +     expect_no_request(rnorm(5))
    + })
    Error: Can't mock functions in base packages (utils)
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 18 SKIPPED: 0 FAILED: 11
      1. Error: We can then load the mocks it stores (@test-capture-requests.R#40) 
      2. Error: (unknown) (@test-capture-requests.R#57) 
      3. Error: (unknown) (@test-expect-header.R#3) 
      4. Error: (unknown) (@test-fake-http.R#3) 
      5. Error: (unknown) (@test-mock-api.R#3) 
      6. Error: (unknown) (@test-mock-paths.R#3) 
      7. Error: currently_offline interacts with the mock contexts (@test-offline.R#4) 
      8. Error: skip_if_disconnected when disconnected (@test-offline.R#10) 
      9. Error: skip_if_disconnected when 'connected' (@test-offline.R#16) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# humanFormat

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘testthat’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

# hunspell

Version: 2.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        dict   1.3Mb
        doc    1.1Mb
        libs   5.3Mb
    ```

# hutils

Version: 0.8.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             while (!is_null(x)) {
                 quo_splice(node_car(x), x, warn = warn)
                 x <- node_cdr(x)
             }
         })
      9: expr_type_of(.x)
      10: typeof(x)
      11: duplicate(quo)
      
      testthat results ================================================================
      OK: 131 SKIPPED: 0 FAILED: 1
      1. Error: Drop colr (@test_drop_cols.R#36) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# huxtable

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 262 SKIPPED: 3 FAILED: 47
      1. Error: Cell property attr align examples unchanged (@test-attributes.R#14) 
      2. Error: Cell property attr valign examples unchanged (@test-attributes.R#14) 
      3. Error: Cell property attr rowspan examples unchanged (@test-attributes.R#14) 
      4. Error: Cell property attr colspan examples unchanged (@test-attributes.R#14) 
      5. Error: Cell property attr background_color examples unchanged (@test-attributes.R#14) 
      6. Error: Cell property attr text_color examples unchanged (@test-attributes.R#14) 
      7. Error: Cell property attr top_border examples unchanged (@test-attributes.R#14) 
      8. Error: Cell property attr left_border examples unchanged (@test-attributes.R#14) 
      9. Error: Cell property attr right_border examples unchanged (@test-attributes.R#14) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘xtable’
    ```

# hybridEnsemble

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 
             2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
             2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
             2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
             2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"))
      5: rotationForest(x = xTRAIN, y = as.factor(yTRAIN), L = RoF.L)
      6: stop("All features in x need to be of type numeric")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 2
      1. Error: Test output hybridEnsemble and predict (@test-mainfunctions.r#8) 
      2. Error: Test output CVhybridEnsemble (@test-mainfunctions.r#37) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘optim’
    importance.hybridEnsemble: no visible global function definition for
      ‘predict’
    plot.CVhybridEnsemble: no visible global function definition for
      ‘legend’
    plot.CVhybridEnsemble: no visible global function definition for
      ‘barplot’
    plot.CVhybridEnsemble: no visible global function definition for ‘text’
    predict.hybridEnsemble: no visible global function definition for
      ‘predict’
    predict.hybridEnsemble: no visible global function definition for
      ‘plogis’
    Undefined global functions or variables:
      aggregate barplot capture.output coef dlogis legend median na.omit
      optim plogis predict quantile runif text
    Consider adding
      importFrom("graphics", "barplot", "legend", "text")
      importFrom("stats", "aggregate", "coef", "dlogis", "median", "na.omit",
                 "optim", "plogis", "predict", "quantile", "runif")
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
    ```

# hyperSpec

Version: 0.99-20171005

## In both

*   checking R code for possible problems ... NOTE
    ```
    Warning: local assignments to syntactic functions: ~
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘caTools’
    ```

# IAPWS95

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘ggplot2’ ‘pander’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# icd

Version: 2.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        data   1.3Mb
        doc    2.2Mb
        libs   1.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 55 marked UTF-8 strings
    ```

# icd9

Version: 1.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   4.6Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 14 marked Latin-1 strings
      Note: found 39 marked UTF-8 strings
    ```

# ideal

Version: 1.0.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ideal: no visible binding for '<<-' assignment to ‘ideal_env’
    ideal : <anonymous>: no visible binding for global variable ‘airway’
    ideal : <anonymous>: no visible binding for global variable ‘ideal_env’
    Undefined global functions or variables:
      airway ideal_env
    ```

# IGP

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘PythonInR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# igraph

Version: 1.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.4Mb
      sub-directories of 1Mb or more:
        help   1.1Mb
        libs  17.3Mb
    ```

# IHW

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    ihw.default: no visible global function definition for ‘p.adjust’
    ihw_convex: no visible global function definition for ‘gurobi’
    ihw_internal: no visible global function definition for ‘p.adjust’
    ihw_milp: no visible global function definition for ‘str’
    ihw_milp: no visible global function definition for ‘gurobi’
    plot_decisionboundary: no visible binding for global variable ‘stratum’
    plot_decisionboundary: no visible binding for global variable
      ‘covariate’
    plot_decisionboundary: no visible binding for global variable ‘pvalue’
    plot_decisionboundary: no visible binding for global variable ‘fold’
    thresholds_ihwResult: no visible global function definition for
      ‘na.exclude’
    thresholds,ihwResult: no visible global function definition for
      ‘na.exclude’
    Undefined global functions or variables:
      covariate fold gurobi mcols mcols<- metadata metadata<- na.exclude
      p.adjust pvalue runif str stratum
    Consider adding
      importFrom("stats", "na.exclude", "p.adjust", "runif")
      importFrom("utils", "str")
    to your NAMESPACE file.
    ```

# IHWpaper

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.9Mb
      sub-directories of 1Mb or more:
        doc       3.4Mb
        extdata   9.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    scott_fdrreg: no visible global function definition for ‘FDRreg’
    scott_fdrreg: no visible global function definition for ‘getFDR’
    sim_fun_eval: no visible binding for global variable ‘fdr_method’
    sim_fun_eval: no visible binding for global variable ‘fdr_pars’
    sim_fun_eval: no visible binding for global variable ‘FDP’
    sim_fun_eval: no visible binding for global variable ‘rj_ratio’
    sim_fun_eval: no visible binding for global variable ‘FPR’
    sim_fun_eval: no visible binding for global variable ‘FWER’
    Undefined global functions or variables:
      FDP FDRreg FPR FWER fdr_method fdr_pars getFDR rj_ratio
    ```

# imager

Version: 0.40.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘spatstat’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 43.7Mb
      sub-directories of 1Mb or more:
        data      1.4Mb
        doc       4.9Mb
        extdata   1.0Mb
        include   2.8Mb
        libs     33.0Mb
    ```

# ImmuneSpaceR

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    A .netrc file is required to connect to ImmuneSpace. For more information on how to create one, refer to the Configuration section of the introduction vignette.
    Quitting from lines 71-74 (Using_RImmuneSpace.Rmd) 
    Error: processing vignette 'Using_RImmuneSpace.Rmd' failed with diagnostics:
    HTTP request was unsuccessful. Status code = 401, Error message = NA 401
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    File ‘ImmuneSpaceR/R/zzz.R’:
      .onLoad calls:
        packageStartupMessage("A .netrc file is required to connect to ImmuneSpace. For more information on how to create one, refer to the Configuration section of the introduction vignette.")
    
    See section ‘Good practice’ in '?.onAttach'.
    
    CreateConnection: no visible global function definition for
      ‘packageVersion’
    Undefined global functions or variables:
      packageVersion
    Consider adding
      importFrom("utils", "packageVersion")
    to your NAMESPACE file.
    ```

# imputeMulti

Version: 0.6.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DBI’
      All declared Imports should be used.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘count_compare’
    ```

# incadata

Version: 0.6.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 568 marked UTF-8 strings
    ```

# incgraph

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# incidence

Version: 1.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 216 SKIPPED: 0 FAILED: 15
      1. Failure: fit_optim_split (@test-fit.R#41) 
      2. Failure: fit_optim_split (@test-fit.R#42) 
      3. Failure: plot for incidence object (@test-plot.R#36) 
      4. Failure: plot for incidence object (@test-plot.R#37) 
      5. Failure: plot for incidence object (@test-plot.R#38) 
      6. Failure: plot for incidence object (@test-plot.R#39) 
      7. Failure: plot for incidence object (@test-plot.R#40) 
      8. Failure: plot for incidence object (@test-plot.R#41) 
      9. Failure: plot for incidence object (@test-plot.R#42) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# indelmiss

Version: 1.0.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `indel5$results$M4$par` not equal to `c(...)`.
      6/6 mismatches (average diff: 8.1e-06)
      [1] 0.66038 - 0.66037 ==  7.19e-06
      [2] 1.94731 - 1.94729 ==  2.71e-05
      [3] 0.64653 - 0.64653 ==  3.42e-06
      [4] 1.95563 - 1.95563 ==  6.06e-06
      [5] 0.00508 - 0.00509 == -2.61e-06
      [6] 0.25994 - 0.25993 ==  2.20e-06
      
      testthat results ================================================================
      OK: 111 SKIPPED: 0 FAILED: 1
      1. Failure: Example 6 (@test_main.R#174) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# influxdbr

Version: 0.13.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 11
      1. Error: connection (@test_query.R#12) 
      2. Error: single query no chunking (@test_query.R#24) 
      3. Error: multiple query no chunking (@test_query.R#65) 
      4. Error: single query with chunking (@test_query.R#84) 
      5. Error: multiple query with chunking (@test_query.R#101) 
      6. Error: multiple query with chunking and xts result (@test_query.R#118) 
      7. Error: connection (@test_schema_exploration.R#12) 
      8. Error: show commands (@test_schema_exploration.R#25) 
      9. Error: connection (@test_write.R#12) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# INLAutils

Version: 0.0.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘INLA’
    ```

# InteractionSet

Version: 1.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomicRanges:::extraColumnSlotNames’ ‘S4Vectors:::disableValidity’
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# InterfaceqPCR

Version: 1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘InterfaceqPCR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: InterfaceqPCR-package
    > ### Title: GUI to Analyse qPCR Results after PMA Treatment or not
    > ### Aliases: InterfaceqPCR-package InterfaceqPCR
    > 
    > ### ** Examples
    > 
    > 
    > Start_qPCR()
    Warning in tclRequire("BWidget") : Tcl package 'BWidget' not found
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "toplevel".
    Calls: Start_qPCR ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking whether package ‘InterfaceqPCR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
      Warning: loading Rplot failed
    See ‘/home/muelleki/git/R/testthat/revdep/checks/InterfaceqPCR/new/InterfaceqPCR.Rcheck/00install.out’ for details.
    ```

# internetarchive

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(internetarchive)
      > 
      > test_check("internetarchive")
      1. Failure: ia_metadata() returns a data frame (@test-files-download.R#32) -----
      `meta` has changed from known value recorded in 'hecker_meta.rds'.
      Different number of rows
      
      testthat results ================================================================
      OK: 21 SKIPPED: 0 FAILED: 1
      1. Failure: ia_metadata() returns a data frame (@test-files-download.R#32) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# investr

Version: 1.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘nlstools’
    ```

# IONiseR

Version: 2.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   1.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘start_time’
    readFast5Summary.mc: no visible binding for global variable ‘duration’
    readFast5Summary.mc: no visible binding for global variable
      ‘num_events’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledTemplate’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledComplement’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘component’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘idx’
    show,Fast5Summary: no visible binding for global variable ‘full_2D’
    show,Fast5Summary: no visible binding for global variable ‘pass’
    Undefined global functions or variables:
      := AAAAA TTTTT accumulation baseCalledComplement baseCalledTemplate
      bases_called category channel circleFun component duration error freq
      full_2D group hour idx matrixCol matrixRow meanZValue mean_value
      median_signal minute mux name nbases new_reads num_events oddEven
      pass pentamer rbindlist readIDs seq_length start_time time_bin
      time_group x y zvalue
    ```

# iotools

Version: 0.1-12

## In both

*   checking compiled code ... NOTE
    ```
    File ‘iotools/libs/iotools.so’:
      Found non-API calls to R: ‘R_ReadConnection’, ‘getConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# iprior

Version: 0.6.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        libs   8.7Mb
    ```

# iptools

Version: 0.4.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# ISOweek

Version: 0.6-2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘surveillance’
    ```

# ITGM

Version: 0.6

## In both

*   checking whether package ‘ITGM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/ITGM/new/ITGM.Rcheck/00install.out’ for details.
    ```

# itunesr

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

# james.analysis

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    mergeJAMES.james: no visible global function definition for ‘glob2rx’
    plotConvergence.james : <anonymous> : <anonymous>: no visible global
      function definition for ‘tail’
    plotConvergence.james: no visible global function definition for ‘tail’
    plotConvergence.james: no visible global function definition for ‘head’
    plotConvergence.james : <anonymous>: no visible global function
      definition for ‘tail’
    plotConvergence.james: no visible global function definition for
      ‘matplot’
    plotConvergence.james: no visible global function definition for
      ‘mtext’
    summary.james: no visible global function definition for ‘sd’
    summary.james: no visible global function definition for ‘median’
    summary.james: no visible global function definition for ‘IQR’
    Undefined global functions or variables:
      IQR glob2rx head matplot median mtext sd tail
    Consider adding
      importFrom("graphics", "matplot", "mtext")
      importFrom("stats", "IQR", "median", "sd")
      importFrom("utils", "glob2rx", "head", "tail")
    to your NAMESPACE file.
    ```

# janeaustenr

Version: 0.1.5

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# jaod

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: jsonlite::fromJSON(x, parse, flatten = flatten)
      4: jGET(file.path(doaj_base(), "search", "journals", query), query = jc(list(page = page, 
             pageSize = pageSize, sort = sort)), ...)
      5: res$raise_for_status()
      6: stop(sprintf("%s (HTTP %s)", x$message, x$status_code), call. = FALSE)
      
      testthat results ================================================================
      OK: 48 SKIPPED: 0 FAILED: 4
      1. Error: jaod_journal many inputs (@test-jaod_journal.R#23) 
      2. Failure: jaod_journal fails well (@test-jaod_journal.R#38) 
      3. Error: jaod_journal_search works (@test-jaod_journal_search.R#6) 
      4. Error: jaod_journal_search - params work (@test-jaod_journal_search.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# Jdmbs

Version: 1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: xelatex not found. xelatex is needed for pdf output.
    Error: processing vignette 'Jdmbs-vignette.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 41
    Execution halted
    ```

# jiebaR

Version: 0.9.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# Jmisc

Version: 0.3.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    BugReports field is not a suitable URL but contains an email address
      which will be used as from R 3.4.0
    ```

*   checking R code for possible problems ... NOTE
    ```
    JBTest: no visible global function definition for ‘pchisq’
    generateSignificance: no visible global function definition for ‘pnorm’
    packages: no visible global function definition for ‘install.packages’
    shift: no visible global function definition for ‘tail’
    shift: no visible global function definition for ‘head’
    splitBy: no visible global function definition for ‘head’
    Undefined global functions or variables:
      head install.packages pchisq pnorm tail
    Consider adding
      importFrom("stats", "pchisq", "pnorm")
      importFrom("utils", "head", "install.packages", "tail")
    to your NAMESPACE file.
    ```

# jmotif

Version: 1.0.2.900

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        data   1.1Mb
        libs   8.1Mb
    ```

# jmv

Version: 0.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BayesFactor’ ‘GGally’ ‘GPArotation’ ‘PMCMR’ ‘R6’ ‘afex’ ‘car’
      ‘ggridges’ ‘lavaan’ ‘lsmeans’ ‘multcomp’ ‘mvnormtest’ ‘psych’ ‘vcd’
      ‘vcdExtra’
      All declared Imports should be used.
    ```

# jmvcore

Version: 0.8

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RProtoBuf’
    ```

# joineRML

Version: 0.3.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'technical.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `biblatex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.17 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs   4.9Mb
    ```

# jose

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘openssl:::derive_pubkey’ ‘openssl:::ecdsa_key_build’
      ‘openssl:::ecdsa_pubkey_build’ ‘openssl:::pubkey_type’
      ‘openssl:::read_input’ ‘openssl:::rsa_key_build’
      ‘openssl:::rsa_pubkey_build’
      See the note in ?`:::` about the use of this operator.
    ```

# JOUSBoost

Version: 2.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'JOUS.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algorithm.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 \usepackage
                    {algorithmicx}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘doParallel’
      All declared Imports should be used.
    ```

# jpmesh

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

# jpndistrict

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 188 marked UTF-8 strings
    ```

# jqr

Version: 1.0.0

## In both

*   checking whether package ‘jqr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/jqr/new/jqr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘jqr’ ...
** package ‘jqr’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
Using PKG_LIBS=-ljq
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libjq was not found.
On Ubuntu 14.04 or 16.04 you can use the PPA:
  sudo add-apt-repository -y ppa:opencpu/jq
  sudo apt-get update
  sudo apt-get install libjq-dev
On other sytems try installing:
 * deb: libjq-dev (Debian, Ubuntu 16.10 and up).
 * rpm: jq-devel (Fedora, EPEL)
 * csw: libjq_dev (Solaris)
 * brew: jq (OSX)
If  is already installed set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘jqr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/jqr/new/jqr.Rcheck/jqr’

```
### CRAN

```
* installing *source* package ‘jqr’ ...
** package ‘jqr’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
Using PKG_LIBS=-ljq
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libjq was not found.
On Ubuntu 14.04 or 16.04 you can use the PPA:
  sudo add-apt-repository -y ppa:opencpu/jq
  sudo apt-get update
  sudo apt-get install libjq-dev
On other sytems try installing:
 * deb: libjq-dev (Debian, Ubuntu 16.10 and up).
 * rpm: jq-devel (Fedora, EPEL)
 * csw: libjq_dev (Solaris)
 * brew: jq (OSX)
If  is already installed set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘jqr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/jqr/old/jqr.Rcheck/jqr’

```
# JSM

Version: 0.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.0Mb
      sub-directories of 1Mb or more:
        libs  20.6Mb
    ```

# jsonlite

Version: 1.5

## In both

*   checking compiled code ... NOTE
    ```
    File ‘jsonlite/libs/jsonlite.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_ReadConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# jtools

Version: 0.8.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ReporteRs’, ‘arm’, ‘effects’, ‘rockchalk’, ‘pequod’, ‘MuMIn’
    ```

# JuliaCall

Version: 0.9.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: rmarkdown::render("./tests/testthat/Rmd_test.Rmd", output_file = tmp) at testthat/test_rmd.R:7
      2: setwd(dirname(tools::file_path_as_absolute(input)))
      3: dirname(tools::file_path_as_absolute(input))
      4: tools::file_path_as_absolute(input)
      5: stop(gettextf("file '%s' does not exist", x), domain = NA)
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 4
      1. Error: test of the basic functionality (@test_basic.R#5) 
      2. Error: test of the error handling functionality (@test_error.R#5) 
      3. Error: test of functionality related to julia_package (@test_julia_package.R#5) 
      4. Error: test juliacall in rmd (@test_rmd.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# jwutil

Version: 1.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 439 SKIPPED: 9 FAILED: 1
      1. Failure: Package Style (@test-lint.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# kableExtra

Version: 0.5.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘magick’
    ```

# karyoploteR

Version: 1.2.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘regioneR’ ‘GenomicRanges’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'bezier'
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    kpPlotMarkers: no visible global function definition for 'strwidth'
    Undefined global functions or variables:
      strwidth
    Consider adding
      importFrom("graphics", "strwidth")
    to your NAMESPACE file.
    ```

# keras

Version: 2.0.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# kernelboot

Version: 0.1.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Failure: multivariate Gaussian kernel (@test_multivar-gaussian.R#20) --------
      `x` not equal to `y`.
      Attributes: < Length mismatch: comparison on first 1 components >
      
      2. Failure: multivariate kernels (@test_multivar-kd.R#30) ----------------------
      `x` not equal to `y`.
      Attributes: < Length mismatch: comparison on first 1 components >
      
      testthat results ================================================================
      OK: 375 SKIPPED: 1 FAILED: 2
      1. Failure: multivariate Gaussian kernel (@test_multivar-gaussian.R#20) 
      2. Failure: multivariate kernels (@test_multivar-kd.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# keyring

Version: 1.0.0

## In both

*   checking whether package ‘keyring’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/keyring/new/keyring.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘keyring’ ...
** package ‘keyring’ successfully unpacked and MD5 sums checked
Could not find libsecret headers or libs.
On Ubuntu, you need to install libsecret-1-dev via apt.
On RedHat, Fedora, and CentOS, you need to install libsecret-devel via yum or dnf.
Note that in addition to libsecret, you either need pkg-config or set the
LIBSECRET_CFLAGS and LIBSECRET_LIBS environment variables.
ERROR: configuration failed for package ‘keyring’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/keyring/new/keyring.Rcheck/keyring’

```
### CRAN

```
* installing *source* package ‘keyring’ ...
** package ‘keyring’ successfully unpacked and MD5 sums checked
Could not find libsecret headers or libs.
On Ubuntu, you need to install libsecret-1-dev via apt.
On RedHat, Fedora, and CentOS, you need to install libsecret-devel via yum or dnf.
Note that in addition to libsecret, you either need pkg-config or set the
LIBSECRET_CFLAGS and LIBSECRET_LIBS environment variables.
ERROR: configuration failed for package ‘keyring’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/keyring/old/keyring.Rcheck/keyring’

```
# kimisc

Version: 0.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > test_check("kimisc")
      Loading required package: kimisc
      testthat results ================================================================
      OK: 54 SKIPPED: 15 FAILED: 0
      > test_examples()
      Error in tools::Rd_db(package = package) : 
        argument 'package' must be of length 1
      Calls: test_examples -> %||% -> test_examples_installed -> <Anonymous>
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘knitr’
    ```

# kmcudaR

Version: 1.0.0

## In both

*   checking whether package ‘kmcudaR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/kmcudaR/new/kmcudaR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘kmcudaR’ ...
** package ‘kmcudaR’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
Checking for C++ Compiler
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking "Checking environment variable CUDA_HOME"... "CUDA_HOME not set; using highest version found "
checking for /bin/nvcc... no
configure: error: "NVCC not found; check CUDA install"
ERROR: configuration failed for package ‘kmcudaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/kmcudaR/new/kmcudaR.Rcheck/kmcudaR’

```
### CRAN

```
* installing *source* package ‘kmcudaR’ ...
** package ‘kmcudaR’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
Checking for C++ Compiler
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking "Checking environment variable CUDA_HOME"... "CUDA_HOME not set; using highest version found "
checking for /bin/nvcc... no
configure: error: "NVCC not found; check CUDA install"
ERROR: configuration failed for package ‘kmcudaR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/kmcudaR/old/kmcudaR.Rcheck/kmcudaR’

```
# Kmisc

Version: 0.5.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    pp_plot : <anonymous>: no visible global function definition for ‘rgb’
    rcpp_apply_generator: no visible global function definition for
      ‘packageVersion’
    rcpp_tapply_generator: no visible global function definition for
      ‘packageVersion’
    read.cb: no visible global function definition for ‘read.table’
    remove_na: no visible global function definition for ‘complete.cases’
    size: no visible global function definition for ‘object.size’
    write.cb: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      anova capture.output coef colorRampPalette complete.cases dev.off
      kmeans object.size packageVersion par qbeta read.table rgb svg
      write.table
    Consider adding
      importFrom("grDevices", "colorRampPalette", "dev.off", "rgb", "svg")
      importFrom("graphics", "par")
      importFrom("stats", "anova", "coef", "complete.cases", "kmeans",
                 "qbeta")
      importFrom("utils", "capture.output", "object.size", "packageVersion",
                 "read.table", "write.table")
    to your NAMESPACE file.
    ```

# kmodR

Version: 0.1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    C_zero : <anonymous>: no visible global function definition for ‘runif’
    get_extra_centroid_index: no visible global function definition for
      ‘head’
    get_within_cluster_ss: no visible global function definition for
      ‘aggregate’
    kmod: no visible global function definition for ‘head’
    kmod: no visible global function definition for ‘tail’
    Undefined global functions or variables:
      aggregate head runif tail
    Consider adding
      importFrom("stats", "aggregate", "runif")
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
    ```

# knockoff

Version: 0.2.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    knockoff.filter: no visible global function definition for ‘rnorm’
    random_problem : y.sample: no visible global function definition for
      ‘rnorm’
    rnorm_matrix: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      rnorm
    Consider adding
      importFrom("stats", "rnorm")
    to your NAMESPACE file.
    ```

# knor

Version: 0.0-2

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# kokudosuuchi

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 47 marked UTF-8 strings
    ```

# komadown

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘knitr’
      All declared Imports should be used.
    ```

# koRpus

Version: 0.10-2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'koRpus_vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `apacite.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.4 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘rkward’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        R   7.2Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 22852 marked UTF-8 strings
    ```

# KraljicMatrix

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘tibble’
      All declared Imports should be used.
    ```

# kselection

Version: 0.2.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    kselection: no visible global function definition for ‘txtProgressBar’
    kselection: no visible global function definition for
      ‘setTxtProgressBar’
    plot.Kselection: no visible global function definition for ‘plot’
    plot.Kselection: no visible global function definition for ‘lines’
    plot.Kselection: no visible global function definition for ‘legend’
    Undefined global functions or variables:
      legend lines plot setTxtProgressBar txtProgressBar
    Consider adding
      importFrom("graphics", "legend", "lines", "plot")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# labelled

Version: 1.0.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘memisc’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘memisc’
    ```

# Lambda4

Version: 3.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘GPArotation’ ‘mice’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    lambda1: no visible global function definition for ‘cov2cor’
    lambda2: no visible global function definition for ‘cov2cor’
    lambda3: no visible global function definition for ‘cov2cor’
    lambda3: no visible binding for global variable ‘sd’
    lambda5: no visible global function definition for ‘cov2cor’
    lambda6: no visible global function definition for ‘cov2cor’
    omega.tot: no visible global function definition for ‘cov2cor’
    omega.tot: no visible global function definition for ‘factanal’
    quant.lambda4: no visible global function definition for ‘cov2cor’
    quant.lambda4: no visible global function definition for ‘runif’
    quant.lambda4: no visible global function definition for ‘quantile’
    raju: no visible global function definition for ‘cov2cor’
    raju: no visible global function definition for ‘runif’
    user.lambda4: no visible global function definition for ‘runif’
    user.lambda4: no visible binding for global variable ‘sd’
    Undefined global functions or variables:
      complete cov cov2cor factanal median mice quantile runif sd
    Consider adding
      importFrom("stats", "cov", "cov2cor", "factanal", "median", "quantile",
                 "runif", "sd")
    to your NAMESPACE file.
    ```

# lamW

Version: 1.3.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘gsl’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# largeVis

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        CATCH_CHECK( testAlias() == 90 )
      with expansion:
        88 == 90
      
      ===============================================================================
      test cases:  2 |  1 passed |  1 failed
      assertions: 32 | 12 passed | 20 failed
      
      
      testthat results ================================================================
      OK: 147 SKIPPED: 2 FAILED: 1
      1. Failure: Catch unit tests pass (@test-cpp.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        libs          14.9Mb
        testdata       1.8Mb
        vignettedata   2.0Mb
    ```

# lawn

Version: 0.4.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘maps’ ‘geojsonio’
    ```

# leaflet

Version: 1.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        htmlwidgets   4.5Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# learningCurve

Version: 1.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘scales’ ‘tidyverse’
      All declared Imports should be used.
    ```

# LedPred

Version: 1.10.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking R code for possible problems ... NOTE
    ```
    .plotCostGamma: no visible global function definition for ‘title’
    .plotCostGamma: no visible global function definition for ‘points’
    mapFeaturesToCRMs: no visible global function definition for
      ‘write.table’
    mapFeaturesToCRMs: no visible global function definition for
      ‘read.table’
    mapFeaturesToCRMs: no visible global function definition for
      ‘download.file’
    scoreData: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      download.file points read.table title write.table
    Consider adding
      importFrom("graphics", "points", "title")
      importFrom("utils", "download.file", "read.table", "write.table")
    to your NAMESPACE file.
    ```

# lfl

Version: 1.4

## In both

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'cbind.fsets':
      ‘cbind.fsets’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# LiblineaR.ACF

Version: 1.94-2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘LiblineaR’
    ```

# lidR

Version: 1.3.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EBImage’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘memoise’
      All declared Imports should be used.
    ```

# LinearizedSVR

Version: 1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    LinearizedSVRTrain: no visible global function definition for ‘kmeans’
    sigma.est: no visible global function definition for ‘median’
    sigma.est: no visible global function definition for ‘dist’
    Undefined global functions or variables:
      dist kmeans median
    Consider adding
      importFrom("stats", "dist", "kmeans", "median")
    to your NAMESPACE file.
    ```

# lingtypology

Version: 1.0.8

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 118 marked UTF-8 strings
    ```

# LinkageMapView

Version: 2.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RColorBrewer’
      All declared Imports should be used.
    ```

# LinkedMatrix

Version: 1.2.0

## In both

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'cbind.ColumnLinkedMatrix':
      ‘cbind.ColumnLinkedMatrix’
    
    S3 methods shown with full name in documentation object 'cbind.RowLinkedMatrix':
      ‘cbind.RowLinkedMatrix’
    
    S3 methods shown with full name in documentation object 'rbind.ColumnLinkedMatrix':
      ‘rbind.ColumnLinkedMatrix’
    
    S3 methods shown with full name in documentation object 'rbind.RowLinkedMatrix':
      ‘rbind.RowLinkedMatrix’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# Linnorm

Version: 2.0.8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: library(matrixStats) at testthat/test_Misc_Stats.R:3
      2: stop(txt, domain = NA)
      
      2. Error: (unknown) (@test_SkewVar.R#3) ----------------------------------------
      there is no package called 'matrixStats'
      1: library(matrixStats) at testthat/test_SkewVar.R:3
      2: stop(txt, domain = NA)
      
      testthat results ================================================================
      OK: 6 SKIPPED: 0 FAILED: 2
      1. Error: (unknown) (@test_Misc_Stats.R#3) 
      2. Error: (unknown) (@test_SkewVar.R#3) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        doc    1.9Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    Linnorm.HClust: no visible binding for global variable ‘x’
    Linnorm.HClust: no visible binding for global variable ‘y’
    Linnorm.HClust: no visible binding for global variable ‘xend’
    Linnorm.HClust: no visible binding for global variable ‘yend’
    Linnorm.HClust: no visible binding for global variable ‘cluster’
    Linnorm.HClust: no visible binding for global variable ‘X1’
    Linnorm.HClust: no visible binding for global variable ‘X2’
    Linnorm.HVar: no visible binding for global variable ‘SD’
    Linnorm.HVar: no visible binding for global variable ‘group’
    Undefined global functions or variables:
      SD X1 X2 cluster group x xend y yend
    ```

# lintr

Version: 1.0.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 545 SKIPPED: 0 FAILED: 2
      1. Error: it calls unlink with the filename if given a file (@test-cache.R#3) 
      2. Error: it calls unlink with the directory if given a file (@test-cache.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# liquidSVM

Version: 1.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(liquidSVM)
      > 
      > orig <- options(liquidSVM.warn.suboptimal=FALSE, liquidSVM.default.threads=1)
      > 
      > test_check("liquidSVM")
      1. Failure: quick threads (@test-quick.R#184) ----------------------------------
      `b["user.self"]/b["elapsed"]` is not strictly more than 1.5. Difference: -0.153
      
      testthat results ================================================================
      OK: 185 SKIPPED: 5 FAILED: 1
      1. Failure: quick threads (@test-quick.R#184) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘mlr’ ‘ParamHelpers’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        doc    2.2Mb
        libs   7.7Mb
    ```

# liteq

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Failure: ensure_db (@test-db.R#12) ------------------------------------------
      `ensure_db(db)` produced warnings.
      
      2. Failure: ensure_queue (@test-queue.R#21) ------------------------------------
      `q <- ensure_queue("foo", db = db)` produced warnings.
      
      testthat results ================================================================
      OK: 505 SKIPPED: 10 FAILED: 2
      1. Failure: ensure_db (@test-db.R#12) 
      2. Failure: ensure_queue (@test-queue.R#21) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# lme4

Version: 1.1-14

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/AAAtest-all.R’ failed.
    Last 13 lines of output:
      2: compare(act$val, exp$val, ..., check.attributes = FALSE)
      3: compare.default(act$val, exp$val, ..., check.attributes = FALSE)
      4: all.equal(x, y, ...)
      5: all.equal.list(x, y, ...)
      6: all.equal(target[[i]], current[[i]], check.attributes = check.attributes, use.names = use.names, 
             ...)
      7: all.equal.numeric(target[[i]], current[[i]], check.attributes = check.attributes, 
             use.names = use.names, ...)
      
      testthat results ================================================================
      OK: 731 SKIPPED: 1 FAILED: 1
      1. Error: basic intercept + slope '||' works (@test-doubleVertNotation.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 26.8Mb
      sub-directories of 1Mb or more:
        doc        1.5Mb
        libs      21.7Mb
        testdata   1.5Mb
    ```

# lmeresampler

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘boot’
      All declared Imports should be used.
    ```

# lmmpar

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mnormt’
      All declared Imports should be used.
    ```

# log4r

Version: 0.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    available.loglevels: no visible global function definition for
      ‘setNames’
    Undefined global functions or variables:
      setNames
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# LOLA

Version: 1.6.0

## In both

*   checking examples ... ERROR
    ```
    ...
         1     chr1   [ 3190581,  3191428]      *
         2     chr1   [ 8130439,  8131887]      *
         3     chr1   [10593123, 10594209]      *
         4     chr1   [10732070, 10733118]      *
         5     chr1   [10757664, 10758631]      *
       ...      ...                    ...    ...
      1335     chrX [139380916, 139382199]      *
      1336     chrX [139593502, 139594774]      *
      1337     chrX [139674499, 139675403]      *
      1338     chrX [147829016, 147830159]      *
      1339     chrX [150407692, 150409052]      *
    
    -------
    seqinfo: 23 sequences from an unspecified genome; no seqlengths
    > 
    > res = runLOLA(userSets, userUniverse, regionDB, cores=1)
    Calculating unit set overlaps...
    Calculating universe set overlaps...
    Error in loadNamespace(name) : there is no package called ‘reshape2’
    Calls: runLOLA ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: reshape2::melt
      5: getExportedValue(pkg, name)
      6: asNamespace(ns)
      7: getNamespace(ns)
      8: tryCatch(loadNamespace(name), error = function(e) stop(e))
      9: tryCatchList(expr, classes, parentenv, handlers)
      10: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      11: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 96 SKIPPED: 0 FAILED: 1
      1. Error: runLOLA (@test_all.R#57) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 50-51 (gettingStarted.Rmd) 
    Error: processing vignette 'gettingStarted.Rmd' failed with diagnostics:
    there is no package called 'reshape2'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘simpleCache’ ‘qvalue’
    ```

*   checking R code for possible problems ... NOTE
    ```
    readCollectionAnnotation: no visible global function definition for
      ‘setNames’
    readCollectionFiles: no visible global function definition for
      ‘write.table’
    runLOLA: no visible global function definition for ‘fisher.test’
    write.tsv: no visible global function definition for ‘write.table’
    writeCombinedEnrichment: no visible global function definition for
      ‘write.table’
    writeDataTableSplitByColumn : <anonymous>: no visible global function
      definition for ‘write.table’
    Undefined global functions or variables:
      fisher.test setNames write.table
    Consider adding
      importFrom("stats", "fisher.test", "setNames")
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

# loon

Version: 1.1.0

## In both

*   checking whether package ‘loon’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/loon/new/loon.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘loon’ ...
** package ‘loon’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** demo
** inst
** preparing package for lazy loading
Warning: no DISPLAY variable so Tk is not available
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded
Warning: no DISPLAY variable so Tk is not available
Error: package or namespace load failed for ‘loon’:
 .onLoad failed in loadNamespace() for 'loon', details:
  call: structure(.External(.C_dotTcl, ...), class = "tclObj")
  error: [tcl] couldn't connect to display "".

Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/loon/new/loon.Rcheck/loon’

```
### CRAN

```
* installing *source* package ‘loon’ ...
** package ‘loon’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** demo
** inst
** preparing package for lazy loading
Warning: no DISPLAY variable so Tk is not available
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded
Warning: no DISPLAY variable so Tk is not available
Error: package or namespace load failed for ‘loon’:
 .onLoad failed in loadNamespace() for 'loon', details:
  call: structure(.External(.C_dotTcl, ...), class = "tclObj")
  error: [tcl] couldn't connect to display "".

Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/loon/old/loon.Rcheck/loon’

```
# LowWAFOMSobol

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        extdata   4.5Mb
        libs      1.3Mb
    ```

# lplyr

Version: 0.1.6

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > rename(xs, x0 = x1)
    $x0
    [1] 1 2 3
    
    $x2
    [1] 2 3 4 5
    
    $x3
    $x3[[1]]
    [1] "alpha"
    
    $x3[[2]]
    [1] "beta"  "gamma"
    
    
    > select(xs, -x3)
    Error in select.list(xs, -x3) : 
      select.list() cannot be used non-interactively
    Calls: select -> select.list
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    
    Attaching package: 'lplyr'
    
    The following object is masked from 'package:dplyr':
    
        pull
    
    Quitting from lines 22-30 (lplyr-vignette.Rmd) 
    Error: processing vignette 'lplyr-vignette.Rmd' failed with diagnostics:
    select.list() cannot be used non-interactively
    Execution halted
    ```

# lubridate

Version: 1.6.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > stamp("Jan 01")(D)
    Multiple formats matched: "%b %y"(0), "%b %d"(1), "Jan %H"(1), "Jan %m"(1), "Jan %y"(1)
    Using: "%b %y"
    [1] "Apr 10" "Apr 10" "Apr 10" "Apr 10" "Mär 10"
    > stamp("Sunday, May 1, 2000", locale = "en_US")(D)
    Warning in Sys.setlocale("LC_TIME", locale) :
      OS reports request to set locale to "en_US" cannot be honored
    Using: "Sunday, May %m, %Y"
    [1] "Sunday, May 04, 2010" "Sunday, May 04, 2010" "Sunday, May 04, 2010"
    [4] "Sunday, May 04, 2010" "Sunday, May 03, 2010"
    > stamp("Sun Aug 5")(D) #=> "Sun Aug 04" "Sat Aug 04" "Fri Aug 04" "Thu Aug 04" "Wed Aug 03"
    Multiple formats matched: "Sun %b %d"(1), "Sun Aug %m"(1)
    Using: "Sun %b %d"
    [1] "Sun Apr 04" "Sun Apr 03" "Sun Apr 02" "Sun Apr 01" "Sun Mär 31"
    > stamp("12/31/99")(D)              #=> "06/09/11"
    Using: "%m/%d/%y"
    [1] "04/04/10" "04/03/10" "04/02/10" "04/01/10" "03/31/10"
    > stamp("Sunday, May 1, 2000 22:10", locale = "en_US")(D)
    Error in stamp("Sunday, May 1, 2000 22:10", locale = "en_US") : 
      Couldn't guess formats of: Sunday, May 1, 2000 22:10
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘chron’ ‘timeDate’ ‘zoo’ ‘xts’ ‘its’ ‘tis’ ‘timeSeries’ ‘fts’
      ‘tseries’
    ```

# Luminescence

Version: 0.7.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RLumModel’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RLumModel’
    ```

# LW1949

Version: 1.1.0

## In both

*   checking whether package ‘LW1949’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/LW1949/new/LW1949.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘zoo’
    ```

# M3D

Version: 1.10.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotMethProfile: no visible global function definition for ‘plot’
    plotMethProfile: no visible global function definition for ‘lines’
    plotMethProfile: no visible global function definition for ‘points’
    plotMethProfile: no visible global function definition for ‘title’
    plotMethSampleProfiles: no visible global function definition for
      ‘plot’
    plotMethSampleProfiles: no visible global function definition for
      ‘lines’
    plotMethSampleProfiles: no visible global function definition for
      ‘points’
    plotMethSampleProfiles: no visible global function definition for
      ‘title’
    pvals: no visible global function definition for ‘p.adjust’
    pvals_lite: no visible global function definition for ‘p.adjust’
    Undefined global functions or variables:
      lines p.adjust plot points setTxtProgressBar title txtProgressBar
    Consider adding
      importFrom("graphics", "lines", "plot", "points", "title")
      importFrom("stats", "p.adjust")
      importFrom("utils", "setTxtProgressBar", "txtProgressBar")
    to your NAMESPACE file.
    ```

# macleish

Version: 0.3.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DBI’
      All declared Imports should be used.
    ```

# mafs

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘cmprsk’ ‘colorspace’ ‘etm’ ‘fracdiff’ ‘gtable’ ‘munsell’
      ‘numDeriv’ ‘plyr’ ‘quadprog’ ‘scales’ ‘timeDate’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# MANOVA.RM

Version: 0.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    11: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))
    12: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
    13: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    14: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    15: block_exec(params)
    16: call_block(x)
    17: process_group.block(group)
    18: process_group(group)
    19: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    20: process_file(text, output)
    21: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
    22: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
    23: vweave_rmarkdown(...)
    24: engine$weave(file, quiet = quiet, encoding = enc)
    25: doTryCatch(return(expr), name, parentenv, handler)
    26: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    27: tryCatchList(expr, classes, parentenv, handlers)
    28: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    29: buildVignettes(dir = "/home/muelleki/git/R/testthat/revdep/checks/MANOVA.RM/new/MANOVA.RM.Rcheck/vign_test/MANOVA.RM")
    An irrecoverable exception occurred. R is aborting now ...
    Segmentation fault (core dumped)
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘nparLD’
    ```

# mapr

Version: 0.3.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-that.R’ failed.
    Last 13 lines of output:
      9: request_build("POST", hu$url, body_config(body, match.arg(encode)), as.request(config), 
             ...)
      10: as.request(config)
      11: gist_auth()
      12: stop("In non-interactive environments, please set GITHUB_PAT env to a GitHub", " access token (https://help.github.com/articles/creating-an-access-token-for-command-line-use)", 
             call. = FALSE)
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 1
      1. Error: map_gist works as expected (@test-map_gist.R#13) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      closing unused connection 3 (/home/muelleki/tmp/Rtmp8FYUzj/file55975f1cb316.geojson) 
      Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 164 marked UTF-8 strings
    ```

# markmyassignment

Version: 0.6.1

## Newly broken

*   checking whether package ‘markmyassignment’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/markmyassignment/new/markmyassignment.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

## Installation

### Devel

```
* installing *source* package ‘markmyassignment’ ...
** package ‘markmyassignment’ successfully unpacked and MD5 sums checked
** R
** inst
** preparing package for lazy loading
Error in get(name, envir = asNamespace(pkg), inherits = FALSE) : 
  object 'make_label' not found
Error : unable to load R code in package ‘markmyassignment’
ERROR: lazy loading failed for package ‘markmyassignment’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/markmyassignment/new/markmyassignment.Rcheck/markmyassignment’

```
### CRAN

```
* installing *source* package ‘markmyassignment’ ...
** package ‘markmyassignment’ successfully unpacked and MD5 sums checked
** R
** inst
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
* DONE (markmyassignment)

```
# markovchain

Version: 0.6.9.8-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   8.5Mb
    ```

# mason

Version: 0.2.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ggplot2’, ‘pander’, ‘pixiedust’
    ```

# MAST

Version: 1.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        data   3.7Mb
        doc    1.9Mb
    ```

# MatchIt

Version: 3.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgenoud’
      All declared Imports should be used.
    ```

# mathpix

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘texPreview’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# Matrix.utils

Version: 0.9.6

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘dplyr’, ‘plyr’, ‘reshape2’, ‘reshape’
    ```

# MaxContrastProjection

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘EBImage’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mbest

Version: 0.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘logistf’, ‘brglm’
    ```

# MCbiclust

Version: 1.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        data   3.2Mb
        doc    4.9Mb
    ```

# mcIRT

Version: 0.41

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    reshMG : <anonymous> : <anonymous>: no visible global function
      definition for ‘model.matrix’
    reshMG : <anonymous> : <anonymous>: no visible global function
      definition for ‘model.frame’
    reshMG : <anonymous> : <anonymous>: no visible binding for global
      variable ‘na.pass’
    startV_nlmMG: no visible global function definition for ‘as.relistable’
    startV_nrmMG: no visible global function definition for ‘as.relistable’
    stdrdize_hist: no visible global function definition for
      ‘weighted.mean’
    Undefined global functions or variables:
      abline as.relistable axis box dnorm layout legend lines model.frame
      model.matrix na.pass par pchisq plot points relist symbols text
      weighted.mean
    Consider adding
      importFrom("graphics", "abline", "axis", "box", "layout", "legend",
                 "lines", "par", "plot", "points", "symbols", "text")
      importFrom("stats", "dnorm", "model.frame", "model.matrix", "na.pass",
                 "pchisq", "weighted.mean")
      importFrom("utils", "as.relistable", "relist")
    to your NAMESPACE file.
    ```

# mcMST

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘parallelMap’ ‘reshape2’
      All declared Imports should be used.
    ```

# mco

Version: 1.0-15.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘scatterplot3d’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plot.nsga2: no visible global function definition for ‘plot’
    plot.nsga2: no visible global function definition for ‘lines’
    plot.nsga2: no visible global function definition for ‘pairs’
    plot.nsga2.collection: no visible global function definition for
      ‘devAskNewPage’
    plot.nsga2.collection: no visible binding for global variable ‘plot’
    Undefined global functions or variables:
      devAskNewPage lines pairs plot
    Consider adding
      importFrom("grDevices", "devAskNewPage")
      importFrom("graphics", "lines", "pairs", "plot")
    to your NAMESPACE file.
    ```

# MEAL

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    correlationMethSNPs: no visible binding for global variable 'num_cores'
    prepareMethylationSet: no visible global function definition for
      'colData'
    Undefined global functions or variables:
      colData num_cores
    ```

# meaRtools

Version: 1.0.1

## In both

*   checking whether package ‘meaRtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/meaRtools/new/meaRtools.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        extdata   3.9Mb
        libs      1.4Mb
    ```

# medmod

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘ggplot2’ ‘lavaan’
      All declared Imports should be used.
    ```

# metagear

Version: 0.4

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘EBImage’ ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# metagenomeFeatures

Version: 1.8.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        extdata   6.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .mgDb_annotateFeatures: no visible binding for global variable
      ‘db_keys’
    .select.taxa: no visible binding for global variable ‘Keys’
    .select.taxa: no visible binding for global variable ‘.’
    aggregate_taxa: no visible binding for global variable ‘.’
    aggregate_taxa: no visible binding for global variable ‘index’
    vignette_pheno_data: no visible global function definition for
      ‘read.csv’
    Undefined global functions or variables:
      . Keys db_keys index read.csv
    Consider adding
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# methylKit

Version: 1.2.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   1.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘KernSmooth’
      All declared Imports should be used.
    ```

# MethylMix

Version: 2.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘digest’
      All declared Imports should be used.
    ```

# mets

Version: 1.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.9Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs  16.7Mb
        misc   1.1Mb
    ```

# MFPCA

Version: 1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘refund’
    ```

# mgsa

Version: 1.24.0

## In both

*   checking for GNU extensions in Makefiles ... WARNING
    ```
    Found the following file(s) containing GNU extensions:
      src/Makevars
      src/Makevars.in
    Portable Makefiles do not use GNU extensions such as +=, :=, $(shell),
    $(wildcard), ifeq ... endif. See section ‘Writing portable packages’ in
    the ‘Writing R Extensions’ manual.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘mgsa’ for: ‘show’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘gplots’ which was already attached by Depends.
      Please remove these calls from your code.
    'library' or 'require' calls in package code:
      ‘DBI’ ‘GO.db’ ‘RSQLite’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespaces in Imports field not imported from:
      ‘stats’ ‘utils’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘gplots’ ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘callNextMethod’
    initialize,MgsaSets: no visible global function definition for ‘relist’
    mgsa,character-MgsaSets: no visible global function definition for
      ‘na.omit’
    plot,MgsaResults: no visible global function definition for
      ‘split.screen’
    plot,MgsaResults: no visible global function definition for ‘screen’
    plot,MgsaResults: no visible global function definition for ‘par’
    plot,MgsaResults: no visible global function definition for ‘barplot2’
    plot,MgsaResults: no visible global function definition for
      ‘close.screen’
    Undefined global functions or variables:
      barplot2 callNextMethod close.screen na.omit new par read.delim
      relist screen sd split.screen str
    Consider adding
      importFrom("graphics", "close.screen", "par", "screen", "split.screen")
      importFrom("methods", "callNextMethod", "new")
      importFrom("stats", "na.omit", "sd")
      importFrom("utils", "read.delim", "relist", "str")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# micompr

Version: 1.0.2

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘micompr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: assumptions.cmpoutput
    > ### Title: Get assumptions for parametric tests performed on output
    > ###   comparisons
    > ### Aliases: assumptions.cmpoutput
    > 
    > ### ** Examples
    > 
    > 
    > # Create a cmpoutput object from the provided datasets
    > cmp <- cmpoutput("All", 0.9, pphpc_ok$data[["All"]], pphpc_ok$obs_lvls)
    > 
    > # Get the assumptions for the parametric tests performed in cmp
    > acmp <- assumptions(cmp)
    sROC 0.1-2 loaded
    MANOVA assumptions require 'MVN' and 'biotools' packages.
    Error in `*tmp*`[[i]] : subscript out of bounds
    Calls: assumptions -> assumptions.cmpoutput
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      subscript out of bounds
      1: assumptions(mic1a) at testthat/test_micomp.R:281
      2: assumptions.micomp(mic1a)
      3: lapply(obj, function(x) assumptions(x))
      4: FUN(X[[i]], ...)
      5: assumptions(x)
      6: assumptions.cmpoutput(x)
      
      testthat results ================================================================
      OK: 363 SKIPPED: 0 FAILED: 2
      1. Error: assumptions.cmpoutput creates the correct object (@test_cmpoutput.R#214) 
      2. Error: micomp assumptions have the correct properties (@test_micomp.R#281) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 341-342 (paper.Rnw) 
    Error: processing vignette 'paper.Rnw' failed with diagnostics:
    subscript out of bounds
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘biotools’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biotools’
    ```

# microdemic

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: check_key(key)
      4: stop("API key needed for Microsoft Academic")
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 7
      1. Error: ma_evaluate works as expected (@test-abstract.R#7) 
      2. Error: ma_calchist works as expected (@test-calchist.R#7) 
      3. Error: ma_evaluate works as expected (@test-evaluate.R#7) 
      4. Error: ma_graph_search works as expected (@test-graph_search.R#19) 
      5. Error: ma_interpret works as expected (@test-interpret.R#7) 
      6. Error: ma_search works as expected (@test-search.R#7) 
      7. Error: ma_similarity works as expected (@test-similarity.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mimager

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 41 SKIPPED: 0 FAILED: 1
      1. Failure: lint free (@test-style.r#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# MIMOSA

Version: 1.14.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    Undefined global functions or variables:
      AnnotatedDataFrame ExpressionSet PTID Proportion Proportion_REF
      RefTreat aes as.formula callNextMethod contour coord_trans dbeta dexp
      ecdf facet_grid facet_wrap fisher.test geom_boxplot geom_jitter
      geom_line ggtitle gray.colors huber image is.formula ldply legend
      lines mclapply model.frame na.omit optim p.adjust pData<- par pbeta
      plot points position_jitter qbeta quantile rbeta rbinom read.table
      rmultinom rnorm runif scale_color_brewer scale_fill_brewer show terms
      title var
    Consider adding
      importFrom("grDevices", "gray.colors")
      importFrom("graphics", "contour", "image", "legend", "lines", "par",
                 "plot", "points", "title")
      importFrom("methods", "callNextMethod", "show")
      importFrom("stats", "as.formula", "dbeta", "dexp", "ecdf",
                 "fisher.test", "model.frame", "na.omit", "optim",
                 "p.adjust", "pbeta", "qbeta", "quantile", "rbeta", "rbinom",
                 "rmultinom", "rnorm", "runif", "terms", "var")
      importFrom("utils", "read.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# MInt

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    read_design: no visible global function definition for ‘model.frame’
    read_design: no visible global function definition for ‘read.table’
    read_design: no visible global function definition for ‘model.matrix’
    read_response: no visible global function definition for ‘read.table’
    update_beta: no visible global function definition for ‘update’
    update_beta: no visible global function definition for ‘glm’
    update_beta: no visible global function definition for ‘poisson’
    Undefined global functions or variables:
      glm model.frame model.matrix poisson read.table update
    Consider adding
      importFrom("stats", "glm", "model.frame", "model.matrix", "poisson",
                 "update")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

# minval

Version: 0.8

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 21-25 (MINVALintroduction.Rmd) 
    Error: processing vignette 'MINVALintroduction.Rmd' failed with diagnostics:
    there is no package called 'sybilSBML'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sybilSBML’
    ```

# miRBaseVersions.db

Version: 0.99.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 43.3Mb
      sub-directories of 1Mb or more:
        extdata  43.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘AnnotationDbi:::dbObjectName’
      See the note in ?`:::` about the use of this operator.
    ```

# miRNAmeConverter

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    MiRNANameConverter,ANY: no visible global function definition for ‘new’
    Undefined global functions or variables:
      new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# miRNAtap

Version: 1.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘miRNAtap.db’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    getTargetsFromSource: no visible binding for global variable
      ‘miRNAtap.db’
    getTargetsFromSource : <anonymous>: no visible binding for global
      variable ‘miRNAtap.db’
    translate: no visible binding for global variable ‘miRNAtap.db’
    Undefined global functions or variables:
      miRNAtap.db
    ```

# MixSIAR

Version: 3.1.7

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘MixSIAR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mixsiar_gui
    > ### Title: Run the GUI version of MixSIAR
    > ### Aliases: mixsiar_gui
    > 
    > ### ** Examples
    > 
    > mixsiar_gui()
    Error in mixsiar_gui() : 
      *** gWidgetsRGtk2 package not able to be loaded. ***
            If 'library('gWidgetsRGtk2')' does not work, MixSIAR GUI will not run.
            On Windows/Linux, try 'install.packages('gWidgetsRGtk2')'.
            On Mac, close R, download and install GTK+ from:
            http://r.research.att.com/#other. Then install latest X11 application
            (xQuartz) from http://xquartz.macosforge.org/landing/.
    
            If installing GTK+ continues to be problematic, consider using the
            script version of MixSIAR. See manual for help and examples.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gWidgetsRGtk2’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rjags’
      All declared Imports should be used.
    ```

# mizer

Version: 0.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘Species’
    plotM2,MizerSim: no visible binding for global variable ‘w’
    plotM2,MizerSim: no visible binding for global variable ‘value’
    plotM2,MizerSim: no visible binding for global variable ‘Species’
    plotSpectra,MizerSim: no visible binding for global variable ‘w’
    plotSpectra,MizerSim: no visible binding for global variable ‘value’
    plotSpectra,MizerSim: no visible binding for global variable ‘Species’
    plotYield,MizerSim: no visible binding for global variable ‘time’
    plotYield,MizerSim: no visible binding for global variable ‘value’
    plotYield,MizerSim: no visible binding for global variable ‘Species’
    plotYieldGear,MizerSim: no visible binding for global variable ‘time’
    plotYieldGear,MizerSim: no visible binding for global variable ‘value’
    plotYieldGear,MizerSim: no visible binding for global variable
      ‘Species’
    plotYieldGear,MizerSim: no visible binding for global variable ‘gear’
    Undefined global functions or variables:
      Species combn gear lm time value w
    Consider adding
      importFrom("stats", "lm", "time")
      importFrom("utils", "combn")
    to your NAMESPACE file.
    ```

# mkin

Version: 0.9.46.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
    ```

# mlr

Version: 2.11

## In both

*   checking whether package ‘mlr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BBmisc::isFALSE’ by ‘backports::isFALSE’ when loading ‘mlr’
    See ‘/home/muelleki/git/R/testthat/revdep/checks/mlr/new/mlr.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘mlrMBO’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘mlrMBO’
    ```

# mlrMBO

Version: 1.1.0

## In both

*   checking whether package ‘mlrMBO’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BBmisc::isFALSE’ by ‘backports::isFALSE’ when loading ‘mlrMBO’
    See ‘/home/muelleki/git/R/testthat/revdep/checks/mlrMBO/new/mlrMBO.Rcheck/00install.out’ for details.
    ```

# MMWRweek

Version: 0.1.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MMWRweek-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: MMWRweek
    > ### Title: MMWR day, week, and year
    > ### Aliases: MMWRweek
    > 
    > ### ** Examples
    > 
    > y = as.Date(paste(1999:2011, "-12-31", sep = ""))
    > cbind(y, MMWRweek(y))
    Error in NextMethod(.Generic) : 
      NAs are not allowed in subscripted assignments
    Calls: cbind ... MMWRweek -> get_start_date -> [<- -> [<-.Date -> NextMethod
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run-all.R’ failed.
    Last 13 lines of output:
         NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, 
         NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, NA_real_, 
         NA_real_, NA_real_, NA_real_, NA_real_), class = "Date"))
      4: NextMethod(.Generic)
      ────────────────────────────────────────────────────────────────────────────────
      
      ═ Results ══════════════════════════════════════════════════════════════════════
      OK:       14
      Failed:   5
      Warnings: 0
      Skipped:  0
      Error: Test failures
      In addition: Warning message:
      Placing tests in `inst/tests` is deprecated. Please use `tests/testthat` instead 
      Execution halted
    ```

# mnis

Version: 0.2.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat-a.R’ failed.
    Complete output:
      > library(testthat)
      > library(mnis)
      > 
      > test_check("mnis", filter= "a")
      1. Failure: mnis_additional returns expected format (@test_additional.R#80) ----
      `xi` has length 296, not length 285.
      
      testthat results ================================================================
      OK: 98 SKIPPED: 0 FAILED: 1
      1. Failure: mnis_additional returns expected format (@test_additional.R#80) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mockery

Version: 0.3.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 89 SKIPPED: 0 FAILED: 1
      1. Error: error for long call is formatted well (@test-mock-object.R#62) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# modelr

Version: 0.1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lme4’, ‘rstanarm’
    ```

# modelwordcloud

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# modeval

Version: 0.1.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Warning: Deprecated
    Quitting from lines 112-115 (modeval.Rmd) 
    Error: processing vignette 'modeval.Rmd' failed with diagnostics:
    the argument has already been evaluated
    Execution halted
    ```

# MODIStsp

Version: 1.3.3.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# modmarg

Version: 0.6.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: compare(act$val, exp$val, ...)
      3: compare.numeric(act$val, exp$val, ...)
      4: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      5: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      6: stop(gettextf("'%s' must be logical", "check.attributes"), domain = NA)
      
      testthat results ================================================================
      OK: 150 SKIPPED: 0 FAILED: 3
      1. Error: levels are calculated correctly despite different input types (@test_overall.R#30) 
      2. Error: effects are calculated correctly despite different input types (@test_overall.R#73) 
      3. Error: Setting base level works (@test_overall.R#386) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# modules

Version: 0.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        code_path = file.path(loc, "R")
                  ^
      tests/testthat/test-watcher.R:50:13: style: Use <-, not =, for assignment.
        test_path = file.path(loc, "tests")
                  ^
      tests/testthat/test-watcher.R:56:59: style: Put spaces around all infix operators.
          system(paste0("bash -c 'sleep 1;", command, "'"), wait=FALSE)
                                                               ~^~
      
      testthat results ================================================================
      OK: 63 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-lintr.R#3) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# momentuHMM

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        doc    1.8Mb
        libs   3.5Mb
    ```

# Momocs

Version: 1.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        doc    2.3Mb
    ```

# MonetDBLite

Version: 0.4.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: In .Internal(gc(verbose, reset)) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      3: In .Internal(gc(verbose, reset)) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      4: In .Internal(gc(verbose, reset)) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      5: In .Internal(gc(verbose, reset)) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      6: In cb$putconst(fun) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      7: In cb$putconst(fun) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      8: In .Internal(gc(verbose, reset)) :
        Connection is garbage-collected, use dbDisconnect() to avoid this.
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# monkeylearn

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             invokeRestart("muffleMessage")
         })
      5: eval_bare(get_expr(quo), get_env(quo))
      6: monkeylearn_extract(request = c("  ", "I do not know what the horse is doing in the house"))
      7: monkeylearn_check(output)
      8: stop("HTTP failure: ", req$status_code, "\n", content(req)$detail, call. = FALSE)
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 3
      1. Error: monkeylearn_parse returns a data.frame with a data.frame as attribute (@test_output.R#7) 
      2. Error: No error if no results from the extractor call (@test_output.R#55) 
      3. Error: Blank texts are handled properly (@test_text_size.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# monocle

Version: 2.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in (ap %*% ab)/(ab %*% ab) * ab :
      Recycling array of length 1 in array-vector arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Quitting from lines 758-768 (monocle-vignette.Rnw) 
    Error: processing vignette 'monocle-vignette.Rnw' failed with diagnostics:
    Unknown vertex selected
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    assign_cell_lineage: no visible global function definition for ‘nei’
    buildBranchCellDataSet: no visible global function definition for ‘nei’
    clusterCells: no visible binding for global variable ‘rho’
    clusterCells: no visible binding for global variable ‘delta’
    count_leaf_descendents: no visible global function definition for ‘nei’
    cth_classifier_cds: no visible global function definition for ‘nei’
    cth_classifier_cell: no visible global function definition for ‘nei’
    diff_test_helper: no visible binding for global variable ‘Size_Factor’
    extract_good_ordering: no visible global function definition for ‘nei’
    fit_model_helper: no visible binding for global variable ‘Size_Factor’
    get_next_node_id: no visible binding for '<<-' assignment to
      ‘next_node’
    get_next_node_id: no visible binding for global variable ‘next_node’
    make_canonical: no visible global function definition for ‘nei’
    measure_diameter_path: no visible global function definition for ‘nei’
    orderCells: no visible binding for '<<-' assignment to ‘next_node’
    project2MST: no visible global function definition for ‘nei’
    Undefined global functions or variables:
      Size_Factor delta nei next_node rho
    ```

# moonBook

Version: 0.1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    num_summary: no visible binding for global variable ‘sd’
    num_summary: no visible binding for global variable ‘median’
    num_summary: no visible binding for global variable ‘mad’
    num_summary: no visible binding for global variable ‘IQR’
    num_summary: no visible binding for global variable ‘fivenum’
    Undefined global functions or variables:
      IQR abline anova as.formula chisq.test coef confint density
      fisher.test fivenum kruskal.test legend lines lm mad median na.omit
      par plot points rainbow rect resid sd segments shapiro.test t.test
      terms text var.test write.csv write.table xtabs
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "legend", "lines", "par", "plot",
                 "points", "rect", "segments", "text")
      importFrom("stats", "IQR", "anova", "as.formula", "chisq.test", "coef",
                 "confint", "density", "fisher.test", "fivenum",
                 "kruskal.test", "lm", "mad", "median", "na.omit", "resid",
                 "sd", "shapiro.test", "t.test", "terms", "var.test",
                 "xtabs")
      importFrom("utils", "write.csv", "write.table")
    to your NAMESPACE file.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'cbind.mytable':
      ‘cbind.mytable’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# MoonlightR

Version: 1.2.0

## In both

*   checking whether package ‘MoonlightR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/MoonlightR/new/MoonlightR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   3.1Mb
        doc    2.6Mb
    ```

# morgenstemning

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ametrine : <anonymous>: no visible global function definition for
      ‘approx’
    ametrine: no visible global function definition for ‘rgb’
    isolum : <anonymous>: no visible global function definition for
      ‘approx’
    isolum: no visible global function definition for ‘rgb’
    morgenstemning : <anonymous>: no visible global function definition for
      ‘approx’
    morgenstemning: no visible global function definition for ‘rgb’
    Undefined global functions or variables:
      approx rgb
    Consider adding
      importFrom("grDevices", "rgb")
      importFrom("stats", "approx")
    to your NAMESPACE file.
    ```

# Morpho

Version: 2.5.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.1Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        libs  10.8Mb
    ```

# mosaic

Version: 1.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘manipulate’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cubature’
    ```

# mosaicModel

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘caret’ ‘ggformula’ ‘knitr’ ‘testthat’ ‘tidyverse’
      All declared Imports should be used.
    ```

# mousetrap

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        libs   4.5Mb
    ```

# move

Version: 3.0.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: methods::is(object)
      4: move(ff)
      5: move(ff)
      6: .local(x, ...)
      7: read.csv(x, header = TRUE, sep = ",", dec = ".", stringsAsFactors = T)
      8: read.table(file = file, header = header, sep = sep, quote = quote, dec = dec, fill = fill, 
             comment.char = comment.char, ...)
      9: stop("no lines available in input")
      
      testthat results ================================================================
      OK: 425 SKIPPED: 60 FAILED: 1
      1. Error: minimal move file (@test.move.R#154) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mregions

Version: 0.1.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘leaflet’
    ```

# mrgsolve

Version: 0.8.9

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# mscstexta4r

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: mscstexta4r:::textaGetURL() at testthat/testSentiment.R:62
      2: stop("mscstexta4r: REST API URL not found in package environment.", call. = FALSE)
      
      testthat results ================================================================
      OK: 14 SKIPPED: 0 FAILED: 7
      1. Error: (unknown) (@testDetectLanguages.R#7) 
      2. Error: textaDetectTopics returns expected result structure (@testDetectTopics.R#16) 
      3. Error: textaDetectTopics with bad params fails with an error (@testDetectTopics.R#112) 
      4. Error: textaKeyPhrases returns expected result structure (@testKeyPhrases.R#33) 
      5. Error: textaKeyPhrases fails with an error (@testKeyPhrases.R#61) 
      6. Error: textaSentiment returns expected result structure (@testSentiment.R#33) 
      7. Error: textaSentiment fails with an error (@testSentiment.R#62) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# mscsweblm4r

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 11 SKIPPED: 0 FAILED: 9
      1. Error: (unknown) (@testBreakIntoWords.R#7) 
      2. Error: weblmCalculateConditionalProbability returns expected result structure (@testCalculateConditionalProbability.R#10) 
      3. Error: weblmCalculateConditionalProbability fails with an error (@testCalculateConditionalProbability.R#38) 
      4. Error: weblmCalculateJointProbability returns expected result structure (@testCalculateJointProbability.R#10) 
      5. Error: weblmCalculateJointProbability fails with an error (@testCalculateJointProbability.R#34) 
      6. Error: weblmGenerateNextWords returns expected result structure (@testGenerateNextWords.R#7) 
      7. Error: weblmGenerateNextWords fails with an error (@testGenerateNextWords.R#34) 
      8. Error: weblmListAvailableModels returns expected result structure (@testListAvailableModels.R#7) 
      9. Error: weblmListAvailableModels fails with an error (@testListAvailableModels.R#23) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# msde

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 30 SKIPPED: 0 FAILED: 20
      1. Error: drift.R == drift.cpp 
      2. Error: diff.R == diff.cpp 
      3. Error: sim.R == sim.cpp 
      4. Error: ll.R == ll.cpp 
      5. Error: lpi.R == lpi.cpp 
      6. Error: drift.R == drift.cpp 
      7. Error: diff.R == diff.cpp 
      8. Error: sim.R == sim.cpp 
      9. Error: ll.R == ll.cpp 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# MSGARCH

Version: 1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 46.7Mb
      sub-directories of 1Mb or more:
        libs  41.0Mb
        test   5.4Mb
    ```

# MSGFgui

Version: 1.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘xlsx’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    renderMzID: no visible global function definition for ‘modifications’
    renderMzID: no visible global function definition for ‘database’
    server: no visible global function definition for ‘scans’
    server : <anonymous>: no visible global function definition for
      ‘createWorkbook’
    server : <anonymous>: no visible global function definition for
      ‘createSheet’
    server : <anonymous>: no visible global function definition for
      ‘addDataFrame’
    server : <anonymous>: no visible global function definition for
      ‘saveWorkbook’
    server : <anonymous>: no visible global function definition for
      ‘write.table’
    Undefined global functions or variables:
      addDataFrame createSheet createWorkbook database density dnorm loess
      modifications optimize peptides predict read.csv saveWorkbook scans
      write.table
    Consider adding
      importFrom("stats", "density", "dnorm", "loess", "optimize", "predict")
      importFrom("utils", "read.csv", "write.table")
    to your NAMESPACE file.
    ```

# MSGFplus

Version: 1.10.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ProtGenerics’
      All declared Imports should be used.
    ```

# MSnbase

Version: 2.2.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in has_utility("convert", "ImageMagick") :
      ImageMagick not installed or not in PATH
    Quitting from lines 1022-1029 (MSnbase-demo.Rnw) 
    Error: processing vignette 'MSnbase-demo.Rnw' failed with diagnostics:
    package or namespace load failed for 'Rdisop' in dyn.load(file, DLLpath = DLLpath, ...):
     unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/MSnbase/Rdisop/libs/Rdisop.so':
      libRcppClassic.so: cannot open shared object file: No such file or directory
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        data   1.9Mb
        doc    4.3Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Laurent Gatto <lg390@cam.ac.uk> [aut, cre]
      Johannes Rainer <Johannes.Rainer@eurac.edu> [aut, cre]
      Sebastian Gibb <mail@sebastiangibb.de> [aut, cre]
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Biobase:::.showAnnotatedDataFrame’ ‘MALDIquant:::.estimateNoise’
      ‘MALDIquant:::.localMaxima’ ‘MALDIquant:::.movingAverage’
      ‘MALDIquant:::.savitzkyGolay’
      See the note in ?`:::` about the use of this operator.
    ```

# msPurity

Version: 1.2.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

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
    removeIsotopes: no visible global function definition for ‘write.csv’
    rsde: no visible global function definition for ‘sd’
    snrFilter: no visible global function definition for ‘median’
    stde: no visible global function definition for ‘sd’
    stderror: no visible global function definition for ‘sd’
    averageSpectra,purityD: no visible binding for global variable ‘i’
    subtract,purityD: no visible binding for global variable ‘i’
    validate,purityA: no visible global function definition for ‘head’
    writeOut,purityD: no visible global function definition for ‘write.csv’
    Undefined global functions or variables:
      abline alli approxfun as.dist dev.off dist dnorm fix head i idx
      legend lines median mtch mtchi na.omit parallel plot png points
      purity read.csv scanid sd text variable write.csv
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "legend", "lines", "plot", "points",
                 "text")
      importFrom("stats", "approxfun", "as.dist", "dist", "dnorm", "median",
                 "na.omit", "sd")
      importFrom("utils", "fix", "head", "read.csv", "write.csv")
    to your NAMESPACE file.
    ```

# msqc1

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        doc   7.2Mb
    ```

# mudata

Version: 0.1

## In both

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'rbind.mudata':
      ‘rbind.mudata’
    
    S3 methods shown with full name in documentation object 'rbind.qtag.long':
      ‘rbind.qtag.long’ ‘rbind.qtag’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# MultiAssayExperiment

Version: 1.2.1

## In both

*   checking examples ... WARNING
    ```
    ...
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
      Warning: 'RangedRaggedAssay' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘BiocGenerics:::replaceSlots’
      See the note in ?`:::` about the use of this operator.
    ```

# MultiBD

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   7.9Mb
    ```

# MultiDataSet

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in buildVignettes(dir = "/home/muelleki/git/R/testthat/revdep/checks/MultiDataSet/new/MultiDataSet.Rcheck/vign_test/MultiDataSet") :
      Files named as vignettes but with no recognized vignette engine:
       ‘vignettes/MultiDataSet_3party_Integration.Rmd’
    (Is a VignetteBuilder field missing?)
    Error: processing vignette 'MultiDataSet.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Biobase:::assayDataEnvLock’ ‘Biobase:::assayDataStorageMode’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    add_methy,MultiDataSet-RatioSet: no visible global function definition
      for ‘rowData’
    Undefined global functions or variables:
      rowData
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    '::' or ':::' import not declared from: ‘limma’
    'library' or 'require' call not declared from: ‘limma’
    ```

# multilevelPSA

Version: 1.2.4

## In both

*   checking R code for possible problems ... NOTE
    ```
    missing.plot: possible error in theme(axis.text.x = element_text(size =
      6, angle = -90, hjust = 0.5, vjust = 0.5), axis.text.x =
      element_blank(), axis.ticks = element_blank()): formal argument
      "axis.text.x" matched by multiple actual arguments
    ```

# MutationalPatterns

Version: 1.2.1

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    Warning in self$trans$transform(x) : NaNs produced
    Warning: Transformation introduced infinite values in continuous y-axis
    Warning: Removed 8 rows containing missing values (geom_point).
    Using by, region as id variables
    Warning: Ignoring unknown aesthetics: ymax
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Introduction_to_MutationalPatterns.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `apacite.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.5 \bibliographystyle
                          {apacite}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# mvnfast

Version: 0.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# mwaved

Version: 1.1.5

## In both

*   checking whether package ‘mwaved’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/mwaved/new/mwaved.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mwaved’ ...
** package ‘mwaved’ successfully unpacked and MD5 sums checked
checking for Rscript... yes
configure: Checking if FFTW3 library is available using pkg-config
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for FFTW... no
FFTW library not found, please install fftw-3-3-3 or greater
configure: creating ./config.status
config.status: creating src/Makevars
** libs
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/muelleki/git/R/testthat/revdep/library/mwaved/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c mwaved.cpp -o mwaved.o
mwaved.cpp:1:19: fatal error: fftw3.h: No such file or directory
compilation terminated.
/usr/lib/R/etc/Makeconf:168: recipe for target 'mwaved.o' failed
make: *** [mwaved.o] Error 1
make: *** Waiting for unfinished jobs....
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/muelleki/git/R/testthat/revdep/library/mwaved/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RcppExports.cpp -o RcppExports.o
ERROR: compilation failed for package ‘mwaved’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/mwaved/new/mwaved.Rcheck/mwaved’

```
### CRAN

```
* installing *source* package ‘mwaved’ ...
** package ‘mwaved’ successfully unpacked and MD5 sums checked
checking for Rscript... yes
configure: Checking if FFTW3 library is available using pkg-config
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for FFTW... no
FFTW library not found, please install fftw-3-3-3 or greater
configure: creating ./config.status
config.status: creating src/Makevars
** libs
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/muelleki/git/R/testthat/revdep/library/mwaved/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c mwaved.cpp -o mwaved.o
mwaved.cpp:1:19: fatal error: fftw3.h: No such file or directory
compilation terminated.
/usr/lib/R/etc/Makeconf:168: recipe for target 'mwaved.o' failed
make: *** [mwaved.o] Error 1
make: *** Waiting for unfinished jobs....
g++  -I/usr/share/R/include -DNDEBUG  -I"/home/muelleki/git/R/testthat/revdep/library/mwaved/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RcppExports.cpp -o RcppExports.o
ERROR: compilation failed for package ‘mwaved’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/mwaved/old/mwaved.Rcheck/mwaved’

```
# mycor

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    mycor.formula: no visible global function definition for ‘terms’
    mylm: no visible global function definition for ‘cor.test’
    mylm: no visible global function definition for ‘lm’
    panel.cor: no visible global function definition for ‘par’
    panel.cor: no visible global function definition for ‘cor’
    panel.cor: no visible global function definition for ‘strwidth’
    panel.cor: no visible global function definition for ‘text’
    panel.hist: no visible global function definition for ‘par’
    panel.hist: no visible global function definition for ‘hist’
    panel.hist: no visible global function definition for ‘rect’
    plot.mycor: no visible global function definition for ‘pairs’
    plot.mycor: no visible binding for global variable ‘panel.smooth’
    Undefined global functions or variables:
      cor cor.test hist lm pairs panel.smooth par rect strwidth terms text
    Consider adding
      importFrom("graphics", "hist", "pairs", "panel.smooth", "par", "rect",
                 "strwidth", "text")
      importFrom("stats", "cor", "cor.test", "lm", "terms")
    to your NAMESPACE file.
    ```

# myTAI

Version: 0.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    2.7Mb
    ```

# mzID

Version: 1.14.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    mzID: no visible binding for global variable ‘i’
    Undefined global functions or variables:
      i
    ```

# nabor

Version: 0.4.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        libs   8.6Mb
    ```

# nandb

Version: 0.2.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘autothresholdr’ ‘EBImage’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# NanoStringDiff

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘optimize’
    glmfit.full: no visible global function definition for ‘lm’
    glmfit.full: no visible global function definition for ‘median’
    glmfit.full: no visible global function definition for ‘IQR’
    glmfit.full : get.phi: no visible global function definition for
      ‘optimize’
    glmfit.full : get.beta.full: no visible global function definition for
      ‘optim’
    glmfit.reduce: no visible global function definition for ‘lm’
    glmfit.reduce : get.beta.reduce: no visible global function definition
      for ‘optim’
    rnegbinom: no visible global function definition for ‘rpois’
    rnegbinom: no visible global function definition for ‘rgamma’
    Undefined global functions or variables:
      IQR glm lm median optim optimize p.adjust pchisq poisson read.table
      rgamma rpois
    Consider adding
      importFrom("stats", "IQR", "glm", "lm", "median", "optim", "optimize",
                 "p.adjust", "pchisq", "poisson", "rgamma", "rpois")
      importFrom("utils", "read.table")
    to your NAMESPACE file.
    ```

# NanoStringQCPro

Version: 1.8.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    countsInBlankSamples_verticalPlot: no visible global function
      definition for ‘png’
    countsInBlankSamples_verticalPlot: no visible global function
      definition for ‘dev.off’
    geneClustering: no visible global function definition for ‘png’
    geneClustering: no visible global function definition for ‘dev.off’
    negCtrlsByLane_verticalPlot: no visible global function definition for
      ‘png’
    negCtrlsByLane_verticalPlot: no visible global function definition for
      ‘dev.off’
    previewPNG: no visible global function definition for ‘png’
    previewPNG: no visible global function definition for ‘dev.off’
    sampleClustering,RccSet: no visible global function definition for
      ‘png’
    sampleClustering,RccSet: no visible global function definition for
      ‘dev.off’
    Undefined global functions or variables:
      dev.off png
    Consider adding
      importFrom("grDevices", "dev.off", "png")
    to your NAMESPACE file.
    ```

# narray

Version: 0.2.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: compare(act$val, exp$val, ...)
      3: compare.numeric(act$val, exp$val, ...)
      4: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      5: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      6: stop(gettextf("'%s' must be logical", "check.attributes"), domain = NA)
      
      testthat results ================================================================
      OK: 62 SKIPPED: 0 FAILED: 3
      1. Error: summarizing elements (@test_map.r#31) 
      2. Error: vector (@test_rep.r#4) 
      3. Error: everything (@test_subset.r#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# nat

Version: 1.8.9

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      2: compare(act$val, exp$val, ..., check.attributes = FALSE)
      3: compare.default(act$val, exp$val, ..., check.attributes = FALSE)
      4: all.equal(x, y, ...)
      5: all.equal.list(x, y, ...)
      6: all.equal(target[[i]], current[[i]], check.attributes = check.attributes, use.names = use.names, 
             ...)
      7: all.equal.dotprops(target[[i]], current[[i]], check.attributes = check.attributes, 
             use.names = use.names, ...)
      
      testthat results ================================================================
      OK: 795 SKIPPED: 4 FAILED: 1
      1. Error: c.neuronlist behaves (@test-neuronlist.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# natserv

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: cli$get(query = query)
      4: private$make_url(self$url, self$handle, path, query)
      5: add_query(query, url)
      6: check_key(key)
      7: getOption("NatureServeKey", stop("You need an API key for NatureServe"))
      8: stop("You need an API key for NatureServe")
      
      testthat results ================================================================
      OK: 14 SKIPPED: 0 FAILED: 3
      1. Error: ns_data works as expected (@test-ns_data.R#6) 
      2. Error: ns_images works as expected (@test-ns_images.R#6) 
      3. Error: ns_search works as expected (@test-ns_search.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# nbc4va

Version: 1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘openVA’
    ```

# ncdfFlow

Version: 2.22.2

## In both

*   checking if this is a source package ... NOTE
    ```
    Found the following apparent object files/libraries:
      src/libwin/i386/libhdf5ForBioC-7.dll src/libwin/i386/libsz-2.dll
      src/libwin/x64/libhdf5ForBioC-7.dll src/libwin/x64/libsz-2.dll
    Object files/libraries should not be included in a source package.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘flowCore’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘parallel’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘BH’ ‘RcppArmadillo’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported objects imported by ':::' calls:
      ‘flowCore:::makeFCSparameters’ ‘flowCore:::readFCSgetPar’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ncdfFlowSet,flowSet: warning in assign(guid, new("flowFrame", exprs =
      matrix(numeric(0), nrow = 0, ncol = 0), parameters(x[[guid]]),
      description(x[[guid]])), env = e1): partial argument match of 'env'
      to 'envir'
    rbind2,ncdfFlowList-ANY : <anonymous> : <anonymous>: warning in
      assign(curSample, NA, env = indiceEnv): partial argument match of
      'env' to 'envir'
    read.ncdfFlowSet: no visible global function definition for ‘mclapply’
    Undefined global functions or variables:
      mclapply
    ```

# needy

Version: 0.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    BugReports field is not a suitable URL but contains an email address
      which will be used as from R 3.4.0
    ```

# nestedRanksTest

Version: 0.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    nestedRanksTest.default: no visible global function definition for
      ‘setNames’
    nestedRanksTest.default: no visible global function definition for
      ‘quantile’
    nestedRanksTest.formula: no visible global function definition for
      ‘terms’
    plot.htest_boot: no visible global function definition for ‘hist’
    plot.htest_boot: no visible global function definition for ‘abline’
    Undefined global functions or variables:
      abline hist quantile setNames terms
    Consider adding
      importFrom("graphics", "abline", "hist")
      importFrom("stats", "quantile", "setNames", "terms")
    to your NAMESPACE file.
    ```

# netdiffuseR

Version: 1.18.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   7.7Mb
    ```

# netReg

Version: 1.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 70.1Mb
      sub-directories of 1Mb or more:
        include  65.3Mb
        libs      4.5Mb
    ```

# NetRep

Version: 1.0.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        doc    3.0Mb
        libs   8.2Mb
    ```

# network

Version: 1.13.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ergm’
    ```

# NFP

Version: 0.99.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘NFPdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data   7.5Mb
    ```

# nima

Version: 0.4.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘survival’
      All declared Imports should be used.
    ```

# nimble

Version: 0.6-6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 26.4Mb
      sub-directories of 1Mb or more:
        CppCode       14.0Mb
        R              3.2Mb
        classic-bugs   1.6Mb
        include        5.6Mb
    ```

# nlmeU

Version: 0.70-3

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    Pwr.lme: no visible global function definition for ‘anova’
    Pwr.lme: no visible global function definition for ‘qf’
    Pwr.lme: no visible global function definition for ‘pf’
    logLik1.lme: no visible global function definition for ‘coef’
    logLik1.lme: no visible global function definition for ‘model.matrix’
    logLik1.lme: no visible global function definition for ‘predict’
    logLik1.lme: no visible global function definition for ‘formula’
    runScript: no visible binding for global variable ‘example’
    sigmaTolme: no visible global function definition for ‘vcov’
    simulateY.lme: no visible global function definition for ‘runif’
    simulateY.lme: no visible global function definition for ‘fitted’
    simulateY.lme: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      anova coef example fitted formula model.matrix pf predict qf rnorm
      runif vcov
    Consider adding
      importFrom("stats", "anova", "coef", "fitted", "formula",
                 "model.matrix", "pf", "predict", "qf", "rnorm", "runif",
                 "vcov")
      importFrom("utils", "example")
    to your NAMESPACE file.
    ```

# nloptr

Version: 1.0.4

## In both

*   checking line endings in shell scripts ... WARNING
    ```
    Found the following shell script(s) with CR or CRLF line endings:
      cleanup
    Non-Windows OSes require LF line endings.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rsolnp’
    ```

# NlsyLinks

Version: 2.0.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data      4.3Mb
        reports   2.3Mb
    ```

# nmaINLA

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: eval_bare(get_expr(quo), get_env(quo))
      
      2. Error: results are correct for fitting (network meta-analysis) function. (@test_first.R#69) 
      object 'fit.Smok.cons.INLA' not found
      1: expect_equivalent(round(fit.Smok.cons.INLA$d_params[, 1], 2), c(0.49, 0.84, 1.1)) at testthat/test_first.R:69
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 2
      1. Error: results are correct for fitting (pairiwise meta-analysis) function. (@test_first.R#30) 
      2. Error: results are correct for fitting (network meta-analysis) function. (@test_first.R#69) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

# NNLM

Version: 0.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   3.1Mb
    ```

# noaastormevents

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘hurricaneexposuredata’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RColorBrewer’ ‘XML’ ‘choroplethr’ ‘choroplethrMaps’ ‘data.table’
      ‘forcats’ ‘hurricaneexposure’ ‘plyr’
      All declared Imports should be used.
    ```

# nofrills

Version: 0.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             new_function(d$args, d$body, ..env)
         })(x = , y = 1, ... = , z = x + y, ~x + y + z, ~x + y + z)
      9: get_fn_declaration(...)
      10: get_exprs(...)
      11: validate(exprs_(...))
      12: abort("Only the body (as last argument) should be a formula")
      
      testthat results ================================================================
      OK: 87 SKIPPED: 0 FAILED: 3
      1. Error: formals can be spliced in as arguments (@test-quasiquotation.R#27) 
      2. Error: unquoting operators can be literally expressed (@test-quasiquotation.R#45) 
      3. Error: formals can be spliced in as arguments (@test-quasiquotation.R#76) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# NoiseFiltersR

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'NoiseFiltersR.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `stmaryrd.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.73 \usepackage
                    {url}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rJava’
      All declared Imports should be used.
    ```

# normr

Version: 1.2.0

## In both

*   checking whether package ‘normr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/normr/new/normr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘normr’ ...
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c normr_init.c -o normr_init.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c em.cpp -o em.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o normr.so RcppExports.o em.o normr_init.o -fopenmp -D_GLIBCXX_USE_C99 -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/normr/new/normr.Rcheck/normr/libs
** R
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/normr/bamsignals/libs/bamsignals.so':
  libhts.so.0: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘normr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/normr/new/normr.Rcheck/normr’

```
### CRAN

```
* installing *source* package ‘normr’ ...
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c normr_init.c -o normr_init.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -fopenmp -D_GLIBCXX_USE_C99 -I"/home/muelleki/git/R/testthat/revdep/library/normr/Rcpp/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c em.cpp -o em.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o normr.so RcppExports.o em.o normr_init.o -fopenmp -D_GLIBCXX_USE_C99 -L/usr/lib/R/lib -lR
installing to /home/muelleki/git/R/testthat/revdep/checks/normr/old/normr.Rcheck/normr/libs
** R
** inst
** preparing package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/home/muelleki/git/R/testthat/revdep/library/normr/bamsignals/libs/bamsignals.so':
  libhts.so.0: cannot open shared object file: No such file or directory
ERROR: lazy loading failed for package ‘normr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/normr/old/normr.Rcheck/normr’

```
# nscancor

Version: 0.6

## In both

*   checking R code for possible problems ... NOTE
    ```
    acor: no visible global function definition for ‘cor’
    macor: no visible global function definition for ‘cor’
    mcancor: no visible global function definition for ‘cor’
    mcc_inner: no visible global function definition for ‘rnorm’
    nscancor: no visible global function definition for ‘cor’
    nscc_inner: no visible global function definition for ‘rnorm’
    Undefined global functions or variables:
      cor rnorm
    Consider adding
      importFrom("stats", "cor", "rnorm")
    to your NAMESPACE file.
    ```

# nzelect

Version: 0.4.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6409 marked UTF-8 strings
    ```

# observer

Version: 0.1.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ensurer’, ‘validate’
    ```

# oce

Version: 0.9-22

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘oce-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: read.oce
    > ### Title: Read an Oceanographic Data File
    > ### Aliases: read.oce
    > 
    > ### ** Examples
    > 
    > 
    > library(oce)
    > x <- read.oce(system.file("extdata", "ctd.cnv", package="oce"))
    > plot(x) # summary with TS and profiles
    Error in if (!is.null(x@metadata$startTime) && 4 < nchar(x@metadata$startTime,  : 
      missing value where TRUE/FALSE needed
    Calls: plot -> plot -> .local
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        help   2.2Mb
    ```

# odbc

Version: 1.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("odbc")
      1. Failure: odbcListDrivers() returns available drivers (@test-drivers.R#7) ----
      `nrow(res) >= 1` isn't true.
      
      2. Failure: odbcListDataSources() returns available data sources (@test-drivers.R#14) 
      `nrow(res) >= 1` isn't true.
      
      testthat results ================================================================
      OK: 5 SKIPPED: 3 FAILED: 2
      1. Failure: odbcListDrivers() returns available drivers (@test-drivers.R#7) 
      2. Failure: odbcListDataSources() returns available data sources (@test-drivers.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# officer

Version: 0.1.8

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘officer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: slip_in_img
    > ### Title: append an image
    > ### Aliases: slip_in_img
    > 
    > ### ** Examples
    > 
    > library(magrittr)
    > img.file <- file.path( Sys.getenv("R_HOME"), "doc", "html", "logo.jpg" )
    > x <- read_docx() %>%
    +   body_add_par("R logo: ", style = "Normal") %>%
    +   slip_in_img(src = img.file, style = "strong", width = .3, height = .3)
    Error: file.exists(src) is not TRUE
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: freduce(value, `_function_list`)
      7: withVisible(function_list[[k]](value))
      8: function_list[[k]](value)
      9: ph_with_img(., type = "body", src = img.file, height = 1.06, width = 1.39)
      10: external_img(src, width = width/914400, height = height/914400)
      11: stopifnot(file.exists(src))
      12: stop(msg, call. = FALSE, domain = NA)
      
      testthat results ================================================================
      OK: 341 SKIPPED: 1 FAILED: 2
      1. Error: image add  (@test-docx-add.R#68) 
      2. Error: add img into placeholder (@test-pptx-add.R#67) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 180-190 (powerpoint.Rmd) 
    Error: processing vignette 'powerpoint.Rmd' failed with diagnostics:
    file.exists(src) is not TRUE
    Execution halted
    ```

# OLScurve

Version: 0.2.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘model.matrix’
    print.OLScurve: no visible global function definition for ‘cov’
    print.OLScurve: no visible global function definition for ‘cor’
    print.OLScurve: no visible global function definition for ‘sd’
    subjplot.OLScurve : plotOLScurve: no visible global function definition
      for ‘devAskNewPage’
    subjplot.OLScurve : plotOLScurve: no visible global function definition
      for ‘reshape’
    subjplot.OLScurve : plotOLScurve : mypanel: no visible global function
      definition for ‘gray’
    subjplot.OLScurve: no visible global function definition for
      ‘devAskNewPage’
    Undefined global functions or variables:
      as.formula cor cov devAskNewPage gray lm model.frame model.matrix
      na.omit predict reshape residuals sd
    Consider adding
      importFrom("grDevices", "devAskNewPage", "gray")
      importFrom("stats", "as.formula", "cor", "cov", "lm", "model.frame",
                 "model.matrix", "na.omit", "predict", "reshape",
                 "residuals", "sd")
    to your NAMESPACE file.
    ```

# OncoSimulR

Version: 2.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc    5.4Mb
        libs   4.9Mb
    ```

# OOBCurve

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘randomForest’ ‘ranger’
      All declared Imports should be used.
    ```

# openadds

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > test_check("openadds")
      Loading required package: openadds
      1. Failure: oa_search works (@test-oa_search.R#39) -----------------------------
      `length(dd$city)` not equal to 2.
      1/1 mismatches
      [1] 3 - 2 == 1
      
      testthat results ================================================================
      OK: 47 SKIPPED: 0 FAILED: 1
      1. Failure: oa_search works (@test-oa_search.R#39) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# opencage

Version: 0.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: `_f`(placename = placename, key = key, bounds = bounds, countrycode = countrycode, 
             language = language, limit = limit, min_confidence = min_confidence, no_annotations = no_annotations, 
             no_dedupe = no_dedupe, no_record = no_record, abbrv = abbrv)
      4: opencage_check(temp)
      5: stop("HTTP failure: ", req$status_code, "\n", message, call. = FALSE)
      
      testthat results ================================================================
      OK: 23 SKIPPED: 1 FAILED: 4
      1. Error: opencage_parse returns what it should for both functions (@test-opencage_parse.R#6) 
      2. Error: opencage_parse returns what it should for both functions with several parameters (@test-opencage_parse.R#40) 
      3. Error: opencage_parse deals well with resuls being NULL (@test-opencage_parse.R#72) 
      4. Error: the bounds argument is well taken into account (@test-opencage_parse.R#86) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 41-47 (opencage.Rmd) 
    Error: processing vignette 'opencage.Rmd' failed with diagnostics:
    HTTP failure: 403
    Invalid or missing api key (forbidden)
    Execution halted
    ```

# openCyto

Version: 1.14.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Loading required package: flowWorkspace
    Loading required package: flowCore
    Loading required package: ncdfFlow
    Loading required package: RcppArmadillo
    Loading required package: BH
    Quitting from lines 30-34 (HowToAutoGating.Rmd) 
    Error: processing vignette 'HowToAutoGating.Rmd' failed with diagnostics:
    there is no package called 'ggcyto'
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘flowWorkspace’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘parallel’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Namespace in Imports field not imported from: ‘flowViz’
      All declared Imports should be used.
    Unexported objects imported by ':::' calls:
      ‘flowClust:::.ellipsePoints’ ‘flowStats:::drvkde’
      ‘flowStats:::warpSetNCDF’ ‘flowWorkspace:::.cpp_addGate’
      ‘flowWorkspace:::.getAllDescendants’ ‘flowWorkspace:::trimWhiteSpace’
      ‘lattice:::updateList’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘groupBy’ ‘isCollapse’ ‘ppMethod’ ‘unlockNamespace’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘callNextMethod’
    Undefined global functions or variables:
      Subset abline as callNextMethod collapseDataForGating cov cov.wt
      cutree density dist dnorm ellipsoidGate embed exprs exprs<- extends
      filter filterList filters flowSet fsApply gating_args gating_method
      hclust hist isMultiPops kmeans legend lines median na.omit new par
      parameters<- parent points polygonGate pop predict preprocessing_args
      preprocessing_method pt qchisq qf quantile rainbow rectangleGate sd
      selectMethod smooth.spline text uniroot var weighted.mean
    Consider adding
      importFrom("grDevices", "rainbow")
      importFrom("graphics", "abline", "hist", "legend", "lines", "par",
                 "points", "text")
      importFrom("methods", "as", "callNextMethod", "extends", "new",
                 "selectMethod")
      importFrom("stats", "cov", "cov.wt", "cutree", "density", "dist",
                 "dnorm", "embed", "filter", "hclust", "kmeans", "median",
                 "na.omit", "predict", "pt", "qchisq", "qf", "quantile",
                 "sd", "smooth.spline", "uniroot", "var", "weighted.mean")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘ggcyto’
    ```

# OpenImageR

Version: 1.0.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   4.5Mb
    ```

# openxlsx

Version: 4.0.17

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# optimus

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             while (!is_null(x)) {
                 quo_splice(node_car(x), x, warn = warn)
                 x <- node_cdr(x)
             }
         })
      9: expr_type_of(.x)
      10: typeof(x)
      11: duplicate(quo)
      
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 1
      1. Error: find_optimal() stops with wrong data or arguments (@test-find_optimal.R#38) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# optiRum

Version: 0.37.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      label: unnamed-chunk-1
        ordinary text without R code
      
        ordinary text without R code
      
      label: unnamed-chunk-1
        ordinary text without R code
      
      testthat results ================================================================
      OK: 203 SKIPPED: 0 FAILED: 1
      1. Error: generatePDF - correct behaviour, DATED=FALSE,CLEANUP=TRUE, compiler=xelatex (@test-generatePDF.R#75) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# optmatch

Version: 0.9-7

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘CBPS’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'cbind.InfinitySparseMatrix':
      ‘cbind.InfinitySparseMatrix’ ‘rbind.InfinitySparseMatrix’
      ‘cbind.BlockedInfinitySparseMatrix’
      ‘rbind.BlockedInfinitySparseMatrix’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# optrdd

Version: 0.9

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: source("../../baselines/old.optrdd.R") at testthat/test_all.R:41
      2: file(filename, "r", encoding = encoding)
      
      2. Error: baseline local linear regression implementation works (@test_all.R#143) 
      cannot open the connection
      1: source("../../baselines/local.lin.reg.R") at testthat/test_all.R:143
      2: file(filename, "r", encoding = encoding)
      
      testthat results ================================================================
      OK: 44 SKIPPED: 1 FAILED: 2
      1. Error: results match legacy implementation (@test_all.R#41) 
      2. Error: baseline local linear regression implementation works (@test_all.R#143) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmosek’
    ```

# ordinal

Version: 2015.6-28

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'clm_intro.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algorithmic.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.14 \usepackage
                    [amsmath,thmmarks,standard,thref]{ntheorem}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# Organism.dplyr

Version: 1.2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘AnnotationDbi:::smartKeys’ ‘GenomicFeatures:::.exons_with_3utr’
      ‘GenomicFeatures:::.exons_with_5utr’
      ‘GenomicFeatures:::get_TxDb_seqinfo0’
      ‘S4Vectors:::extract_data_frame_rows’
      See the note in ?`:::` about the use of this operator.
    ```

# origami

Version: 0.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# oro.dicom

Version: 0.5.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    dicomTable: no visible global function definition for ‘txtProgressBar’
    dicomTable: no visible global function definition for
      ‘setTxtProgressBar’
    readDICOM: no visible global function definition for ‘txtProgressBar’
    readDICOM: no visible global function definition for
      ‘setTxtProgressBar’
    writeHeader: no visible global function definition for ‘write.table’
    Undefined global functions or variables:
      setTxtProgressBar txtProgressBar write.table
    Consider adding
      importFrom("utils", "setTxtProgressBar", "txtProgressBar",
                 "write.table")
    to your NAMESPACE file.
    ```

# oro.nifti

Version: 0.7.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘dcemriS4’ ‘fmri’ ‘oro.dicom’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        nifti   3.8Mb
    ```

# Oscope

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘quantile’
    PipeR : <anonymous>: no visible global function definition for
      ‘residuals’
    PipeR : <anonymous>: no visible global function definition for ‘lm’
    PipeShiftCDF : <anonymous>: no visible global function definition for
      ‘quantile’
    PipeShiftCDF : <anonymous>: no visible global function definition for
      ‘ecdf’
    SineOptim: no visible global function definition for ‘optim’
    scanK: no visible global function definition for ‘quantile’
    scanK: no visible global function definition for ‘dist’
    scanK : <anonymous>: no visible global function definition for ‘median’
    Undefined global functions or variables:
      abline coef cor dist ecdf lines lm median optim plot points quantile
      residuals setTxtProgressBar str txtProgressBar
    Consider adding
      importFrom("graphics", "abline", "lines", "plot", "points")
      importFrom("stats", "coef", "cor", "dist", "ecdf", "lm", "median",
                 "optim", "quantile", "residuals")
      importFrom("utils", "setTxtProgressBar", "str", "txtProgressBar")
    to your NAMESPACE file.
    ```

# osmdata

Version: 0.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc    2.8Mb
        libs   4.8Mb
    ```

# osmplotr

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc   5.9Mb
    ```

# packrat

Version: 0.4.8-1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 47 SKIPPED: 2 FAILED: 11
      1. Error: Bundle works when using R's internal tar (@test-bundle.R#14) 
      2. Error: Bundle works when omitting CRAN packages (@test-bundle.R#36) 
      3. Error: init creates project structure and installs dependencies (@test-packrat.R#19) 
      4. Error: restore ignores dirty packages (@test-packrat.R#35) 
      5. Error: restore installs missing packages (@test-packrat.R#48) 
      6. Error: snapshot captures new dependencies (@test-packrat.R#62) 
      7. Error: dependencies in library directories are ignored (@test-packrat.R#89) 
      8. Error: clean removes libraries and sources (@test-packrat.R#103) 
      9. Error: init works with multiple repos (@test-packrat.R#133) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘BiocInstaller’
    ```

# pacotest

Version: 0.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   6.9Mb
    ```

# Pade

Version: 0.1-4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pracma’
    ```

# pangaear

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > test_check("pangaear")
      Loading required package: pangaear
      1. Failure: fails well (@test-oai_functions.R#72) ------------------------------
      `pg_list_identifiers(from = 3)` threw an error with unexpected message.
      Expected match: "Invalid datestamp"
      Actual message: "OAI-PMH errors: badArgument: from/until invalid: Text '3' could not be parsed at index 0"
      
      testthat results ================================================================
      OK: 72 SKIPPED: 0 FAILED: 1
      1. Failure: fails well (@test-oai_functions.R#72) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# PanVizGenerator

Version: 1.4.0

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .travis.yml
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    panviz,character: no visible global function definition for ‘read.csv’
    panviz,matrix: no visible global function definition for ‘browseURL’
    Undefined global functions or variables:
      browseURL read.csv
    Consider adding
      importFrom("utils", "browseURL", "read.csv")
    to your NAMESPACE file.
    ```

# parallelDist

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

# parallelMap

Version: 1.3

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

# params

Version: 0.6.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘knitr’
    ```

# parlitools

Version: 0.2.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
    ```

# parsemsf

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘parsemsf-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: make_area_table
    > ### Title: Make a table of peptide areas
    > ### Aliases: make_area_table
    > 
    > ### ** Examples
    > 
    > make_area_table(parsemsf_example("test_db.msf"))
    Error: The dbplyr package is required to communicate with database backends.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5: src_sqlite(msf_file)
      6: check_dbplyr()
      7: check_pkg("dbplyr", "communicate with database backends", install = FALSE)
      8: glubort(NULL, "The {name} package is required to {reason}.", if (install) "\nPlease install it with `install.packages(\"{name}\")`")
      9: .abort(text)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 4
      1. Error: make_area_table creates a data frame with the correct column names (@test_make_area_table.R#16) 
      2. Error: make_pep_table creates a data frame with the correct column names (@test_make_pep_table.R#13) 
      3. Error: map_peptides creates a data frame with the correct column names (@test_map_peptides.R#16) 
      4. Error: (unknown) (@test_quantitate.R#9) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 20-25 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    The dbplyr package is required to communicate with database backends.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RSQLite’
      All declared Imports should be used.
    ```

# patentsview

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    ...
    
    List of 1
     $ patents:'data.frame':	25 obs. of  1 variable:
      ..$ assignees:List of 25
    
    $query_results
    #### Distinct entity counts across all downloadable pages of output:
    
    total_patent_count = 100,000
    > 
    > # Get all patent and assignee-level fields for the patents endpoint:
    > fields <- get_fields(endpoint = "patents",
    +                      groups = c("assignees", "patents"))
    > 
    > #...Then pass to search_pv:
    > search_pv(query = '{"_gte":{"patent_date":"2007-01-04"}}',
    +           fields = fields, endpoint = "patents")
    Error in ifelse(is_txt_html, custom_er(resp = resp, error_browser = error_browser),  : 
      Internal Server Error (HTTP 500).
    Calls: search_pv -> one_request -> throw_er -> ifelse -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             error_browser = error_browser, ...)
      5: throw_er(resp = resp, error_browser = error_browser)
      6: ifelse(is_txt_html, custom_er(resp = resp, error_browser = error_browser), httr::stop_for_status(resp))
      7: httr::stop_for_status(resp)
      
      testthat results ================================================================
      OK: 11 SKIPPED: 0 FAILED: 5
      1. Error: API returns expected df names for all endpoints (@test-search-pv.R#8) 
      2. Error: DSL-based query returns expected results (@test-search-pv.R#29) 
      3. Error: search_pv can pull all fields for all endpoints except locations (@test-search-pv.R#39) 
      4. Error: search_pv can return subent_cnts (@test-search-pv.R#63) 
      5. Error:  (@test-unnest-pv-data.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 22-25 (examples.Rmd) 
    Error: processing vignette 'examples.Rmd' failed with diagnostics:
    Internal Server Error (HTTP 500).
    Execution halted
    ```

# pathological

Version: 0.1-2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘R.utils’
    ```

# paxtoolsr

Version: 1.10.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 30.9Mb
      sub-directories of 1Mb or more:
        extdata   5.6Mb
        java     24.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    downloadFile: no visible global function definition for ‘URLencode’
    downloadFile: no visible global function definition for ‘read.table’
    downloadFile: no visible global function definition for ‘write.table’
    downloadPc2: no visible global function definition for ‘select.list’
    downloadSignedPC: no visible global function definition for
      ‘read.table’
    getPcRequest: no visible global function definition for ‘URLencode’
    readSifnx: no visible global function definition for ‘read.table’
    splitSifnxByPathway: no visible global function definition for
      ‘txtProgressBar’
    splitSifnxByPathway: no visible global function definition for
      ‘%dopar%’
    splitSifnxByPathway: no visible global function definition for
      ‘setTxtProgressBar’
    Undefined global functions or variables:
      %dopar% URLencode read.table select.list setTxtProgressBar
      txtProgressBar write.table
    Consider adding
      importFrom("utils", "URLencode", "read.table", "select.list",
                 "setTxtProgressBar", "txtProgressBar", "write.table")
    to your NAMESPACE file.
    ```

# Pbase

Version: 0.16.0

## In both

*   checking examples ... ERROR
    ```
    ...
    
    Attaching package: 'AnnotationFilter'
    
    The following object is masked from 'package:Gviz':
    
        feature
    
    > library(EnsDb.Hsapiens.v86)
    > edb <- EnsDb.Hsapiens.v86
    > 
    > ## Define a filter to retrieve all genes from chromosome Y
    > sqnf <- SeqNameFilter("Y")
    > ## Retrieve the proteins without protein domains but specify to retrieve in
    > ## addition the transcript biotype for the encoding transcripts and the gene
    > ## names
    > prts <- Proteins(edb, filter = sqnf, loadProteinDomains = FALSE,
    +                  columns = c("tx_biotype", "gene_name"))
    Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: Proteins ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      9: validObject(.Object)
      10: stop(msg, ": ", errors, domain = NA)
      
      testthat results ================================================================
      OK: 84 SKIPPED: 0 FAILED: 7
      1. Error: Proteins,EnsDb,missing constructor (@test_Proteins-ensembldb.R#9) 
      2. Error: Proteins,EnsDb,missing protein_id n:1 uniprot_id mapping (@test_Proteins-ensembldb.R#91) 
      3. Error: pfeatures (@test_Proteins-methods.R#185) 
      4. Error: .mapToGenome2 internal function (@test_mapToGenome-ensembldb.R#9) 
      5. Error: mapToGenome,Proteins,EnsDb (@test_mapToGenome-ensembldb.R#140) 
      6. Error: mapToGenome,Proteins,EnsDb with Uniprot IDs (@test_mapToGenome-ensembldb.R#183) 
      7. Error: .checkPcol (@test_utils.R#87) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Laurent Gatto <lg390@cam.ac.uk> [aut, cre]
      Johannes Rainer <Johannes.Rainer@eurac.edu> [aut, cre]
      Sebastian Gibb <mail@sebastiangibb.de> [aut, cre]
    ```

# pbo

Version: 1.3.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘foreach’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    dotplot.pbo: no visible global function definition for ‘reorder’
    pbo: no visible global function definition for ‘%dopar%’
    pbo: no visible global function definition for ‘foreach’
    pbo: no visible global function definition for ‘lm’
    xyplot.pbo: no visible global function definition for ‘ecdf’
    xyplot.pbo: no visible global function definition for ‘doubleYScale’
    xyplot.pbo: no visible global function definition for ‘reorder’
    Undefined global functions or variables:
      %dopar% doubleYScale ecdf foreach lm reorder
    Consider adding
      importFrom("stats", "ecdf", "lm", "reorder")
    to your NAMESPACE file.
    ```

# pcaExplorer

Version: 2.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.8Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    pcaExplorer: no visible binding for '<<-' assignment to
      ‘pcaexplorer_env’
    pcaExplorer : <anonymous>: no visible binding for global variable
      ‘airway’
    pcaExplorer : <anonymous>: no visible binding for global variable
      ‘pcaexplorer_env’
    Undefined global functions or variables:
      airway pcaexplorer_env
    ```

# PCHiCdata

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 344.9Mb
      sub-directories of 1Mb or more:
        data     156.4Mb
        extdata  188.3Mb
    ```

# pdp

Version: 0.6.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ICEbox’
    ```

# pdSpecEst

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# philr

Version: 1.2.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    name.balance: no visible global function definition for ‘as’
    vote.annotation: no visible global function definition for ‘is’
    Undefined global functions or variables:
      as is
    Consider adding
      importFrom("methods", "as", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘compositions’
    ```

# phosphonormalizer

Version: 1.0.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘MSnbase’
    ```

# phuse

Version: 0.1.4

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘phuse-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: build_script_df
    > ### Title: Build Script Index Dataset
    > ### Aliases: build_script_df
    > 
    > ### ** Examples
    > 
    >   r1 <- build_script_df()
    Warning in dir.create(r, recursive = TRUE) :
      cannot create dir '/Users', reason 'Permission denied'
    Warning in dir.create(repo_dir, recursive = TRUE) :
      cannot create dir '/Users', reason 'Permission denied'
     chr "Clone to  /Users/muelleki/myRepo/phuse-scripts"
    cloning into '/Users/muelleki/myRepo/phuse-scripts'...
    Error in clone(repo_url, repo_dir) : 
      Error in 'git2r_clone': failed to make directory '/Users': Permission denied
    Calls: build_script_df -> clone -> clone -> .Call
    Execution halted
    ```

# phylolm

Version: 2.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘surface’, ‘bayou’, ‘geiger’, ‘caper’
    ```

# phyloseq

Version: 1.20.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doParallel’
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' calls which should be '::':
      ‘ape:::node_depth_edgelength’ ‘ape:::node_height’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function calls to a different package:
      .C(ape:::node_depth_edgelength, ..., PACKAGE = "ape")
      .C(ape:::node_height, ..., PACKAGE = "ape")
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    merge_phyloseq_pair,sample_data-sample_data : <anonymous>: no visible
      binding for global variable ‘X0’
    merge_samples,sample_data: no visible global function definition for
      ‘aggregate’
    plot_phyloseq,phyloseq: no visible binding for global variable
      ‘esophagus’
    Undefined global functions or variables:
      #OTU ID .SD := Abundance Classification Consensus Lineage J OTU
      OTULabel SE.sim Sample V1 V2 X0 aggregate as.dist as.formula
      as.hclust axis capture.output combn complete.cases count cutree
      dcast.data.table download.file eigenvalue esophagus gap h.adj.index
      head i k label queryID queryString read read.table relevel se tail
      untar unzip value vmax vmin write.table x xdodge xend xfartiplab
      xleft xright y yend
    Consider adding
      importFrom("graphics", "axis")
      importFrom("stats", "aggregate", "as.dist", "as.formula", "as.hclust",
                 "complete.cases", "cutree", "relevel")
      importFrom("utils", "capture.output", "combn", "download.file", "head",
                 "read.table", "tail", "untar", "unzip", "write.table")
    to your NAMESPACE file.
    ```

# phyloTop

Version: 2.1.0

## In both

*   checking whether package ‘phyloTop’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘DBI’ is not available and has been replaced
    See ‘/home/muelleki/git/R/testthat/revdep/checks/phyloTop/new/phyloTop.Rcheck/00install.out’ for details.
    ```

# pifpaf

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gridExtra’
      All declared Imports should be used.
    ```

# pitchRx

Version: 1.8.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ggsubplot’
    ```

# pkgmaker

Version: 0.22

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘argparse’ ‘devtools’ ‘knitr’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    utest,character: no visible global function definition for
      ‘runTestFile’
    utest,character: no visible global function definition for ‘test_file’
    Undefined global functions or variables:
      .testLogger ArgumentParser HTMLReport RweaveLatex Sweave
      available.packages browseURL capture.output citation compareVersion
      contrib.url data defineTestSuite dev.off devtools file_test finish
      getErrors head hwrite installed.packages is.package knit knit2html
      knit2pdf knit_hooks load_all opts_chunk packageDescription par png
      printHTMLProtocol printTextProtocol proto publish read.bib
      runTestFile runTestSuite sessionInfo str tail test_dir test_file
      toBibtex toLatex untar
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "par")
      importFrom("utils", "RweaveLatex", "Sweave", "available.packages",
                 "browseURL", "capture.output", "citation", "compareVersion",
                 "contrib.url", "data", "file_test", "head",
                 "installed.packages", "packageDescription", "sessionInfo",
                 "str", "tail", "toBibtex", "toLatex", "untar")
    to your NAMESPACE file.
    ```

# PKPDmisc

Version: 2.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# plac

Version: 0.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.0Mb
      sub-directories of 1Mb or more:
        libs  26.9Mb
    ```

# planar

Version: 1.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

# plotluck

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘hexbin’ ‘quantreg’
      All declared Imports should be used.
    ```

# plyr

Version: 1.8.4

## In both

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'rbind.fill':
      ‘rbind.fill’
    
    S3 methods shown with full name in documentation object 'rbind.fill.matrix':
      ‘rbind.fill.matrix’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# pnn

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘rgenoud’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plot.sigma: no visible global function definition for ‘plot’
    smooth: no visible global function definition for ‘genoud’
    Undefined global functions or variables:
      genoud plot
    Consider adding
      importFrom("graphics", "plot")
    to your NAMESPACE file.
    ```

# pointblank

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Hmisc’ ‘digest’ ‘htmltools’ ‘knitr’ ‘lazyWeave’ ‘lubridate’ ‘rJava’
      All declared Imports should be used.
    ```

# poio

Version: 0.0-3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ISOcodes’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# polmineR

Version: 0.7.5

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘polmineR.Rcpp’ ‘europarl.en’
    ```

# PortfolioAnalytics

Version: 1.0.3636

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ROI.plugin.symphony’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    statistical.factor.model: no visible global function definition for
      ‘prcomp’
    turnover_objective: no visible global function definition for ‘hasArg’
    var.portfolio: no visible global function definition for ‘var’
    Undefined global functions or variables:
      abline axis barplot box colorRamp cor cov hasArg head heat.colors
      hist image layout lines median mtext na.omit optimize par plot points
      prcomp predict qnorm quantile rgb rnorm runif sd segments sessionInfo
      strwidth text title var
    Consider adding
      importFrom("grDevices", "colorRamp", "heat.colors", "rgb")
      importFrom("graphics", "abline", "axis", "barplot", "box", "hist",
                 "image", "layout", "lines", "mtext", "par", "plot",
                 "points", "segments", "strwidth", "text", "title")
      importFrom("methods", "hasArg")
      importFrom("stats", "cor", "cov", "median", "na.omit", "optimize",
                 "prcomp", "predict", "qnorm", "quantile", "rnorm", "runif",
                 "sd", "var")
      importFrom("utils", "head", "sessionInfo")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# PortfolioEffectHFT

Version: 1.8

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        java   5.1Mb
    ```

# POUMM

Version: 1.3.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# powerlmm

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# PPInfer

Version: 1.2.4

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘biomaRt’ ‘fgsea’ ‘kernlab’ ‘ggplot2’ ‘igraph’ ‘STRINGdb’
      ‘yeastExpData’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    ORA: no visible global function definition for ‘setTxtProgressBar’
    ORA: no visible global function definition for ‘p.adjust’
    ORA.dotplot: no visible global function definition for ‘p.adjust’
    enrich.net: no visible global function definition for ‘stack’
    enrich.net: no visible global function definition for ‘adjustcolor’
    enrich.net : <anonymous>: no visible global function definition for
      ‘adjustcolor’
    enrich.net: no visible binding for global variable ‘legend’
    net.infer: no visible global function definition for ‘na.omit’
    net.infer.ST: no visible global function definition for ‘na.omit’
    ppi.infer.human: no visible global function definition for ‘na.omit’
    ppi.infer.mouse: no visible global function definition for ‘na.omit’
    Undefined global functions or variables:
      adjustcolor fisher.test legend na.omit p.adjust setTxtProgressBar
      stack txtProgressBar
    Consider adding
      importFrom("grDevices", "adjustcolor")
      importFrom("graphics", "legend")
      importFrom("stats", "fisher.test", "na.omit", "p.adjust")
      importFrom("utils", "setTxtProgressBar", "stack", "txtProgressBar")
    to your NAMESPACE file.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘httr’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
        as.data.frame, cbind, colMeans, colSums, colnames, do.call,
        duplicated, eval, evalq, get, grep, grepl, intersect, is.unsorted,
        lapply, lengths, mapply, match, mget, order, paste, pmax, pmax.int,
        pmin, pmin.int, rank, rbind, rowMeans, rowSums, rownames, sapply,
        setdiff, sort, table, tapply, union, unique, unsplit, which,
        which.max, which.min
    
    
    Attaching package: ‘graph’
    
    The following objects are masked from ‘package:igraph’:
    
        degree, edges, intersection
    
    Error in net.infer(names(V(sg))[1:50], K, top = 20) : 
      size of list is too large
    
    Error: processing vignette 'PPInfer.Rnw' failed with diagnostics:
     chunk 14 
    Error in library(httr) : there is no package called ‘httr’
    Execution halted
    ```

# pqsfinder

Version: 1.4.9

## In both

*   checking if this is a source package ... NOTE
    ```
    Found the following apparent object files/libraries:
      src/boost_regex/c_regex_traits.o src/boost_regex/cpp_regex_traits.o
      src/boost_regex/cregex.o src/boost_regex/fileiter.o
      src/boost_regex/icu.o src/boost_regex/instances.o
      src/boost_regex/posix_api.o src/boost_regex/regex.o
      src/boost_regex/regex_debug.o src/boost_regex/regex_raw_buffer.o
      src/boost_regex/regex_traits_defaults.o
      src/boost_regex/static_mutex.o src/boost_regex/usinstances.o
      src/boost_regex/w32_regex_traits.o src/boost_regex/wc_regex_traits.o
      src/boost_regex/wide_posix_api.o src/boost_regex/winstances.o
    Object files/libraries should not be included in a source package.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 24.9Mb
      sub-directories of 1Mb or more:
        lib   20.3Mb
        libs   4.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Versioned 'LinkingTo' value for ‘BH’ is only usable in R >= 3.0.2
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# precrec

Version: 0.9.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.4Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   7.4Mb
    ```

# prediction

Version: 0.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘AER’ ‘betareg’ ‘brglm’ ‘crch’ ‘e1071’ ‘gam’ ‘gee’ ‘glmx’ ‘lme4’
      ‘mclogit’ ‘mlogit’ ‘mnlogit’ ‘MNP’ ‘ordinal’ ‘plm’ ‘pscl’ ‘quantreg’
      ‘sampleSelection’ ‘survey’ ‘VGAM’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘glmx’, ‘brglm’, ‘betareg’, ‘ordinal’, ‘crch’, ‘gam’, ‘gee’, ‘pscl’, ‘AER’, ‘mclogit’, ‘lme4’, ‘mnlogit’, ‘MNP’, ‘e1071’, ‘plm’, ‘quantreg’, ‘sampleSelection’, ‘survey’
    ```

# prettymapr

Version: 0.2.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rosm’
    ```

# prioritylasso

Version: 0.2.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ipflasso’, ‘mvtnorm’
    ```

# PRISMAstatement

Version: 1.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.9Mb
    ```

# prisonbrief

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# processx

Version: 2.0.0.1

## In both

*   checking compiled code ... NOTE
    ```
    File ‘processx/libs/processx.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# prodigenr

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# projmanr

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# pRoloc

Version: 1.16.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc   3.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MLInterfaces:::.macroF1’ ‘MLInterfaces:::.precision’
      ‘MLInterfaces:::.recall’ ‘MLInterfaces:::es2df’
      ‘caret:::predict.plsda’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘checkSortedFeatureNames’ ‘opt’
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘pRoloc/R/annotation.R’:
      unlockBinding("params", .pRolocEnv)
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

# pRolocdata

Version: 1.14.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented data sets:
      ‘hyperLOPITU2OS2017’ ‘hyperLOPITU2OS2017b’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 121.7Mb
      sub-directories of 1Mb or more:
        data     39.3Mb
        extdata  82.1Mb
    ```

# prophet

Version: 0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.9Mb
      sub-directories of 1Mb or more:
        libs  21.7Mb
    ```

# propr

Version: 3.0.7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        libs   3.0Mb
    ```

# proteinProfiles

Version: 1.16.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# ProteomicsAnnotationHubData

Version: 1.6.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘AnnotationHubData:::.httrFileInfo’ ‘GenomeInfoDb:::.taxonomyId’
      See the note in ?`:::` about the use of this operator.
    package 'methods' is used but not declared
    ```

# protoclass

Version: 1.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘class’ which was already attached by Depends.
      Please remove these calls from your code.
    Package in Depends field not imported from: ‘class’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    addcircle: no visible global function definition for ‘lines’
    addclassifierboundary: no visible global function definition for ‘par’
    addclassifierboundary: no visible global function definition for
      ‘contour’
    plot.protoclass: no visible global function definition for ‘plot’
    plot.protoclass: no visible global function definition for ‘box’
    plot.protoclass: no visible global function definition for ‘rgb2hsv’
    plot.protoclass: no visible global function definition for ‘col2rgb’
    plot.protoclass: no visible global function definition for ‘points’
    plot.protoclass: no visible global function definition for ‘hsv’
    predict.protoclass: no visible global function definition for ‘knn1’
    Undefined global functions or variables:
      box col2rgb contour hsv knn1 lines par plot points rgb2hsv
    Consider adding
      importFrom("grDevices", "col2rgb", "hsv", "rgb2hsv")
      importFrom("graphics", "box", "contour", "lines", "par", "plot",
                 "points")
    to your NAMESPACE file.
    ```

# protolite

Version: 1.7

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RProtoBuf’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘RProtoBuf’
    ```

# proustr

Version: 0.2.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20105 marked UTF-8 strings
    ```

# pryr

Version: 0.1.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    internal_generics: no visible global function definition for
      ‘getGroupMembers’
    method_from_call: no visible global function definition for
      ‘getGeneric’
    method_from_call: no visible global function definition for
      ‘selectMethod’
    names_c: no visible global function definition for ‘read.csv’
    primitive_name: no visible global function definition for
      ‘capture.output’
    show_c_source: no visible global function definition for ‘URLencode’
    show_c_source: no visible global function definition for ‘browseURL’
    Undefined global functions or variables:
      URLencode browseURL capture.output getGeneric getGroupMembers
      object.size read.csv selectMethod setNames
    Consider adding
      importFrom("methods", "getGeneric", "getGroupMembers", "selectMethod")
      importFrom("stats", "setNames")
      importFrom("utils", "URLencode", "browseURL", "capture.output",
                 "object.size", "read.csv")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# psd

Version: 1.0-1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fftw’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    psdcore.default: no visible global function definition for ‘ts’
    pspectrum.ts: no visible global function definition for ‘frequency’
    spec_confint.default: no visible global function definition for
      ‘pchisq’
    spec_confint.default: no visible global function definition for
      ‘qchisq’
    splineGrad.default: no visible global function definition for ‘par’
    splineGrad.default: no visible global function definition for ‘plot’
    splineGrad.default: no visible global function definition for ‘lines’
    Undefined global functions or variables:
      abline acf as.ts frequency head is.ts layout legend lines lm
      loess.control mtext par pchisq plot qchisq residuals spec.pgram start
      tail title ts var
    Consider adding
      importFrom("graphics", "abline", "layout", "legend", "lines", "mtext",
                 "par", "plot", "title")
      importFrom("stats", "acf", "as.ts", "frequency", "is.ts", "lm",
                 "loess.control", "pchisq", "qchisq", "residuals",
                 "spec.pgram", "start", "ts", "var")
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
    ```

# psda

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘raster’
      All declared Imports should be used.
    ```

# psycho

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rtf’ ‘tidyverse’
      All declared Imports should be used.
    ```

# psygenet2r

Version: 1.9.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 2-32 (case_study.Rmd) 
    Error: processing vignette 'case_study.Rmd' failed with diagnostics:
    could not find function "doc_date"
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc   5.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘Disease1’
    plot,JaccardIndexPsy-ANY: no visible binding for global variable
      ‘Disease2’
    plot,JaccardIndexPsy-ANY: no visible binding for global variable
      ‘JaccardIndex’
    plot,JaccardIndexPsy-ANY: no visible binding for global variable
      ‘value’
    plot,JaccardIndexPsy-ANY: no visible binding for global variable
      ‘variable’
    Undefined global functions or variables:
      Category Disease1 Disease2 JaccardIndex Var1 c0.Number_of_Abstracts
      c0.Score c1.Gene_Symbol c2.DiseaseName c2.Disease_code
      c2.PsychiatricDisorder category combn database diseases gene new perc
      phyper pie read.csv read.delim value variable
    Consider adding
      importFrom("graphics", "pie")
      importFrom("methods", "new")
      importFrom("stats", "phyper")
      importFrom("utils", "combn", "read.csv", "read.delim")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# ptstem

Version: 0.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        dict   5.1Mb
    ```

# PTXQC

Version: 0.92.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc        3.8Mb
        examples   2.3Mb
    ```

# pubprint

Version: 0.2.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘lm.beta’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lm.beta’
    ```

# purrrlyr

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# PWMEnrich

Version: 4.12.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc       1.5Mb
        extdata   3.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘PWMEnrich.Dmelanogaster.background’ ‘PWMEnrich.Hsapiens.background’
      ‘PWMEnrich.Mmusculus.background’ ‘parallel’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotMotifScores: no visible global function definition for ‘par’
    plotMotifScores: no visible global function definition for ‘lines’
    plotMotifScores: no visible global function definition for ‘polygon’
    plotMotifScores: no visible global function definition for ‘rect’
    plotMotifScores: no visible global function definition for ‘text’
    registerCoresPWMEnrich: no visible global function definition for
      ‘detectCores’
    tryAllMotifAlignments : <anonymous>: no visible global function
      definition for ‘cor’
    Undefined global functions or variables:
      col2rgb cor data detectCores dlnorm ecdf lines lm mclapply median
      na.omit optimize palette par pchisq plnorm polygon predict.lm
      providerVersion qlnorm quantile rect rgb text
    Consider adding
      importFrom("grDevices", "col2rgb", "palette", "rgb")
      importFrom("graphics", "lines", "par", "polygon", "rect", "text")
      importFrom("stats", "cor", "dlnorm", "ecdf", "lm", "median", "na.omit",
                 "optimize", "pchisq", "plnorm", "predict.lm", "qlnorm",
                 "quantile")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# pxweb

Version: 0.6.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       - data.csb.gov.lv
      
      Use update_pxweb_apis() to update the api catalogue.
      > test_check("pxweb")
      1. Failure: baseURL 1 (@test-get_pxweb_metadata.R#23) --------------------------
      `x` not equivalent to `expected`.
      1/2 mismatches
      [1] 17 - 16 == 1
      
      testthat results ================================================================
      OK: 121 SKIPPED: 11 FAILED: 1
      1. Failure: baseURL 1 (@test-get_pxweb_metadata.R#23) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# QCApro

Version: 1.1-1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘QCA3’
    ```

# qdap

Version: 2.2.8

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘gplots’
    ```

# qiimer

Version: 0.9.4

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘biom’
    ```

# qiitr

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 18 SKIPPED: 0 FAILED: 12
      1. Error: qiita_get_comments with comment id works (@test-qiita_get_comments.R#5) 
      2. Error: qiita_get_comments with item id works (@test-qiita_get_comments.R#12) 
      3. Error: qiita_get_items by tag ID (@test-qiita_get_items.R#6) 
      4. Error: qiita_get_items by item ID (@test-qiita_get_items.R#12) 
      5. Error: qiita_get_items by item ID (@test-qiita_get_items.R#19) 
      6. Error: qiita_get_tags with tag ID (@test-qiita_get_tags.R#5) 
      7. Error: qiita_get_tags with multiple tag IDs (@test-qiita_get_tags.R#12) 
      8. Error: qiita_get_tags with user ID (@test-qiita_get_tags.R#19) 
      9. Error: qiita_is_following_tag works. (@test-qiita_get_tags.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# qrqc

Version: 1.30.0

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘reshape’ ‘ggplot2’ ‘Biostrings’ ‘biovizBase’ ‘brew’ ‘xtable’
      ‘Rsamtools’ ‘testthat’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘reshape’ ‘ggplot2’ ‘Biostrings’ ‘biovizBase’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Packages in Depends field not imported from:
      'Rsamtools' 'brew' 'testthat' 'xtable'
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    kmerKLPlot,SequenceSummary: no visible binding for global variable
      'kmer'
    kmerKLPlot,SequenceSummary: no visible binding for global variable
      'position'
    kmerKLPlot,SequenceSummary: no visible binding for global variable 'kl'
    kmerKLPlot,list : <anonymous>: no visible binding for global variable
      'kmer'
    kmerKLPlot,list: no visible binding for global variable 'position'
    kmerKLPlot,list: no visible binding for global variable 'kl'
    kmerKLPlot,list: no visible binding for global variable 'kmer'
    plotGC,SequenceSummary : <local>: no visible global function definition
      for 'aggregate'
    qualPlot,FASTQSummary: no visible binding for global variable
      'position'
    qualPlot,list: no visible binding for global variable 'position'
    Undefined global functions or variables:
      DNAStringSet aggregate base entropy kl kmer na.exclude position
      quantile write.XStringSet
    Consider adding
      importFrom("stats", "aggregate", "na.exclude", "quantile")
    to your NAMESPACE file.
    ```

# qtl

Version: 1.41-6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        contrib   3.8Mb
        doc       2.9Mb
        libs      1.2Mb
    ```

# quadrupen

Version: 0.2-5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# qualpalr

Version: 0.4.2

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# quanteda

Version: 0.99.12

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: compare.default(act$val, exp$val, ..., check.attributes = FALSE)
      4: all.equal(x, y, ...)
      5: all.equal.list(x, y, ...)
      6: all.equal(target[[i]], current[[i]], check.attributes = check.attributes, use.names = use.names, 
             ...)
      7: all.equal.numeric(target[[i]], current[[i]], check.attributes = check.attributes, 
             use.names = use.names, ...)
      8: stop("'tolerance' should be numeric")
      
      testthat results ================================================================
      OK: 1586 SKIPPED: 18 FAILED: 1
      1. Error: nsyllable works as expected (@test-tokens.R#12) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.6Mb
      sub-directories of 1Mb or more:
        libs  19.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1415 marked UTF-8 strings
    ```

# questionr

Version: 0.6.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘DT’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Hmisc’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4145 marked UTF-8 strings
    ```

# quickPlot

Version: 0.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fastshp’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# quickReg

Version: 1.5.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘psych’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘PredictABEL’
    ```

# qwraps2

Version: 0.2.4

## In both

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'summary_table':
      ‘cbind.qwraps2_summary_table’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# r2glmm

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.table’ ‘dplyr’ ‘lmerTest’
      All declared Imports should be used.
    ```

# R6Frame

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 139 SKIPPED: 1 FAILED: 10
      1.  Error: gather works with R6 data.frame (@test-tidyr_reshape.R#11) 
      2.  Error: gather works with R6 data.table (@test-tidyr_reshape.R#25) 
      3.  Error: gather works with R6 tbl_df (@test-tidyr_reshape.R#38) 
      4.  Error: spread works with R6 data.frame (@test-tidyr_reshape.R#52) 
      5.  Error: spread works with R6 data.table (@test-tidyr_reshape.R#67) 
      6.  Error: spread works with R6 tbl_df (@test-tidyr_reshape.R#81) 
      7.  Error: complete works with R6 data.frame (@test-tidyr_verbs.R#13) 
      8.  Error: complete works with R6 data.table (@test-tidyr_verbs.R#27) 
      9.  Error: complete works with R6 tbl_df (@test-tidyr_verbs.R#41) 
      10. Error: fill works with R6 tbl_df (@test-tidyr_verbs.R#72) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# radiant

Version: 0.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘AlgDesign’ ‘psych’
      All declared Imports should be used.
    ```

# radiant.model

Version: 0.8.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# radiant.multivariate

Version: 0.8.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# radiomics

Version: 0.1.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 21-23 (TextureAnalysis.Rmd) 
    Error: processing vignette 'TextureAnalysis.Rmd' failed with diagnostics:
    'roxygen2' >= 5.0.0 must be installed for this functionality.
    Execution halted
    ```

# RaggedExperiment

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Quitting from lines 2-18 (RaggedExperiment.Rmd) 
    Error: processing vignette 'RaggedExperiment.Rmd' failed with diagnostics:
    there is no package called 'BiocStyle'
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘S4Vectors:::selectSome’
      See the note in ?`:::` about the use of this operator.
    ```

# rags2ridges

Version: 2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   3.7Mb
    ```

# rAmCharts

Version: 2.1.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        htmlwidgets   6.4Mb
    ```

# randomizeR

Version: 1.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: plotrix
    Warning: Computation failed in `stat_boxplot()`:
    there is no package called 'quantreg'
    Warning: Computation failed in `stat_boxplot()`:
    there is no package called 'quantreg'
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'comparison-example.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `biblatex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.57 \bibliography
                      {vignette}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# rangeMapper

Version: 0.3-1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘snow’
    ```

# ranger

Version: 0.8.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   6.9Mb
    ```

# RAppArmor

Version: 2.0.2

## In both

*   checking whether package ‘RAppArmor’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/RAppArmor/new/RAppArmor.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RAppArmor’ ...
** package ‘RAppArmor’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
Using PKG_LIBS=-lapparmor
Could not find AppArmor headers. Please install libapparmor-dev.
To build on Linux Systems without AppArmor use:
R CMD INSTALL RAppArmor_2.0.1.tar.gz --configure-vars='NO_APPARMOR=1'
ERROR: configuration failed for package ‘RAppArmor’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/RAppArmor/new/RAppArmor.Rcheck/RAppArmor’

```
### CRAN

```
* installing *source* package ‘RAppArmor’ ...
** package ‘RAppArmor’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
Using PKG_LIBS=-lapparmor
Could not find AppArmor headers. Please install libapparmor-dev.
To build on Linux Systems without AppArmor use:
R CMD INSTALL RAppArmor_2.0.1.tar.gz --configure-vars='NO_APPARMOR=1'
ERROR: configuration failed for package ‘RAppArmor’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/RAppArmor/old/RAppArmor.Rcheck/RAppArmor’

```
# raptr

Version: 0.0.5

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    + 	runif(50)
    + ),
    + species=1L
    + )
    > 
    > space2 <- AttributeSpace(
    + PlanningUnitPoints(
    + 	matrix(rnorm(100), ncol=2),
    + 	seq_len(50)
    + ),
    + DemandPoints(
    + 	matrix(rnorm(100), ncol=2),
    + 	runif(50)
    + ),
    + species=2L
    + )
    > spaces1 <- AttributeSpaces(list(space1, space2), 'test')
    Error in (function (x, strict = TRUE)  : 
      the argument has already been evaluated
    Calls: AttributeSpaces ... enquo -> eval_bare -> .Call -> <Anonymous> -> .Call
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 1898 SKIPPED: 31 FAILED: 14
      1. Error: space calculations (unreliable) (@test-01-rapr-internal-test.R#8) 
      2. Error: space calculations (reliable: 0%) (@test-01-rapr-internal-test.R#29) 
      3. Error: space calculations (reliable: 100%) (@test-01-rapr-internal-test.R#44) 
      4. Error: rrap.proportion.held (@test-02-misc.R#42) 
      5. Error: AttributeSpaces generator function (@test-09-AttributeSpaces.R#17) 
      6. Error: RapData (@test-10-RapData.R#7) 
      7. Error: make.RapData (single species) (@test-10-RapData.R#40) 
      8. Error: make.RapData (multiple species) (@test-10-RapData.R#60) 
      9. Error: pu.subset.RapData (@test-10-RapData.R#82) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘gurobi’ ‘rgurobi’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.9Mb
      sub-directories of 1Mb or more:
        data   3.6Mb
        libs  13.1Mb
    ```

# Rariant

Version: 1.12.0

## In both

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'rbind_all' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc       2.3Mb
        extdata   5.2Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    tallyBamRegion: no visible global function definition for 'PileupParam'
    tallyBamRegion: no visible global function definition for
      'ScanBamParam'
    tallyBamRegion: no visible global function definition for 'pileup'
    Undefined global functions or variables:
      PileupParam ScanBamParam pileup
    ```

*   checking installed files from ‘inst/doc’ ... NOTE
    ```
    The following files should probably not be installed:
      ‘rariant-inspect-ci.png’, ‘rariant-inspect-shift.png’
    
    Consider the use of a .Rinstignore file: see ‘Writing R Extensions’,
    or move the vignette sources from ‘inst/doc’ to ‘vignettes’.
    ```

# rAvis

Version: 0.1.4

## In both

*   checking R code for possible problems ... NOTE
    ```
    .avisApiBusAvanzada: no visible global function definition for
      ‘read.csv’
    .avisRenderMapAdmin: no visible global function definition for ‘points’
    .avisRenderMapAdmin: no visible global function definition for ‘rect’
    .avisRenderMapPhysical: no visible global function definition for
      ‘points’
    avisMap: no visible global function definition for ‘par’
    avisMap: no visible global function definition for ‘layout’
    Undefined global functions or variables:
      layout par points read.csv rect
    Consider adding
      importFrom("graphics", "layout", "par", "points", "rect")
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# RBesT

Version: 1.2-3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.7Mb
      sub-directories of 1Mb or more:
        libs  26.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lme4’
      All declared Imports should be used.
    ```

# rbhl

Version: 0.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 28
      1. Error: bhl_authorsearch returns (@test-bhl_authorsearch.R#7) 
      2. Error: bhl_bioherlib returns (@test-bhl_bioherlib.R#7) 
      3. Error: bhl_booksearch returns the correct class (@test-bhl_booksearch.R#7) 
      4. Error: bhl_getauthorities returns the correct class (@test-bhl_getauthorities.R#7) 
      5. Error: bhl_collection returns the correct class (@test-bhl_getcollections.R#7) 
      6. Error: bhl_getitembyidentifier returns the correct class (@test-bhl_getitembyidentifier.R#7) 
      7. Error: bhl_getitemmetadata returns the correct class (@test-bhl_getitemmetadata.R#7) 
      8. Error: bhl_getitempages returns the correct class (@test-bhl_getitempages.R#7) 
      9. Error: bhl_getlanguages returns the correct class (@test-bhl_getlanguages.R#7) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rbi

Version: 0.8.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      2. Error: we can rewrite a model (@test-libbi.r#67) ----------------------------
      Could not find libbi executable /libbi
      1: rewrite(bi) at testthat/test-libbi.r:67
      2: rewrite.libbi(bi)
      3: run.libbi(x, client = "rewrite", ...)
      4: stop("Could not find libbi executable ", x$path_to_libbi)
      
      testthat results ================================================================
      OK: 31 SKIPPED: 0 FAILED: 2
      1. Error: we can run libbi (@test-libbi.r#45) 
      2. Error: we can rewrite a model (@test-libbi.r#67) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# rbison

Version: 0.5.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1/1 mismatches
      [1] 48 - 12 == 36
      
      3. Failure: bison_tax returns the correct ... (@test-bison_tax.R#14) -----------
      `x` not equal to `expected`.
      Lengths differ: 6 is not 1
      
      testthat results ================================================================
      OK: 37 SKIPPED: 0 FAILED: 3
      1. Failure: bison returns the correct value (@test-bison.R#16) 
      2. Failure: bison_tax returns the correct ... (@test-bison_tax.R#12) 
      3. Failure: bison_tax returns the correct ... (@test-bison_tax.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rbokeh

Version: 0.5.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘shiny’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# Rborist

Version: 0.1-8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: Rcpp
      Rborist 0.1-8
      Type RboristNews() to see new features/changes/bug fixes.
      1. Error: Numeric-only regression accuracy (@test-regNum.R#6) ------------------
      could not find function "regNumPass"
      1: expect_equal(regNumPass(10, 1000, 20), 1) at testthat/test-regNum.R:6
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: Numeric-only regression accuracy (@test-regNum.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘forestFloor’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        libs   9.6Mb
    ```

# rbundler

Version: 0.3.7

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

*   checking R code for possible problems ... NOTE
    ```
    find_available_versions: no visible global function definition for
      ‘contrib.url’
    find_available_versions: no visible global function definition for
      ‘available.packages’
    install_version: no visible global function definition for
      ‘contrib.url’
    install_version: no visible global function definition for
      ‘available.packages’
    install_version: no visible global function definition for
      ‘install_url’
    load_available_packages: no visible global function definition for
      ‘contrib.url’
    validate_installed_package: no visible global function definition for
      ‘installed.packages’
    Undefined global functions or variables:
      available.packages contrib.url install_url installed.packages
    Consider adding
      importFrom("utils", "available.packages", "contrib.url",
                 "installed.packages")
    to your NAMESPACE file.
    ```

# RCAS

Version: 1.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      New motif:  GAGAAG 
      1. Error: Testing runReport function (@test_report.R#7) ------------------------
      unused argument (all = FALSE)
      1: expect_error(runReport(genomeVersion = "foo"), regexp = "not a supported genome version.", 
             all = FALSE) at testthat/test_report.R:7
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
      
      testthat results ================================================================
      OK: 87 SKIPPED: 0 FAILED: 1
      1. Error: Testing runReport function (@test_report.R#7) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    runTopGO: no visible global function definition for ‘new’
    Undefined global functions or variables:
      new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# rccmisc

Version: 0.3.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# rcellminer

Version: 1.8.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘rcellminer-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plotStructures
    > ### Title: Plot Structures
    > ### Aliases: plotStructures
    > 
    > ### ** Examples
    > 
    > drugAnnot <- as(featureData(getAct(rcellminerData::drugData)), "data.frame")
    > plotStructures("94600", drugAnnot["94600","SMILES"])
    Error in view.image.2d(molecule, width, height) : 
      unused argument (height)
    Calls: plotStructures -> rcdkplot
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runTests.R’ failed.
    Last 13 lines of output:
      ⠋ | 181       | 0
      ⠙ | 182       | 0
      ⠹ | 183       | 0
      ⠸ | 184       | 0
      ⠼ | 185       | 0Error in x[[method]](...) : attempt to apply non-function
      Calls: test_package ... <Anonymous> -> o_apply -> lapply -> FUN -> <Anonymous>
      In addition: Warning message:
      Placing tests in `inst/tests` is deprecated. Please use `tests/testthat` instead 
      
      ═ Results ══════════════════════════════════════════════════════════════════════
      OK:       185
      Failed:   4
      Warnings: 1
      Skipped:  0
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        duplicated, eval, evalq, get, grep, grepl, intersect,
        is.unsorted, lapply, lengths, mapply, match, mget, order,
        paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: rcdk
    Loading required package: rcdklibs
    Loading required package: rJava
    Loading required package: fingerprint
    Loading required package: rcellminerData
    Quitting from lines 118-119 (rcellminerUsage.Rmd) 
    Error: processing vignette 'rcellminerUsage.Rmd' failed with diagnostics:
    unused argument (height)
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        data   2.9Mb
        doc    3.8Mb
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘rcellminer’ for: ‘initialize’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘as’
    getFeatureAnnot,MolData : <anonymous>: no visible global function
      definition for ‘as’
    initialize,DrugData: no visible global function definition for
      ‘validObject’
    initialize,MolData: no visible global function definition for
      ‘validObject’
    Undefined global functions or variables:
      IQR as axis cor.test dev.off layout lcm median new par pdf plot pt
      quantile rasterImage sd segments setTxtProgressBar str txtProgressBar
      validObject
    Consider adding
      importFrom("grDevices", "dev.off", "pdf")
      importFrom("graphics", "axis", "layout", "lcm", "par", "plot",
                 "rasterImage", "segments")
      importFrom("methods", "as", "new", "validObject")
      importFrom("stats", "IQR", "cor.test", "median", "pt", "quantile",
                 "sd")
      importFrom("utils", "setTxtProgressBar", "str", "txtProgressBar")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# rcellminerData

Version: 1.8.0

## In both

*   checking for missing documentation entries ... ERROR
    ```
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called ‘rcellminer’
    Error in .requirePackage(package) : 
      unable to find required package ‘rcellminer’
    Calls: <Anonymous> ... withCallingHandlers -> is -> getClassDef -> .requirePackage
    Execution halted
    ```

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      
      Note: significantly better compression could be obtained
            by using R CMD build --resave-data
                     old_size new_size compress
      drugData.RData   20.6Mb   10.3Mb       xz
      molData.RData    18.7Mb   10.7Mb       xz
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rcellminer’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 161.5Mb
      sub-directories of 1Mb or more:
        data      39.2Mb
        extdata  122.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error in .requirePackage(package) : 
        unable to find required package 'rcellminer'
      Calls: <Anonymous> ... .extendsForS3 -> extends -> getClassDef -> .requirePackage
      Execution halted
    ```

# rClinicalCodes

Version: 1.0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_ClinicalCodes: no visible global function definition for ‘read.csv’
    get_ClinicalCodes : <anonymous>: no visible global function definition
      for ‘read.csv’
    Undefined global functions or variables:
      read.csv
    Consider adding
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# RcmdrPlugin.lfstat

Version: 0.8.1

## In both

*   checking whether package ‘RcmdrPlugin.lfstat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/RcmdrPlugin.lfstat/new/RcmdrPlugin.lfstat.Rcheck/00install.out’ for details.
    ```

# rcongresso

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `attributes(pec_241)$names` not equal to `colnames_pec241`.
      Lengths differ: 13 is not 12
      
      3. Failure: Campos do dataframe (@test_proposicoes.R#43) -----------------------
      `sapply(pec_241, class)` not equal to `tipos_pec241`.
      Lengths differ: 13 is not 12
      
      testthat results ================================================================
      OK: 52 SKIPPED: 0 FAILED: 3
      1. Failure: Dimensoes do dataframe (@test_proposicoes.R#33) 
      2. Failure: Atributos do dataframe (@test_proposicoes.R#38) 
      3. Failure: Campos do dataframe (@test_proposicoes.R#43) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# rcoreoa

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      5: core_GET(path = file.path("search", query), key, list(page = page, pageSize = limit), 
             ...)
      6: crul::HttpClient$new(url = core_base(), headers = list(apiKey = check_key(key)))
      7: .subset2(public_bind_env, "initialize")(...)
      8: check_key(key)
      9: getOption("core_key", stop("you need an API key for Core", call. = FALSE))
      10: stop("you need an API key for Core", call. = FALSE)
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 2
      1. Error: high level works - parsing (@test-core_advanced_search.R#23) 
      2. Error: high level works - parsing (@test-core_search.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RcppFaddeeva

Version: 0.1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    Gauss: no visible global function definition for ‘dnorm’
    Undefined global functions or variables:
      dnorm
    Consider adding
      importFrom("stats", "dnorm")
    to your NAMESPACE file.
    ```

# RcppRoll

Version: 0.2.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_rollit_source: no visible global function definition for
      ‘file.edit’
    Undefined global functions or variables:
      file.edit
    Consider adding
      importFrom("utils", "file.edit")
    to your NAMESPACE file.
    ```

# RcppShark

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 171.9Mb
      sub-directories of 1Mb or more:
        include    4.6Mb
        lib      130.6Mb
        libs      36.5Mb
    ```

# RcppXPtrUtils

Version: 0.1.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘inline’
    ```

# rcrossref

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3. Failure: cr_members fails correctly (@test_cr_members.R#47) -----------------
      `cr_members(...)` produced unexpected warnings.
      Expected match: 500: java.lang.NumberFormatException: For input string: "323234343434"
      Actual values:
      * 500: {"status":"error","message-type":"exception","message-version":"1.0.0","message":{"name":"class java.lang.NumberFormatException","description":"java.lang.NumberFormatException: For input string: \"323234343434\"","message":"For input string: \"323234343434\"","stack":["java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)","java.lang.Integer.parseInt(Integer.java:583)","java.lang.Integer.parseInt(Integer.java:615)","cayenne.data.member$get_id_from_context.invokeStatic(member.clj:34)","cayenne.data.member$get_id_from_context.invoke(member.clj:30)","cayenne.data.member$fetch_one$fn__17569.invoke(member.clj:75)","cayenne.data.member$fetch_one.invokeStatic(member.clj:72)","cayenne.data.member$fetch_one.invoke(member.clj:71)","cayenne.api.v1.routes$member_works_resource$fn__22177$fn__22178.invoke(routes.clj:375)","liberator.core$decide.invokeStatic(core.clj:98)","liberator.core$decide.invoke(core.clj:91)","liberator.core$exists_QMARK_.invokeStatic(core.clj:406)","liberator.core$exists_QMARK_.invoke(core.clj:406)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$processable_QMARK_.invokeStatic(core.clj:409)","liberator.core$processable_QMARK_.invoke(core.clj:409)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$encoding_available_QMARK_.invokeStatic(core.clj:413)","liberator.core$encoding_available_QMARK_.invoke(core.clj:413)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_encoding_exists_QMARK_.invokeStatic(core.clj:428)","liberator.core$accept_encoding_exists_QMARK_.invoke(core.clj:428)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_charset_exists_QMARK_.invokeStatic(core.clj:441)","liberator.core$accept_charset_exists_QMARK_.invoke(core.clj:441)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_language_exists_QMARK_.invokeStatic(core.clj:455)","liberator.core$accept_language_exists_QMARK_.invoke(core.clj:455)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$media_type_available_QMARK_.invokeStatic(core.clj:465)","liberator.core$media_type_available_QMARK_.invoke(core.clj:465)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_exists_QMARK_.invokeStatic(core.clj:468)","liberator.core$accept_exists_QMARK_.invoke(core.clj:468)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$is_options_QMARK_.invokeStatic(core.clj:485)","liberator.core$is_options_QMARK_.invoke(core.clj:485)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$valid_entity_length_QMARK_.invokeStatic(core.clj:488)","liberator.core$valid_entity_length_QMARK_.invoke(core.clj:488)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$known_content_type_QMARK_.invokeStatic(core.clj:491)","liberator.core$known_content_type_QMARK_.invoke(core.clj:491)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$valid_content_header_QMARK_.invokeStatic(core.clj:493)","liberator.core$valid_content_header_QMARK_.invoke(core.clj:493)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$allowed_QMARK_.invokeStatic(core.clj:496)","liberator.core$allowed_QMARK_.invoke(core.clj:496)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$authorized_QMARK_.invokeStatic(core.clj:499)","liberator.core$authorized_QMARK_.invoke(core.clj:499)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$malformed_QMARK_.invokeStatic(core.clj:502)","liberator.core$malformed_QMARK_.invoke(core.clj:502)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$method_allowed_QMARK_.invokeStatic(core.clj:505)","liberator.core$method_allowed_QMARK_.invoke(core.clj:505)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$uri_too_long_QMARK_.invokeStatic(core.clj:508)","liberator.core$uri_too_long_QMARK_.invoke(core.clj:508)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$known_method_QMARK_.invokeStatic(core.clj:511)","liberator.core$known_method_QMARK_.invoke(core.clj:511)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$service_available_QMARK_.invokeStatic(core.clj:514)","liberator.core$service_available_QMARK_.invoke(core.clj:514)","liberator.core$run_resource.invokeStatic(core.clj:599)","liberator.core$run_resource.invoke(core.clj:597)","cayenne.api.v1.routes$member_works_resource$fn__22177.invoke(routes.clj:364)","compojure.response$eval21288$fn__21289.invoke(response.clj:47)","compojure.response$eval21210$fn__21211$G__21201__21218.invoke(response.clj:7)","compojure.core$wrap_response$fn__21880.invoke(core.clj:158)","compojure.core$wrap_route_middleware$fn__21864.invoke(core.clj:128)","compojure.core$wrap_route_info$fn__21869.invoke(core.clj:137)","compojure.core$wrap_route_matches$fn__21873.invoke(core.clj:146)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","ring.middleware.logstash$wrap_logstash$fn__23209.invoke(logstash.clj:110)","ring.middleware.keyword_params$wrap_keyword_params$fn__24071.invoke(keyword_params.clj:36)","ring.middleware.nested_params$wrap_nested_params$fn__24119.invoke(nested_params.clj:89)","ring.middleware.params$wrap_params$fn__24035.invoke(params.clj:67)","cayenne.api.route$wrap_cors$fn__24655.invoke(route.clj:101)","metrics.ring.expose$expose_metrics_as_json$fn__23595.invoke(expose.clj:94)","metrics.ring.instrument$instrument$fn__23611$fn__23612.invoke(instrument.clj:44)","metrics.ring.instrument.proxy$java.lang.Object$Callable$7da976d4.call(Unknown Source)","com.yammer.metrics.core.Timer.time(Timer.java:91)","metrics.ring.instrument$instrument$fn__23611.invoke(instrument.clj:43)","heartbeat.ring$wrap_heartbeat$fn__23297.invoke(ring.clj:18)","cayenne.api.conneg$wrap_accept$fn__19751.invoke(conneg.clj:53)","cayenne.api.route$wrap_exception_handler$fn__24660.invoke(route.clj:110)","cayenne.api.route$wrap_ignore_trailing_slash$fn__24668.invoke(route.clj:136)","org.httpkit.server.HttpHandler.run(RingHandler.java:91)","java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)","java.util.concurrent.Future
      * 500: {"status":"error","message-type":"exception","message-version":"1.0.0","message":{"name":"class java.lang.NumberFormatException","description":"java.lang.NumberFormatException: For input string: \"3434343434\"","message":"For input string: \"3434343434\"","stack":["java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)","java.lang.Integer.parseInt(Integer.java:583)","java.lang.Integer.parseInt(Integer.java:615)","cayenne.data.member$get_id_from_context.invokeStatic(member.clj:34)","cayenne.data.member$get_id_from_context.invoke(member.clj:30)","cayenne.data.member$fetch_one$fn__17569.invoke(member.clj:75)","cayenne.data.member$fetch_one.invokeStatic(member.clj:72)","cayenne.data.member$fetch_one.invoke(member.clj:71)","cayenne.api.v1.routes$member_works_resource$fn__22177$fn__22178.invoke(routes.clj:375)","liberator.core$decide.invokeStatic(core.clj:98)","liberator.core$decide.invoke(core.clj:91)","liberator.core$exists_QMARK_.invokeStatic(core.clj:406)","liberator.core$exists_QMARK_.invoke(core.clj:406)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$processable_QMARK_.invokeStatic(core.clj:409)","liberator.core$processable_QMARK_.invoke(core.clj:409)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$encoding_available_QMARK_.invokeStatic(core.clj:413)","liberator.core$encoding_available_QMARK_.invoke(core.clj:413)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_encoding_exists_QMARK_.invokeStatic(core.clj:428)","liberator.core$accept_encoding_exists_QMARK_.invoke(core.clj:428)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_charset_exists_QMARK_.invokeStatic(core.clj:441)","liberator.core$accept_charset_exists_QMARK_.invoke(core.clj:441)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_language_exists_QMARK_.invokeStatic(core.clj:455)","liberator.core$accept_language_exists_QMARK_.invoke(core.clj:455)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$media_type_available_QMARK_.invokeStatic(core.clj:465)","liberator.core$media_type_available_QMARK_.invoke(core.clj:465)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$accept_exists_QMARK_.invokeStatic(core.clj:468)","liberator.core$accept_exists_QMARK_.invoke(core.clj:468)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$is_options_QMARK_.invokeStatic(core.clj:485)","liberator.core$is_options_QMARK_.invoke(core.clj:485)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$valid_entity_length_QMARK_.invokeStatic(core.clj:488)","liberator.core$valid_entity_length_QMARK_.invoke(core.clj:488)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$known_content_type_QMARK_.invokeStatic(core.clj:491)","liberator.core$known_content_type_QMARK_.invoke(core.clj:491)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$valid_content_header_QMARK_.invokeStatic(core.clj:493)","liberator.core$valid_content_header_QMARK_.invoke(core.clj:493)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$allowed_QMARK_.invokeStatic(core.clj:496)","liberator.core$allowed_QMARK_.invoke(core.clj:496)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$authorized_QMARK_.invokeStatic(core.clj:499)","liberator.core$authorized_QMARK_.invoke(core.clj:499)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$malformed_QMARK_.invokeStatic(core.clj:502)","liberator.core$malformed_QMARK_.invoke(core.clj:502)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$method_allowed_QMARK_.invokeStatic(core.clj:505)","liberator.core$method_allowed_QMARK_.invoke(core.clj:505)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$uri_too_long_QMARK_.invokeStatic(core.clj:508)","liberator.core$uri_too_long_QMARK_.invoke(core.clj:508)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$known_method_QMARK_.invokeStatic(core.clj:511)","liberator.core$known_method_QMARK_.invoke(core.clj:511)","liberator.core$decide.invokeStatic(core.clj:103)","liberator.core$decide.invoke(core.clj:91)","liberator.core$service_available_QMARK_.invokeStatic(core.clj:514)","liberator.core$service_available_QMARK_.invoke(core.clj:514)","liberator.core$run_resource.invokeStatic(core.clj:599)","liberator.core$run_resource.invoke(core.clj:597)","cayenne.api.v1.routes$member_works_resource$fn__22177.invoke(routes.clj:364)","compojure.response$eval21288$fn__21289.invoke(response.clj:47)","compojure.response$eval21210$fn__21211$G__21201__21218.invoke(response.clj:7)","compojure.core$wrap_response$fn__21880.invoke(core.clj:158)","compojure.core$wrap_route_middleware$fn__21864.invoke(core.clj:128)","compojure.core$wrap_route_info$fn__21869.invoke(core.clj:137)","compojure.core$wrap_route_matches$fn__21873.invoke(core.clj:146)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","compojure.core$routing$fn__21888.invoke(core.clj:185)","clojure.core$some.invokeStatic(core.clj:2592)","clojure.core$some.invoke(core.clj:2583)","compojure.core$routing.invokeStatic(core.clj:185)","compojure.core$routing.doInvoke(core.clj:182)","clojure.lang.RestFn.applyTo(RestFn.java:139)","clojure.core$apply.invokeStatic(core.clj:648)","clojure.core$apply.invoke(core.clj:641)","compojure.core$routes$fn__21892.invoke(core.clj:192)","ring.middleware.logstash$wrap_logstash$fn__23209.invoke(logstash.clj:110)","ring.middleware.keyword_params$wrap_keyword_params$fn__24071.invoke(keyword_params.clj:36)","ring.middleware.nested_params$wrap_nested_params$fn__24119.invoke(nested_params.clj:89)","ring.middleware.params$wrap_params$fn__24035.invoke(params.clj:67)","cayenne.api.route$wrap_cors$fn__24655.invoke(route.clj:101)","metrics.ring.expose$expose_metrics_as_json$fn__23595.invoke(expose.clj:94)","metrics.ring.instrument$instrument$fn__23611$fn__23612.invoke(instrument.clj:44)","metrics.ring.instrument.proxy$java.lang.Object$Callable$7da976d4.call(Unknown Source)","com.yammer.metrics.core.Timer.time(Timer.java:91)","metrics.ring.instrument$instrument$fn__23611.invoke(instrument.clj:43)","heartbeat.ring$wrap_heartbeat$fn__23297.invoke(ring.clj:18)","cayenne.api.conneg$wrap_accept$fn__19751.invoke(conneg.clj:53)","cayenne.api.route$wrap_exception_handler$fn__24660.invoke(route.clj:110)","cayenne.api.route$wrap_ignore_trailing_slash$fn__24668.invoke(route.clj:136)","org.httpkit.server.HttpHandler.run(RingHandler.java:91)","java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)","java.util.concurrent.FutureTask
      
      testthat results ================================================================
      OK: 218 SKIPPED: 0 FAILED: 3
      1. Failure: DOIs with no agency found still work, at least some do (@test_cr_cn.R#38) 
      2. Failure: cr_members fails correctly (@test_cr_members.R#43) 
      3. Failure: cr_members fails correctly (@test_cr_members.R#47) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rdatacite

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 54 SKIPPED: 0 FAILED: 17
      1. Failure: dc_oai_getrecord - basic functionality works (@test-dc_oai_getrecord.R#8) 
      2. Failure: dc_oai_getrecord - basic functionality works (@test-dc_oai_getrecord.R#9) 
      3. Failure: dc_oai_getrecord - basic functionality works (@test-dc_oai_getrecord.R#10) 
      4. Failure: dc_oai_getrecord - basic functionality works (@test-dc_oai_getrecord.R#11) 
      5. Failure: dc_oai_getrecord - many record Ids input works (@test-dc_oai_getrecord.R#20) 
      6. Failure: dc_oai_getrecord - many record Ids input works (@test-dc_oai_getrecord.R#21) 
      7. Failure: dc_oai_getrecord - many record Ids input works (@test-dc_oai_getrecord.R#22) 
      8. Failure: dc_oai_getrecord - many record Ids input works (@test-dc_oai_getrecord.R#23) 
      9. Failure: dc_oai_getrecord - many record Ids input works (@test-dc_oai_getrecord.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rDEA

Version: 1.2-5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rglpk’
    ```

# rDGIdb

Version: 1.2.1

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: queryDGIdb
    > ### Title: Query DGIdb using R
    > ### Aliases: queryDGIdb
    > ### Keywords: ~interface ~database
    > 
    > ### ** Examples
    > 
    > genes <- c("XYZA", "TNF", "IL6", "IL8")
    > result <- queryDGIdb(genes = genes)
    Querying DGIDB...done!
    > 
    > result <- queryDGIdb(genes = genes,
    +                 sourceDatabases = c("MyCancerGenome","TEND","TTD"),
    +                 geneCategories = "cell surface",
    +                 interactionTypes = c("activator","inhibitor"))
    Querying DGIDB...done!
    Error in matrix(unlist(value, recursive = FALSE, use.names = FALSE), nrow = nr,  : 
      length of 'dimnames' [2] not equal to array extent
    Calls: queryDGIdb ... FUN -> [<- -> [<-.data.frame -> Ops.data.frame -> matrix
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 61-62 (vignette.Rnw) 
    Error: processing vignette 'vignette.Rnw' failed with diagnostics:
    length of 'dimnames' [2] not equal to array extent
    Execution halted
    ```

# RDota2

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 28
      1. Failure: function fails if no key has been set (@test_get_event_stats_for_account.R#17) 
      2. Error: function fails if no key has been set (@test_get_event_stats_for_account.R#24) 
      3. Failure: function fails if no key has been set (@test_get_game_items.R#15) 
      4. Error: function fails if no key has been set (@test_get_game_items.R#20) 
      5. Failure: function get heroes works properly (@test_get_heroes.R#16) 
      6. Error: function get heroes works properly (@test_get_heroes.R#21) 
      7. Failure: function get_league_listing works properly (@test_get_league_listing.R#15) 
      8. Error: function get_league_listing works properly (@test_get_league_listing.R#20) 
      9. Failure: function get_live_league_games works properly (@test_get_live_league_games.R#15) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 54-61 (RDota2.Rmd) 
    Error: processing vignette 'RDota2.Rmd' failed with diagnostics:
    The function cannot find an API key. Please register a key by using the RDota2::key_actions function. If you do not have a key you can obtain one by visiting https://steamcommunity.com/dev.
    Execution halted
    ```

# rDotNet

Version: 0.9.1

## In both

*   checking if this is a source package ... WARNING
    ```
    Subdirectory ‘src’ contains:
      CLRApi.hpp CLRFactory.hpp CLRObjectRef.hpp Common.hpp OS.hpp
      RValue.hpp TcpClient.hpp
    These are unlikely file names for src files.
    ```

# rdpla

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 24
      1. Error: dpla_collections basic functionality works (@test-dpla_collections.R#6) 
      2. Error: dpla_items - pagination works (@test-dpla_collections.R#20) 
      3. Error: dpla_items - fields requests work (@test-dpla_collections.R#35) 
      4. Failure: dpla_items fails well (@test-dpla_collections.R#46) 
      5. Failure: dpla_items fails well (@test-dpla_collections.R#49) 
      6. Error: dpla_collections_ basic functionality works (@test-dpla_collections_.R#6) 
      7. Error: dpla_items - pagination works (@test-dpla_collections_.R#22) 
      8. Error: dpla_items - fields requests work (@test-dpla_collections_.R#37) 
      9. Failure: dpla_items fails well (@test-dpla_collections_.R#48) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rdrop2

Version: 0.8.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      OK: 2 SKIPPED: 0 FAILED: 22
      1. Error: Able to authenticate from saved RDS token (@test-01_rdrop-auth.R#6) 
      2. Error: Account information works correctly (@test-01_rdrop-auth.R#18) 
      3. Error: Test that basic file ops work correctly (@test-02_rdrop2-upload.R#17) 
      4. Error: Image upload works correctly (@test-02_rdrop2-upload.R#39) 
      5. Error: Autorename upload works correctly (@test-02_rdrop2-upload.R#64) 
      6. Error: Able to retrieve metadata for file in multiple ways (@test-04-rdrop2-metadata.R#9) 
      7. Error: drop_dir lists files normally (@test-05-rdrop2-dir.R#8) 
      8. Error: drop_dir can detect changes in directory (@test-05-rdrop2-dir.R#46) 
      9. Error: drop_download works as expected (@test-06-rdrop2-download.R#9) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: There were 12 warnings (use warnings() to see them)
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘digest’
      All declared Imports should be used.
    ```

# rdryad

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      7. Failure: dr_get_records works (@test-dr_get_records.R#21) -------------------
      `any(grepl("dryad", bb$identifier))` isn't true.
      
      testthat results ================================================================
      OK: 64 SKIPPED: 0 FAILED: 7
      1. Error: download_url basic functionality works (@test-download_url.R#6) 
      2. Failure: dr_get_records works (@test-dr_get_records.R#13) 
      3. Failure: dr_get_records works (@test-dr_get_records.R#14) 
      4. Failure: dr_get_records works (@test-dr_get_records.R#16) 
      5. Failure: dr_get_records works (@test-dr_get_records.R#18) 
      6. Failure: dr_get_records works (@test-dr_get_records.R#19) 
      7. Failure: dr_get_records works (@test-dr_get_records.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# re2r

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        doc    1.5Mb
        libs  10.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# readat

Version: 1.2.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    sfread: no visible binding for global variable ‘header’
    sfread: no visible binding for global variable ‘nrows’
    Undefined global functions or variables:
      header nrows
    ```

# readr

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        libs  12.8Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘readr/libs/readr.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_WriteConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# readtext

Version: 0.50

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘antiword’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# readxl

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.3Mb
    ```

# rebus.base

Version: 0.0-3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rebus.unicode’
    ```

# rebus.datetimes

Version: 0.0-1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4. Failure: get_months with abbreviate = TRUE returns a group of months of the year (@test-get-weekdays-months.R#40) 
      `actual` not equal to `expected`.
      1/1 mismatches
      x[1]: "(?:Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez)"
      y[1]: "(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 4
      1. Failure: get_weekdays returns a group of days of the week (@test-get-weekdays-months.R#9) 
      2. Failure: get_weekdays with abbreviate = TRUE returns a group of days of the week (@test-get-weekdays-months.R#19) 
      3. Failure: get_months returns a group of months of the year (@test-get-weekdays-months.R#30) 
      4. Failure: get_months with abbreviate = TRUE returns a group of months of the year (@test-get-weekdays-months.R#40) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# recexcavAAR

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        doc    2.5Mb
        libs   4.8Mb
    ```

# recount

Version: 1.2.3

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### ** Examples
    > 
    > 
    > if(.Platform$OS.type != 'windows') {
    + ## Reading BigWig files is not supported by rtracklayer on Windows
    +     ## Define expressed regions for study DRP002835, chrY
    +     regions <- expressed_regions('DRP002835', 'chrY', cutoff = 5L, 
    +         maxClusterGap = 3000L)
    + 
    +     ## Now calculate the coverage matrix for this study
    +     rse <- coverage_matrix('DRP002835', 'chrY', regions)
    + 
    +     ## One row per region
    +     identical(length(regions), nrow(rse))
    + }
    2017-10-15 17:15:52 loadCoverage: loading BigWig file http://duffel.rail.bio/recount/DRP002835/bw/mean_DRP002835.bw
    Warning in seqinfo(con) :
      unable to parse last-modified string [Sun, 24 Jul 2016 17:00:04 GMT]
    Error in seqinfo(con) : UCSC library operation failed
    Calls: expressed_regions ... import -> import -> .local -> seqinfo -> seqinfo -> .Call
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      10: .local(con, format, text, ...)
      11: seqinfo(con)
      12: seqinfo(con)
      
      testthat results ================================================================
      OK: 29 SKIPPED: 0 FAILED: 2
      1. Error: (unknown) (@test-annotation.R#8) 
      2. Error: (unknown) (@test-data.R#76) 
      
      Error: testthat unit tests failed
      In addition: Warning messages:
      1: call dbDisconnect() when finished working with a connection 
      2: In .Internal(gc(verbose, reset)) :
        closing unused connection 3 (/home/muelleki/tmp/Rtmp3dFhV4/GSM1062236.soft)
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        data  10.7Mb
        doc    2.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    add_predictions: no visible binding for global variable
      ‘PredictedPhenotypes’
    Undefined global functions or variables:
      PredictedPhenotypes
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 347 marked UTF-8 strings
    ```

# REDCapR

Version: 0.9.8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(REDCapR)
      > 
      > testthat::test_check("REDCapR")
      1. Failure: Write Batch -Update One Field (@test-write-batch.R#112) ------------
      The returned data.frame should be correct not equal to `expected_data_frame`.
      Component "mugshot": Modes: logical, character
      Component "mugshot": target is logical, current is character
      
      testthat results ================================================================
      OK: 583 SKIPPED: 0 FAILED: 1
      1. Failure: Write Batch -Update One Field (@test-write-batch.R#112) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# redist

Version: 1.3-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data   1.7Mb
        libs   6.2Mb
    ```

# redland

Version: 1.0.17-9

## In both

*   checking R code for possible problems ... NOTE
    ```
    mergeNamespace_roclet: no visible global function definition for
      ‘new_roclet’
    Undefined global functions or variables:
      new_roclet
    ```

# redlistr

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# redux

Version: 1.0.0

## In both

*   checking whether package ‘redux’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/redux/new/redux.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sys’
    ```

## Installation

### Devel

```
* installing *source* package ‘redux’ ...
** package ‘redux’ successfully unpacked and MD5 sums checked
Package hiredis was not found in the pkg-config search path.
Perhaps you should add the directory containing `hiredis.pc'
to the PKG_CONFIG_PATH environment variable
No package 'hiredis' found
Using PKG_CFLAGS=-I/usr/include/hiredis
Using PKG_LIBS=-lhiredis
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because hiredis was not found. Try installing:
 * deb: libhiredis-dev (Debian, Ubuntu, etc)
 * rpm: hiredis-devel (Fedora, EPEL)
 * brew: hiredis (OSX)
If hiredis is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a hiredis.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘redux’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/redux/new/redux.Rcheck/redux’

```
### CRAN

```
* installing *source* package ‘redux’ ...
** package ‘redux’ successfully unpacked and MD5 sums checked
Package hiredis was not found in the pkg-config search path.
Perhaps you should add the directory containing `hiredis.pc'
to the PKG_CONFIG_PATH environment variable
No package 'hiredis' found
Using PKG_CFLAGS=-I/usr/include/hiredis
Using PKG_LIBS=-lhiredis
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because hiredis was not found. Try installing:
 * deb: libhiredis-dev (Debian, Ubuntu, etc)
 * rpm: hiredis-devel (Fedora, EPEL)
 * brew: hiredis (OSX)
If hiredis is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a hiredis.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘redux’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/redux/old/redux.Rcheck/redux’

```
# refimpact

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 85 marked UTF-8 strings
    ```

# regioneR

Version: 1.8.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘memoise’ ‘GenomicRanges’ ‘BSgenome’ ‘rtracklayer’ ‘parallel’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    removeOverlapping: no visible global function definition for
      ‘subjectHits’
    resampleRegions: no visible global function definition for ‘hasArg’
    splitRegions: no visible global function definition for ‘hasArg’
    subtractRegions: no visible global function definition for ‘hasArg’
    toDataframe: no visible global function definition for ‘hasArg’
    toDataframe: no visible global function definition for ‘is’
    toGRanges: no visible global function definition for ‘hasArg’
    toGRanges: no visible global function definition for ‘is’
    toGRanges : <anonymous>: no visible global function definition for
      ‘read.delim’
    toGRanges : <anonymous> : <anonymous>: no visible global function
      definition for ‘read.csv’
    uniqueRegions: no visible global function definition for ‘hasArg’
    Undefined global functions or variables:
      hasArg is queryHits read.csv read.delim subjectHits
    Consider adding
      importFrom("methods", "hasArg", "is")
      importFrom("utils", "read.csv", "read.delim")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# ReinforcementLearning

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# remotes

Version: 1.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 186 SKIPPED: 2 FAILED: 10
      1.  Error: decompress with internal unzip (@test-decompress.R#35) 
      2.  Error: download_method (@test-download.R#17) 
      3.  Error: download basic auth (@test-download.R#58) 
      4.  Error: git not quiet (@test-git.R#29) 
      5.  Error: git error (@test-git.R#42) 
      6.  Error: git_path (@test-git.R#64) 
      7.  Error: remote_download.svn_remote error (@test-install-svn.R#79) 
      8.  Error: svn_path (@test-install-svn.R#134) 
      9.  Failure: system_check (@test-system.R#6) 
      10. Failure: system_check (@test-system.R#16) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rENA

Version: 0.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.9Mb
      sub-directories of 1Mb or more:
        libs  22.5Mb
    ```

# replyr

Version: 0.5.3

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘magick’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RSQLite’
      All declared Imports should be used.
    ```

# repo

Version: 2.1.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### ** Examples
    > 
    > ## Repository creation
    > rp_path <- file.path(tempdir(), "example_repo")
    > rp <- repo_open(rp_path, TRUE)
    Repo root created.
    Repo created.
    > 
    > ## The following item will have remote source
    > rp$put("Local content", "item1", "Sample item 1", "tag",
    +          URL="http://www.francesconapolitano.it/repo/remote")
    > print(rp$get("item1"))
    [1] "Local content"
    > rp$pull("item1")
    trying URL 'http://www.francesconapolitano.it/repo/remote'
    Warning in download.file(e$URL, tf) :
      cannot open URL 'http://www.francesconapolitano.it/repo/remote': HTTP status was '404 Not Found'
    Error in download.file(e$URL, tf) : 
      cannot open URL 'http://www.francesconapolitano.it/repo/remote'
    Calls: <Anonymous> -> download.file
    Execution halted
    ```

# repr

Version: 0.12.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘data.table’ ‘dplyr’ ‘htmlwidgets’
    ```

# repurrrsive

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# rerddap

Version: 0.4.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Actual message: "HTTP Status 500 – Internal Server Error"
      
      testthat results ================================================================
      OK: 123 SKIPPED: 0 FAILED: 8
      1. Failure: ed_search_adv fails well (@test-ed_search_adv.R#58) 
      2. Failure: ed_search_adv fails well (@test-ed_search_adv.R#59) 
      3. Failure: info fails well (@test-info.R#48) 
      4. Failure: tabledap fields parameter works, and fails correctly (@test-tabledap.R#27) 
      5. Failure: tabledap units parameter works, and fails correctly (@test-tabledap.R#38) 
      6. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#47) 
      7. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#48) 
      8. Failure: tabledap fails well, in addition to above failure tests (@test-tabledap.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘taxize’
    ```

# revdbayes

Version: 1.2.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: compare.numeric(act$val, exp$val, ...)
      4: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      5: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      6: stop(gettextf("'%s' must be logical", "check.attributes"), domain = NA)
      
      testthat results ================================================================
      OK: 20 SKIPPED: 0 FAILED: 4
      1. Error: prior_prob (@test-inf_priors.R#43) 
      2. Error: prior_prob (@test-inf_priors.R#43) 
      3. Error: prior_quant (@test-inf_priors.R#43) 
      4. Error: prior_quant (@test-inf_priors.R#43) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rex

Version: 1.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 348 SKIPPED: 1 FAILED: 1
      1. Error: register_shortcuts calls utils::globalVariables (@test-print.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rfigshare

Version: 0.3.7

## In both

*   checking R code for possible problems ... NOTE
    ```
    fs_author_ids : <anonymous>: no visible global function definition for
      ‘select.list’
    fs_download : <anonymous>: no visible global function definition for
      ‘download.file’
    Undefined global functions or variables:
      download.file select.list
    Consider adding
      importFrom("utils", "download.file", "select.list")
    to your NAMESPACE file.
    ```

# rfishbase

Version: 2.1.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 44 marked UTF-8 strings
    ```

# rfml

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: MarkLogic database can be initiated for rfml (@test-00-config.R#5) 
      2. Error: MarkLogic database can be cleand up (@test-00-config.R#10) 
      3. Error: Statistics field based methods (@test-method-statistics.R#5) 
      4. Error: Statistics ml.data.frame based methods (@test-method-statistics.R#24) 
      5. Error: ml.arules works (@test-ml.arules.R#5) 
      6. Error: ml.col.def methods (@test-ml.col.def.R#5) 
      7. Error: can create and delete a ml.data.frame based on iris dataset using json format (@test-ml.data.frame.R#5) 
      8. Error: can create and delete a ml.data.frame based on iris dataset using xml format (@test-ml.data.frame.R#15) 
      9. Error: can create a ml.data.frame based on search (@test-ml.data.frame.R#25) 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning message:
      closing unused connection 3 (/home/muelleki/git/R/testthat/revdep/checks/rfml/new/rfml.Rcheck/rfml/lib/rfmlUtilities.sjs) 
      Execution halted
    ```

# rgbif

Version: 0.9.8

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: occ_get(key = 766766824, return = "data") at testthat/test-occ_get.r:6
      2: getdata(key)
      3: gbif_GET(url, NULL, FALSE, curlopts)
      4: stop(mssg, call. = FALSE)
      
      testthat results ================================================================
      OK: 704 SKIPPED: 0 FAILED: 5
      1. Failure: args that support many repeated uses in one request (@test-dataset_search.r#83) 
      2. Failure: args that support many repeated uses in one request (@test-dataset_suggest.r#58) 
      3. Failure: name_usage works (@test-name_usage.r#27) 
      4. Failure: occ_count (@test-occ_count.r#30) 
      5. Error: returns the correct class (@test-occ_get.r#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rgeolocate

Version: 1.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        extdata   3.5Mb
        libs      2.5Mb
    ```

# rgho

Version: 1.0.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘rgho-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_gho_data
    > ### Title: Returns GHO Data
    > ### Aliases: get_gho_data
    > 
    > ### ** Examples
    > 
    > 
    > result <- get_gho_data(
    +   dimension = "GHO",
    +   code = "MDG_0000000001"
    + )
    Error: parse error: premature EOF
                                           
                         (right here) ------^
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 30-31 (a-intro.Rmd) 
    Error: processing vignette 'a-intro.Rmd' failed with diagnostics:
    parse error: premature EOF
                                           
                         (right here) ------^
    Execution halted
    ```

# rGoodData

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      8: FUN(X[[i]], ...)
      9: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 3
      1. Error: Login procedure works (@test.login.R#7) 
      2. Error: Login unauthorized message is correct (@test.login.R#15) 
      3. Error: (unknown) (@test.report.export.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RGoogleAnalytics

Version: 0.1.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# rGREAT

Version: 1.8.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    submitGreatJob: no visible global function definition for ‘warn’
    Undefined global functions or variables:
      warn
    ```

# rGroovy

Version: 1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test_all.R’ failed.
    Last 13 lines of output:
      7: tryCatchList(expr, names[-nh], parentenv, handlers[-nh])
      8: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      9: value[[3L]](cond)
      10: isTRUE(e$handled)
      11: e$handled
      12: `$.Throwable`(e, "handled")
      13: ._jobjRef_dollar(x[["jobj"]], name)
      14: stop(sprintf("no field, method or inner class called '%s' ", name))
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_rGroovy.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RiboProfiling

Version: 1.6.0

## In both

*   checking whether package ‘RiboProfiling’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘BiocGenerics::Position’ by ‘ggplot2::Position’ when loading ‘RiboProfiling’
    See ‘/home/muelleki/git/R/testthat/revdep/checks/RiboProfiling/new/RiboProfiling.Rcheck/00install.out’ for details.
    ```

*   checking R code for possible problems ... NOTE
    ```
    applyShiftFeature: no visible global function definition for 'is'
    aroundPromoter: no visible global function definition for 'is'
    codonInfo: no visible global function definition for 'is'
    countShiftReads: no visible global function definition for 'is'
    histMatchLength: no visible global function definition for 'is'
    orfRelativePos: no visible global function definition for 'is'
    plotSummarizedCov: no visible global function definition for 'is'
    readStartCov: no visible global function definition for 'is'
    readsToStartOrEnd: no visible global function definition for 'is'
    riboSeqFromBAM: no visible global function definition for 'is'
    Undefined global functions or variables:
      is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# rif

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 22
      1. Error: federation_data (@test-federation_data.R#6) 
      2. Error: federation_facet (@test-federation_facet.R#6) 
      3. Error: federation_search (@test-federation_search.R#6) 
      4. Error: lexical_chunks (@test-lexical_chunks.R#6) 
      5. Error: lexical_entities (@test-lexical_entities.R#6) 
      6. Error: lexical_pmchunks (@test-lexical_pmchunks.R#6) 
      7. Error: lexical_pmentities (@test-lexical_pmentities.R#6) 
      8. Error: lexical_pos (@test-lexical_pos.R#6) 
      9. Error: lexical_sentences (@test-lexical_sentences.R#6) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RImageJROI

Version: 0.1.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    plot.ijzip: no visible global function definition for ‘plot’
    plot.ijzip : <anonymous>: no visible global function definition for
      ‘plot’
    plot.ijzip: no visible global function definition for ‘axis’
    read.ijzip: no visible global function definition for ‘unzip’
    Undefined global functions or variables:
      axis plot unzip
    Consider adding
      importFrom("graphics", "axis", "plot")
      importFrom("utils", "unzip")
    to your NAMESPACE file.
    ```

# RiskPortfolios

Version: 2.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MASS’
      All declared Imports should be used.
    ```

# riskRegression

Version: 1.4.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# RItools

Version: 0.1-15

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘optmatch’
    ```

# RIVER

Version: 1.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘data.table’
    ```

# rjsonapi

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘crul’
      All declared Imports should be used.
    ```

# rlang

Version: 0.1.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 629 SKIPPED: 4 FAILED: 9
      1. Failure: dots can be spliced (@test-dots.R#22) 
      2. Error: splice is consistently recognised (@test-tidy-capture.R#60) 
      3. Failure: interpolation does not recurse over spliced arguments (@test-tidy-unquote.R#6) 
      4. Failure: interpolation does not recurse over spliced arguments (@test-tidy-unquote.R#7) 
      5. Failure: can interpolate in specific env (@test-tidy-unquote.R#46) 
      6. Error: UQ() fails if called without argument (@test-tidy-unquote.R#93) 
      7. Error: contents of UQS() must be a vector or language object (@test-tidy-unquote.R#101) 
      8. Error: can unquote-splice symbols (@test-tidy-unquote.R#174) 
      9. Error: can unquote symbols (@test-tidy-unquote.R#178) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rmapzen

Version: 0.3.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: FUN(X[[i]], ...)
      4: vector_url(x = tile_coordinates$x, y = tile_coordinates$y, z = tile_coordinates$z, 
             layers = "all", format = "json")
      5: structure(list(scheme = "https", hostname = "tile.mapzen.com", path = vector_path(layers, 
             x, y, z, format), query = list(api_key = api_key)), class = "url")
      6: mz_key()
      7: stop("Set the MAPZEN_KEY environment variable")
      
      testthat results ================================================================
      OK: 199 SKIPPED: 0 FAILED: 2
      1. Error: single tiles can be pulled (@test-mz-vector-tiles.R#14) 
      2. Error: multiple contiguous tiles can be pulled (@test-mz-vector-tiles.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 31 marked UTF-8 strings
    ```

# RMariaDB

Version: 1.0-2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: DBItest[RMariaDB]: Driver: can_connect 
      2. Error: DBItest[RMariaDB]: Connection: can_disconnect 
      3. Error: DBItest[RMariaDB]: Connection: cannot_forget_disconnect 
      4. Error: DBItest[RMariaDB]: Connection: disconnect_closed_connection 
      5. Error: DBItest[RMariaDB]: Connection: disconnect_invalid_connection 
      6. Error: DBItest[RMariaDB]: Connection: data_type_connection 
      7. Error: DBItest[RMariaDB]: Result: send_query_trivial 
      8. Error: DBItest[RMariaDB]: Result: send_query_closed_connection 
      9. Error: DBItest[RMariaDB]: Result: send_query_invalid_connection 
      1. ...
      
      Error: testthat unit tests failed
      In addition: Warning message:
      Unknown tweaks: list_temporary_tables 
      Execution halted
    ```

# rmarkdown

Version: 1.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        rmd   6.1Mb
    ```

# rmcfs

Version: 1.2.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        java   4.5Mb
    ```

# rmonad

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# rmumps

Version: 5.1.1-3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.7Mb
      sub-directories of 1Mb or more:
        libs  10.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rnaturalearth

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rnaturalearthhires’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked Latin-1 strings
    ```

# rnaturalearthdata

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 133 marked Latin-1 strings
    ```

# rncl

Version: 0.8.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.4Mb
      sub-directories of 1Mb or more:
        libs  21.2Mb
    ```

# RNeXML

Version: 2.0.7

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
       	 0 character matrices 
       	 0 taxonomic units 
       Taxa: 	  ... 
      
       NeXML generated by RNeXML using schema version: 0.9 
       size: 21.8 Kb 
      Done simulation(s).
      testthat results ================================================================
      OK: 173 SKIPPED: 3 FAILED: 3
      1. Error: we can concatenate meta elements (@test_concatenate.R#27) 
      2. Error: we can conatenate meta elements with empty ListOfmeta elements (@test_concatenate.R#40) 
      3. Error: we can conatenate meta elements with ListOfmeta elements (@test_concatenate.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
    ```

# RNHANES

Version: 1.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ==================================================
      downloaded 491 KB
      
      testthat results ================================================================
      OK: 109 SKIPPED: 15 FAILED: 7
      1. Error: it can recode data and demographics (@test_data_files.R#180) 
      2. Failure: nhanes_search on variables passes spot check (@test_search.R#13) 
      3. Failure: nhanes_search on variables passes spot check (@test_search.R#14) 
      4. Failure: nhanes_search on files passes spot check (@test_search.R#20) 
      5. Failure: nhanes_search on files passes spot check (@test_search.R#21) 
      6. Failure: fuzzy search works on files (@test_search.R#33) 
      7. Failure: fuzzy search works on files (@test_search.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RNifti

Version: 0.7.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘oro.nifti’ ‘tractor.base’
    ```

# RNiftyReg

Version: 2.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 96.4Mb
      sub-directories of 1Mb or more:
        extdata   2.0Mb
        libs     94.3Mb
    ```

# rnoaa

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 181 SKIPPED: 1 FAILED: 9
      1. Error: check_response returns an error (@test-check_response.r#7) 
      2. Error: check_response returns the correct error messages (@test-check_response.r#26) 
      3. Error: ncdc returns the correct ... (@test-ncdc.r#8) 
      4. Error: ncdc_datacats returns the correct ... (@test-ncdc_datacats.r#7) 
      5. Error: ncdc_datasets returns the correct class (@test-ncdc_datasets.r#7) 
      6. Error: ncdc_datatypes returns the correct class (@test-ncdc_datatypes.r#7) 
      7. Error: ncdc_locs returns the correct class (@test-ncdc_locs.r#7) 
      8. Error: ncdc_locs_cats returns the correct ... (@test-ncdc_locs_cats.r#7) 
      9. Error: ncdc_stations returns the correct... (@test-ncdc_stations.r#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rnpn

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      7. Failure: npn_stationswithspp works well (@test-npn_stationswithspp.R#15) ----
      `bb$latitude` inherits from `numeric` not `character`.
      
      testthat results ================================================================
      OK: 20 SKIPPED: 0 FAILED: 7
      1. Failure: npn_indsatstations works well (@test-npn_indsatstations.R#9) 
      2. Failure: npn_indspatstations works well (@test-npn_indspatstations.R#9) 
      3. Error: npn_obsspbyday works well (@test-npn_obsspbyday.R#6) 
      4. Error: when no match, returns empty data.frame (@test-npn_obsspbyday.R#20) 
      5. Failure: npn_stationsbystate works well (@test-npn_stationsbystate.R#11) 
      6. Failure: npn_stationswithspp works well (@test-npn_stationswithspp.R#10) 
      7. Failure: npn_stationswithspp works well (@test-npn_stationswithspp.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# roadoi

Version: 0.4

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 73-79 (intro.Rmd) 
    Error: processing vignette 'intro.Rmd' failed with diagnostics:
    Evaluation error: Result 2 is not a length 1 atomic vector.
    Execution halted
    ```

# RObsDat

Version: 16.03

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘SSOAP’
    ```

# RODBCDBI

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 30 SKIPPED: 0 FAILED: 14
      1. Error: Connection should be established (@test-ODBCConnection.R#11) 
      2. Error: iris exists by dbExistsTable (@test-ODBCConnection.R#22) 
      3. Error: iris exists by dbListTables (@test-ODBCConnection.R#30) 
      4. Error: iris does not exists (@test-ODBCConnection.R#38) 
      5. Error: COlumn name should match (@test-ODBCConnection.R#45) 
      6. Error: COlumn name should match including rownames (@test-ODBCConnection.R#53) 
      7. Error: it should not behave like bringing any error (@test-ODBCConnection.R#62) 
      8. Error: iris table and raw iris data should be match (@test-ODBCConnection.R#69) 
      9. Error: DB source name should be test (@test-ODBCConnection.R#77) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rODE

Version: 0.99.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘data.table’
      All declared Imports should be used.
    ```

# rodham

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 59 marked UTF-8 strings
    ```

# ROI.plugin.clp

Version: 0.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘clpAPI’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rols

Version: 2.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Testing term SO:0001225 
      Testing term SO:0001221 
      Testing term SO:0001438 
      Testing term SO:0000303 
      Testing term SO:0000460 
      Testing term SO:0000124 
      Testing term SO:0001428 
      Testing term SO:0000414 
      Testing term SO:0000638 
      testthat results ================================================================
      OK: 196 SKIPPED: 0 FAILED: 1
      1. Failure: constructors (@test_Terms.R#57) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 227-229 (rols.Rmd) 
    Error: processing vignette 'rols.Rmd' failed with diagnostics:
    Not Found (HTTP 404).
    Execution halted
    ```

# rolypoly

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘matrixcalc’
      All declared Imports should be used.
    ```

# rorcid

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1. Failure: identifiers works with output from orcid() call (@test-identifiers.R#51) 
      `grepl("G", bb)` isn't true.
      
      2. Failure: orcid fails well (@test-orcid.R#60) --------------------------------
      `orcid(start = "adsf")` threw an error with unexpected message.
      Expected match: "500 - For input string: \"adsf\""
      Actual message: "400 - The start parameter for API users without credentials must be an integer between 0 and 10,000"
      
      testthat results ================================================================
      OK: 100 SKIPPED: 0 FAILED: 2
      1. Failure: identifiers works with output from orcid() call (@test-identifiers.R#51) 
      2. Failure: orcid fails well (@test-orcid.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rosm

Version: 0.2.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cartography’
    ```

# rotations

Version: 1.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        data   2.3Mb
        libs   6.5Mb
    ```

# rotl

Version: 3.0.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 455 SKIPPED: 0 FAILED: 17
      1. Failure: correct data is being returned when asked to lookup by taxon name (@test-match_names.R#123) 
      2. Failure: correct data is being returned when asked to lookup by ott_id (@test-match_names.R#129) 
      3. Failure: correct data is being returned when asked to lookup by row number (@test-match_names.R#135) 
      4. Failure: correct data is being returned when asked to lookup by taxon name (with missing data) (@test-match_names.R#143) 
      5. Failure: correct data is being returned when asked to lookup by ott_id (with missing data) (@test-match_names.R#150) 
      6. Failure: correct data is being returned when asked to lookup by row number (with missing data) (@test-match_names.R#156) 
      7. Error: correct synonyms are being returned when asked to look up by ott id (@test-match_names.R#210) 
      8. Error: correct synonyms are being returned when asked to look up by ott id (@test-match_names.R#245) 
      9. Failure: flags with no arguments (@test-match_names.R#333) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# ROTS

Version: 1.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: genefilter::rowttests at testthat/test_ROTS.R:30
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 49 SKIPPED: 0 FAILED: 1
      1. Error: Comparison to t-test (@test_ROTS.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# routr

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httpuv’ ‘utils’
      All declared Imports should be used.
    ```

# rpartitions

Version: 0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘hash’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    P: no visible global function definition for ‘has.key’
    get_rand_int: no visible global function definition for ‘runif’
    last: no visible global function definition for ‘tail’
    rand_partitions: no visible global function definition for ‘hash’
    Undefined global functions or variables:
      has.key hash runif tail
    Consider adding
      importFrom("stats", "runif")
      importFrom("utils", "tail")
    to your NAMESPACE file.
    ```

# rpf

Version: 0.55

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        libs   8.5Mb
    ```

# rpivotTable

Version: 0.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘shiny’
    ```

# rplos

Version: 0.6.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 165 SKIPPED: 0 FAILED: 19
      1. Error: check_response catches no data found correctly (@test-check_response.R#20) 
      2. Error: citations (@test-citations.R#15) 
      3. Failure: facetplos (@test-facetplos.R#54) 
      4. Error: facetplos (@test-facetplos.R#55) 
      5. Error: full_text_urls - NA's on annotation DOIs (@test-fulltext.R#31) 
      6. Error: plos_fulltext works (@test-fulltext.R#43) 
      7. Error: highplos (@test-highplos.R#35) 
      8. Error: journalnamekey returns the correct value (@test-journalnamekey.R#7) 
      9. Error: journalnamekey returns the correct class (@test-journalnamekey.R#13) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘tm’
    ```

# rpostgisLT

Version: 0.5.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘rpostgis:::dbBuildTableQuery’ ‘rpostgis:::dbConnCheck’
      ‘rpostgis:::dbExistsTable’ ‘rpostgis:::dbTableNameFix’
      See the note in ?`:::` about the use of this operator.
    ```

# rPref

Version: 1.2

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rprime

Version: 0.1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    but_last: no visible global function definition for ‘head’
    first: no visible global function definition for ‘head’
    last: no visible global function definition for ‘tail’
    preview_frames: no visible global function definition for ‘str’
    print.EprimeFrame: no visible global function definition for ‘str’
    print.FrameList: no visible global function definition for ‘str’
    Undefined global functions or variables:
      head str tail
    Consider adding
      importFrom("utils", "head", "str", "tail")
    to your NAMESPACE file.
    ```

# rprojroot

Version: 1.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 73 SKIPPED: 0 FAILED: 1
      1. Error: Formatting criteria (@test-criterion.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rpsftm

Version: 1.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             if (identical(caller_env, globalenv())) {
                 stop("must be called in a function")
             }
             if (missing(x)) {
                 stop("argument \"x\" is missing")
             }
             .Call(rlang_capturearg, NULL, NULL, pairlist(caller_env, strict), get_env())
         })(object)
      
      testthat results ================================================================
      OK: 193 SKIPPED: 0 FAILED: 1
      1. Error: check variants on fitting (@test_rpsftm.R#243) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rptR

Version: 0.9.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# Rqc

Version: 1.10.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    .ui.Rqc: no visible global function definition for 'packageVersion'
    rqc: no visible global function definition for 'browseURL'
    rqcCycleAverageQualityPcaCalc: no visible global function definition
      for 'prcomp'
    rqcFileHeatmap: no visible global function definition for 'hclust'
    stats4trim : <anonymous>: no visible global function definition for
      'head'
    Undefined global functions or variables:
      browseURL hclust head packageVersion prcomp
    Consider adding
      importFrom("stats", "hclust", "prcomp")
      importFrom("utils", "browseURL", "head", "packageVersion")
    to your NAMESPACE file.
    ```

# RQGIS

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 20 SKIPPED: 0 FAILED: 9
      1. Error: get_options() yields correct output (@test-get-options.R#10) 
      2. Error: get_usage() yields correct output (@test-get-usage.R#8) 
      3. Error: Test, if pass_args works correctly? (@test-pass_args.R#12) 
      4. Error: Test, if multiple input works with pass_args? (@test-pass_args.R#49) 
      5. Error: qgis_session_info yields a list as output (@test-qgis-prerun.R#8) 
      6. Error: find_algorithms finds QGIS geoalgorithms (@test-qgis-prerun.R#19) 
      7. Error: Test, if QGIS-algorithms are working? (@test-run-qgis.R#27) 
      8. Error: Test, if SAGA-algorithms are working? (@test-run-qgis.R#68) 
      9. Error: Test, if GRASS7-algorithms are working? (@test-run-qgis.R#95) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rredlist

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 124 SKIPPED: 0 FAILED: 51
      1. Failure: fails well when an invalid region passed (@test-fail-well.R#26) 
      2. Failure: fails well when an invalid region passed (@test-fail-well.R#31) 
      3. Failure: fails well when an invalid region passed (@test-fail-well.R#36) 
      4. Error: rl_citation works (@test-rl_citation.R#6) 
      5. Failure: rl_citation curl options work (@test-rl_citation.R#16) 
      6. Error: high level works - parsing (@test-rl_common_names.R#6) 
      7. Error: high level works - not parsing (@test-rl_common_names.R#17) 
      8. Error: low level works (@test-rl_common_names.R#30) 
      9. Error: no results (@test-rl_common_names.R#40) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rrr

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# RSauceLabs

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 38 SKIPPED: 0 FAILED: 26
      1. Failure: canGetRealTimeJobActivity (@test-acc_usage_methods_tests.R#6) 
      2. Failure: canGetUserActivity (@test-acc_usage_methods_tests.R#11) 
      3. Error: canGetAccountUsage (@test-acc_usage_methods_tests.R#17) 
      4. Failure: canGetUser (@test-account_methods_tests.R#9) 
      5. Failure: checkCanCreateSubAccount (@test-account_methods_tests.R#26) 
      6. Failure: canGetUserConcurrency (@test-account_methods_tests.R#33) 
      7. Failure: canGetSubUserConcurrency (@test-account_methods_tests.R#39) 
      8. Failure: canGetSubUserConcurrency (@test-account_methods_tests.R#40) 
      9. Failure: canGetListOfSubAccounts (@test-account_methods_tests.R#46) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rsconnect

Version: 0.8.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: bundleApp(appName, appDir, bundleFiles(appDir), appPrimaryDoc, "application", NULL) at testthat/test-bundle.R:4
      3: createAppManifest(bundleDir, appMode, contentCategory, hasParameters, appPrimaryDoc, 
             assetTypeName, users)
      4: stop(paste(formatUL(msg, "\n*"), collapse = "\n"), call. = FALSE)
      
      No running 'connect' instance detected -- tests skipped.testthat results ================================================================
      OK: 139 SKIPPED: 2 FAILED: 5
      1. Error: simple Shiny app bundle includes correct files (@test-bundle.R#19) 
      2. Error: simple Shiny app bundle is runnable (@test-bundle.R#28) 
      3. Error: app.R Shiny app bundle is runnable (@test-bundle.R#36) 
      4. Error: single-file Shiny app bundle is runnable (@test-bundle.R#44) 
      5. Error: recommended packages are snapshotted (@test-bundle.R#52) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘BiocInstaller’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘shiny’
    ```

# rscopus

Version: 0.5.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# rscorecard

Version: 0.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 22-29 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    Missing API key; ?sc_key for details
    Execution halted
    ```

# rsdmx

Version: 0.5-9

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 228 SKIPPED: 3 FAILED: 48
      1. Error: Main helpers arguments (@test_Main_Helpers.R#21) 
      2. Error: ECB - dataflow (@test_Main_Helpers.R#49) 
      3. Error: ECB - datastructure (@test_Main_Helpers.R#59) 
      4. Error: ECB - data (@test_Main_Helpers.R#69) 
      5. Error: ESTAT - dataflow (@test_Main_Helpers.R#84) 
      6. Error: ESTAT - datastructure (@test_Main_Helpers.R#94) 
      7. Error: ESTAT - data (@test_Main_Helpers.R#104) 
      8. Error: IMF - dataflow (@test_Main_Helpers.R#119) 
      9. Error: IMF - datastructure (@test_Main_Helpers.R#129) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# RSelenium

Version: 1.7.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 10
      1.  Error: (unknown) (@test-alerts_tests.R#2) 
      2.  Error: (unknown) (@test-api_example_tests.R#2) 
      3.  Error: (unknown) (@test-cookie_tests.R#2) 
      4.  Failure: canGetHttrError (@test-errorHandler.R#6) 
      5.  Error: (unknown) (@test-executing_javascript_tests.R#2) 
      6.  Error: (unknown) (@test-misc_remoteDriver_methods_tests.R#2) 
      7.  Error: (unknown) (@test-misc_webElement_methods_tests.R#2) 
      8.  Error: (unknown) (@test-page_loading_tests.R#2) 
      9.  Error: (unknown) (@test-takes_screenshots_tests.R#2) 
      10. Error: (unknown) (@test-util_function_tests.R#2) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://dl.dropboxusercontent.com/u/38391057/RSelenium/basics/RProject.png
    StatusCodeException (Status {statusCode = 404, statusMessage = "Not Found"}) [("Server","nginx"),("Date","Sun, 15 Oct 2017 18:42:57 GMT"),("Content-Type","text/html"),("Transfer-Encoding","chunked"),("Connection","keep-alive"),("Vary","Accept-Encoding"),("X-Dropbox-Request-Id","e4ff7100f25353e36b4b1aac6d9ddaaf"),("X-Robots-Tag","noindex, nofollow, noimageindex"),("Content-Encoding","gzip"),("X-Response-Body-Start","<!DOCTYPE html>\n<html>\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n<title>Dropbox - 404</title>\n<link href=\"https://cfl.dropboxstatic.com/static/css/error.css\" rel=\"stylesheet\" type=\"text/css\"/>\n<link rel=\"shortcut icon\" href=\"https://cfl.dropboxstatic.com/static/images/favicon.ico\"/>\n\n</head>\n<body>\n<div class=\"figure\">\n<img src=\"https://cfl.dropboxstatic.com/static/images/publicfoldersunset.svg\" alt=\"Error: 404\"/>\n</div>\n<div id=\"errorbox\">\n<div class=\"public-folder-404\"> <h1 class=\"error_message\">File not found</h1> <br> <div class=\"message_body\"> Sorry, that file doesn&rsquo;t live here anymore. It might have been moved or made private. </div> <br> <a class=\"c-btn c-btn--primary public-folder-link\" href=\"https://www.dropbox.com\">Learn about Dropbox</a> </div>\n</div>\n<section class=\"footer-row\"><footer id=\"homepage-footer\" class=\"twelve-column dropbox-footer clearfix\"><nav><ul class=\"o-nav\"><li class=\"o-nav__header\">Dropbox</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/install\">Desktop app</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/mobile\">Mobile apps</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/plans?trigger=homepagefoot\">Plans</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/security\">Security</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Company</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/about\">About us</a></li><li class=\"o-nav__item\"><a href=\"https://bit.ly/dbxdotcomapps\">Jobs</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/news\">Press</a></li><li class=\"o-nav__item\"><a href=\"https://blogs.dropbox.com/dropbox\">Blog</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Support</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/help\">Help Center</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/contact\">Contact us</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/terms/cookies\">Cookies</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/privacy\">Privacy &amp; terms</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Community</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/developers\">Developers</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/referrals\">Referrals</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropboxforum.com\">Forum</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Connect</li><li class=\"o-nav__item\"><a href=\"https://twitter.com/dropbox\">Twitter</a></li><li class=\"o-nav__item\"><a href=\"https://www.facebook.com/Dropbox\">Facebook</a></li><li class=\"o-nav__item\"><a href=\"https://plus.google.com/+Dropbox/posts\">Google+</a></li><li class=\"o-nav__item\"><a href=\"https://www.youtube.com/user/dropbox\">YouTube</a></li></ul><ul class=\"o-nav\"><li class=\"o-nav__header\">Products</li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/pro\">Plus</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/business\">Business</a></li><li class=\"o-nav__item\"><a href=\"https://www.dropbox.com/enterprise\">Enterprise</a></li></ul></nav><div class=\"react-locale-selector-wrapper\"><div id=\"component1937679262106323703\"><div class=\"react-stub\"></div></div></div></footer></section>\n</body>\n</html>\n"),("X-Request-URL","GET https://dl.dropboxusercontent.com:443/u/38391057/RSelenium/basics/RProject.png")] (CJ {expose = []})
    Error: processing vignette 'RSelenium-basics.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rcompression’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘binman’ ‘httr’
      All declared Imports should be used.
    ```

# rsig

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘parallel’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    filterSD: no visible binding for global variable ‘sd’
    filterSD: no visible global function definition for ‘quantile’
    fit_lasso: no visible global function definition for ‘coef’
    fit_prlasso: no visible global function definition for ‘coef’
    rsig: no visible binding for global variable ‘mclapply’
    rsig.all: no visible binding for global variable ‘mclapply’
    rsig.all : <anonymous>: no visible global function definition for
      ‘flush.console’
    rsig.all : <anonymous>: no visible global function definition for
      ‘predict’
    Undefined global functions or variables:
      coef flush.console mclapply predict quantile sd
    Consider adding
      importFrom("stats", "coef", "predict", "quantile", "sd")
      importFrom("utils", "flush.console")
    to your NAMESPACE file.
    ```

# RSiteCatalyst

Version: 1.4.13

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat-build.R’ failed.
    Last 13 lines of output:
      1: SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", "")) at testthat/test-buildclassificationvaluesegment.R:6
      2: stop("Authentication failed due to errors")
      
      2. Error: Validate BuildRealTimeReportStructure using legacy credentials (@test-buildrealtimereportstructure.R#6) 
      Authentication failed due to errors
      1: SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", "")) at testthat/test-buildrealtimereportstructure.R:6
      2: stop("Authentication failed due to errors")
      
      testthat results ================================================================
      OK: 4 SKIPPED: 0 FAILED: 2
      1. Error: Validate BuildClassificationValueSegment using legacy credentials (@test-buildclassificationvaluesegment.R#6) 
      2. Error: Validate BuildRealTimeReportStructure using legacy credentials (@test-buildrealtimereportstructure.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rslurm

Version: 0.3.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    sh: 1: squeue: not found
    Quitting from lines 84-86 (rslurm.Rmd) 
    Error: processing vignette 'rslurm.Rmd' failed with diagnostics:
    slr_job has not been submitted
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘parallel’
      All declared Imports should be used.
    ```

# rsnps

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      3. Failure: phenotypes returns the correct class (@test-phenotypes.R#11) -------
      `x` not equal to `expected`.
      1/1 mismatches
      x[1]: "Bastian Greshake Tzovaras"
      y[1]: "Bastian Greshake"
      
      testthat results ================================================================
      OK: 53 SKIPPED: 0 FAILED: 3
      1. Error: ld_search returns the correct data (@test-LDSearch.R#6) 
      2. Error: ld_search fails well - one bad snp + other good ones (@test-LDSearch.R#31) 
      3. Failure: phenotypes returns the correct class (@test-phenotypes.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rsoi

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# rsparkling

Version: 0.2.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      OK: 1 SKIPPED: 0 FAILED: 8
      1. Error: Test transformation from h2o frame to data frame (@test_transforms.R#5) 
      2. Error: Test transformation of a spark data_frame of bools to an h2o frame of bools (@test_transforms.R#17) 
      3. Error: Test transformation of a spark data_frame of complex types to an h2o frame of complex types (@test_transforms.R#29) 
      4. Error: Test transformation of a spark data_frame of float types to an h2o frame of floats (@test_transforms.R#45) 
      5. Error: Test transformation of a spark data_frame of int types to an h2o frame of ints (@test_transforms.R#57) 
      6. Error: Test transformation of a spark data_frame of str types to an h2o frame of str (@test_transforms.R#68) 
      7. Error: Test transformation from dataframe to h2o frame (@test_transforms.R#78) 
      8. Error: Test transformation from dataframe to h2o frame (@test_transforms.R#88) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      In .Internal(gc(verbose, reset)) :
        closing unused connection 3 (->localhost:43829)
      Execution halted
    ```

# RSQLite

Version: 2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(RSQLite)
      > 
      > test_check("RSQLite")
      1. Failure: DBItest[RSQLite]: Connection: cannot_forget_disconnect -------------
      `gc()` did not produce any warnings.
      
      testthat results ================================================================
      OK: 4255 SKIPPED: 15 FAILED: 1
      1. Failure: DBItest[RSQLite]: Connection: cannot_forget_disconnect 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pkgconfig’
      All declared Imports should be used.
    ```

# RSSL

Version: 0.6.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        libs   2.7Mb
    ```

# rstanarm

Version: 2.15.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in new_CppObject_xp(fields$.module, fields$.pointer, ...) : 
        no valid constructor available for the argument list
      Error in new_CppObject_xp(fields$.module, fields$.pointer, ...) : 
        no valid constructor available for the argument list
      Error in new_CppObject_xp(fields$.module, fields$.pointer, ...) : 
        no valid constructor available for the argument list
      Error in new_CppObject_xp(fields$.module, fields$.pointer, ...) : 
        no valid constructor available for the argument list
      testthat results ================================================================
      OK: 1737 SKIPPED: 1 FAILED: 2
      1. Error: pp_check.stanreg creates ggplot object (@test_pp_check.R#48) 
      2. Error: the Stan equivalent of lme4's Z %*% b works (@test_stan_functions.R#408) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 58.3Mb
      sub-directories of 1Mb or more:
        doc    2.2Mb
        libs  55.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘gamm4’, ‘biglm’
    ```

# RStoolbox

Version: 0.1.9

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.3Mb
    ```

# rstudioapi

Version: 0.7

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘shiny’, ‘Rook’, ‘opencpu’
    ```

# rsunlight

Version: 0.4.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 8 SKIPPED: 0 FAILED: 30
      1. Error: returns the correct (@test-amendments.R#6) 
      2. Error: vectorizing works (@test-amendments.R#29) 
      3. Error: paging works (@test-amendments.R#37) 
      4. Error: fails well (@test-amendments.R#47) 
      5. Error: cg_bills returns the correct (@test-cg_bills.R#6) 
      6. Error: cg_bills vectorizing works (@test-cg_bills.R#25) 
      7. Error: cg_bills pagination works (@test-cg_bills.R#35) 
      8. Failure: cg_bills curl options work (@test-cg_bills.R#44) 
      9. Failure: cg_bills fails well (@test-cg_bills.R#50) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘ggplot2’
    ```

# RTCGA

Version: 1.6.0

## In both

*   checking examples ... ERROR
    ```
    ...
    + 	MET = `MET|4233`) %>%  
    + 	#cancer samples
    + 	filter(substr(bcr_patient_barcode, 14, 15) == "01") -> ACC_BLCA_BRCA_OV.rnaseq
    > 	
    > 
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "cohort", "MET")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "cohort", "log1p(MET)")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "reorder(cohort,log1p(MET), median)", "log1p(MET)")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "reorder(cohort,log1p(MET), max)", "log1p(MET)")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "reorder(cohort,log1p(MET), median)", "log1p(MET)",
    + xlab = "Cohort Type", ylab = "Logarithm of MET")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "reorder(cohort,log1p(MET), median)", "log1p(MET)", 
    + xlab = "Cohort Type", ylab = "Logarithm of MET", legend.title = "Cohorts")
    > boxplotTCGA(ACC_BLCA_BRCA_OV.rnaseq, "reorder(cohort,log1p(MET), median)", "log1p(MET)", 
    + xlab = "Cohort Type", ylab = "Logarithm of MET", legend.title = "Cohorts", legend = "bottom")
    > 
    > ## facet example
    > library(RTCGA.mutations)
    Error in library(RTCGA.mutations) : 
      there is no package called ‘RTCGA.mutations’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘RTCGA.clinical’ ‘RTCGA.mutations’ ‘RTCGA.RPPA’ ‘RTCGA.mRNA’
      ‘RTCGA.miRNASeq’ ‘RTCGA.methylation’ ‘RTCGA.CNV’
    ```

*   checking R code for possible problems ... NOTE
    ```
    availableDates: no visible binding for global variable ‘.’
    downloadTCGA: no visible binding for global variable ‘.’
    ggbiplot: no visible binding for global variable ‘xvar’
    ggbiplot: no visible binding for global variable ‘yvar’
    ggbiplot: no visible global function definition for ‘muted’
    ggbiplot: no visible binding for global variable ‘varname’
    ggbiplot: no visible binding for global variable ‘angle’
    ggbiplot: no visible binding for global variable ‘hjust’
    read.mutations: no visible binding for global variable ‘.’
    read.rnaseq: no visible binding for global variable ‘.’
    survivalTCGA: no visible binding for global variable ‘times’
    whichDateToUse: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      . angle hjust muted times varname xvar yvar
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘RTCGA.clinical’, ‘RTCGA.mutations’, ‘RTCGA.CNV’, ‘RTCGA.RPPA’, ‘RTCGA.mRNA’, ‘RTCGA.miRNASeq’, ‘RTCGA.methylation’
    ```

# rtext

Version: 0.1.20

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RSQLite’ ‘stats’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# rticles

Version: 0.4.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      15: withVisible(eval(expr, envir, enclos))
      16: eval(expr, envir, enclos)
      17: eval(expr, envir, enclos)
      18: library(xtable)
      19: stop(txt, domain = NA)
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 4
      1. Error: acs_article format (@test_formats.R#30) 
      2. Error: aea_article format (@test_formats.R#30) 
      3. Error: ams_article format (@test_formats.R#30) 
      4. Error: sim_article format (@test_formats.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rtimes

Version: 0.5.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      7: Filter(Negate(is.null), x)
      8: unlist(lapply(x, f))
      9: lapply(x, f)
      10: check_key(key)
      11: stop("need an API key for ", y, call. = FALSE)
      
      testthat results ================================================================
      OK: 2 SKIPPED: 0 FAILED: 4
      1. Error: returns the correct stuff (@test-as_search.R#8) 
      2. Error: returns the correct stuff (@test-geo_search.R#8) 
      3. Failure: fails well (@test-geo_search.R#48) 
      4. Error: fails well (@test-geo_search.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rtimicropem

Version: 1.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# rtk

Version: 0.2.5.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   7.0Mb
    ```

# rtweet

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Downloading: 300 kB     
      Downloading: 300 kB     
      Downloading: 300 kB     
      Downloading: 300 kB     
      Downloading: 300 kB     
      Downloading: 300 kB     
      Downloading: 300 kB     
       Found 204 records...
       Imported 204 records. Simplifying...
      testthat results ================================================================
      OK: 136 SKIPPED: 0 FAILED: 1
      1. Failure: get_favorites returns tweets data (@test_get_favorites.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# Ruchardet

Version: 0.0-3

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# runittotestthat

Version: 0.0-2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘devtools’
    ```

# rvg

Version: 0.1.6

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   6.2Mb
    ```

# rvgtest

Version: 0.7.4

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

# rvinecopulib

Version: 0.1.0.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 47.7Mb
      sub-directories of 1Mb or more:
        libs  47.3Mb
    ```

# RxODE

Version: 0.6-1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘SnakeCharmR’
    ```

# rxylib

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        libs  10.4Mb
    ```

# Ryacas

Version: 0.3-1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        libs    7.8Mb
        yacas   1.5Mb
    ```

# SADISA

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘subplex’
      All declared Imports should be used.
    ```

# SanFranBeachWater

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# sankey

Version: 1.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 295 SKIPPED: 2 FAILED: 1
      1. Error: curve_seg is good (@test-curveseg.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# sasMap

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringi’
      All declared Imports should be used.
    ```

# savR

Version: 1.14.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    buildReports,savProject-character: no visible global function
      definition for ‘dev.off’
    qualityHeatmap,savProject-integer-integer-logical: no visible global
      function definition for ‘quantile’
    Undefined global functions or variables:
      dev.off quantile
    Consider adding
      importFrom("grDevices", "dev.off")
      importFrom("stats", "quantile")
    to your NAMESPACE file.
    ```

# sbart

Version: 0.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        libs  10.5Mb
    ```

# SC3

Version: 1.4.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'my-vignette.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

# scales

Version: 0.5.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# scanstatistics

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   6.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gamlss.dist’
      All declared Imports should be used.
    ```

# scater

Version: 1.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'arrange':
      ‘arrange.SCESet’
    
    S3 methods shown with full name in documentation object 'filter':
      ‘filter.SCESet’
    
    S3 methods shown with full name in documentation object 'mutate':
      ‘mutate.SCESet’
    
    S3 methods shown with full name in documentation object 'rename':
      ‘rename.SCESet’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# SciencesPo

Version: 1.4.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: New theme missing the following elements: axis.title.x.top, axis.title.y.right, axis.text.x.top, axis.text.y.right, axis.line.x, axis.line.y, legend.spacing.x, legend.spacing.y, legend.box.margin, legend.box.background, legend.box.spacing, panel.spacing.x, panel.spacing.y, panel.grid.major, panel.grid.minor, plot.subtitle, plot.caption, strip.placement
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `legend.margin` must be specified using `margin()`. For the old behavior use legend.spacing
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Quitting from lines 1090-1091 (SciencesPo.Rmd) 
    Error: processing vignette 'SciencesPo.Rmd' failed with diagnostics:
    invalid 'times' argument
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘gmodels’
    ```

# scone

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘EDASeq’
      All declared Imports should be used.
    ```

# scoring

Version: 0.5-1

## In both

*   checking R code for possible problems ... NOTE
    ```
    bdecomp : <anonymous>: no visible global function definition for ‘var’
    betafam: no visible global function definition for ‘integrate’
    calcscore.formula: no visible global function definition for
      ‘model.response’
    plotscore: no visible binding for global variable ‘plot’
    plotscore: no visible global function definition for ‘lines’
    Undefined global functions or variables:
      integrate lines model.response plot var
    Consider adding
      importFrom("graphics", "lines", "plot")
      importFrom("stats", "integrate", "model.response", "var")
    to your NAMESPACE file.
    ```

# SCORPIUS

Version: 1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘testthat’
      All declared Imports should be used.
    ```

# ScrabbleScore

Version: 1.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT License
    ```

# scrm

Version: 1.7.2-0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# sdcMicro

Version: 5.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc    1.4Mb
        libs   1.7Mb
    ```

# sdcTable

Version: 0.22.8

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘sdcTable-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: attack
    > ### Title: attacking primary suppressed cells and calculating current lower
    > ###   and upper bounds
    > ### Aliases: attack
    > 
    > ### ** Examples
    > 
    > # load problem (as it was created after performing primary suppression
    > # in the example of \code{primarySuppression})
    > sp <- searchpaths()
    > fn <- paste(sp[grep("sdcTable", sp)], "/data/problemWithSupps.RData", sep="")
    > problem <- get(load(fn))
    Error in gzfile(file) : invalid 'description' argument
    Calls: get -> load -> gzfile
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      3. Error: (unknown) (@test-protectTable.r#5) -----------------------------------
      invalid 'description' argument
      1: get(load(file = fn)) at testthat/test-protectTable.r:5
      2: load(file = fn)
      3: gzfile(file)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 3
      1. Error: (unknown) (@test-makeProblem.r#5) 
      2. Error: (unknown) (@test-primarySuppression.r#5) 
      3. Error: (unknown) (@test-protectTable.r#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SDMPlay

Version: 1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gbm’
      All declared Imports should be used.
    ```

# seleniumPipes

Version: 0.3.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Attaching package: 'magrittr'
      
      The following objects are masked from 'package:testthat':
      
          equals, is_less_than, not
      
      Loading required package: whisker
      > if(Sys.getenv("NOT_CRAN") == "true"){
      +   test_check("seleniumPipes")
      + }
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Failed to connect to localhost port 4444: Connection refused
      Calls: test_check ... request_fetch -> request_fetch.write_memory -> <Anonymous> -> .Call
      Execution halted
    ```

# sensR

Version: 1.5-0

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'methodology.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algorithmic.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.10 ^^M
            
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# SentimentAnalysis

Version: 1.2-0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘SnowballC’ ‘XML’ ‘mgcv’
      All declared Imports should be used.
    ```

# sentimentr

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lexicon’ ‘syuzhet’
      All declared Imports should be used.
    ```

# seplyr

Version: 0.1.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘datasets’
      All declared Imports should be used.
    ```

# seqminer

Version: 6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.0Mb
      sub-directories of 1Mb or more:
        libs   8.7Mb
    ```

# seqplots

Version: 1.14.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.7Mb
      sub-directories of 1Mb or more:
        doc        2.6Mb
        seqplots  10.3Mb
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call("BWGFile_summary", ..., PACKAGE = "rtracklayer")
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotHeatmap,list: no visible global function definition for ‘kmeans’
    plotHeatmap,list: no visible global function definition for ‘hclust’
    plotHeatmap,list: no visible global function definition for ‘dist’
    plotHeatmap,list: no visible global function definition for ‘cutree’
    plotHeatmap,list: no visible global function definition for
      ‘as.dendrogram’
    plotHeatmap,list: no visible global function definition for ‘title’
    Undefined global functions or variables:
      Var1 Var2 abline adjustcolor approx as.dendrogram axis box
      capture.output colorRampPalette cutree dist hclust image kmeans
      layout lines mtext par plot.new qt rainbow rect rgb text title value
    Consider adding
      importFrom("grDevices", "adjustcolor", "colorRampPalette", "rainbow",
                 "rgb")
      importFrom("graphics", "abline", "axis", "box", "image", "layout",
                 "lines", "mtext", "par", "plot.new", "rect", "text",
                 "title")
      importFrom("stats", "approx", "as.dendrogram", "cutree", "dist",
                 "hclust", "kmeans", "qt")
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
    ```

# sergeant

Version: 0.5.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2: httr::POST(sprintf("%s/query.json", drill_server), encode = "json", body = list(queryType = "SQL", 
             query = query))
      3: request_perform(req, hu$handle$handle)
      4: request_fetch(req$output, req$url, handle)
      5: request_fetch.write_memory(req$output, req$url, handle)
      6: curl::curl_fetch_memory(url, handle = handle)
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 3
      1. Error: Core dbplyr ops work (@test-sergeant.R#12) 
      2. Failure: REST API works (@test-sergeant.R#25) 
      3. Error: REST API works (@test-sergeant.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# seriation

Version: 1.2-2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘smacof’
    ```

# Seurat

Version: 2.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# sf

Version: 0.5-4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.2Mb
      sub-directories of 1Mb or more:
        doc      4.9Mb
        libs     5.6Mb
        sqlite   1.5Mb
    ```

# sgd

Version: 1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 13 SKIPPED: 0 FAILED: 10
      1.  Error: MSE converges for linear regression with lasso (@test-lasso.R#6) 
      2.  Failure: MSE converges for linear models (@test-linear.R#37) 
      3.  Failure: MSE converges for linear models (@test-linear.R#40) 
      4.  Failure: MSE converges for linear models (@test-linear.R#42) 
      5.  Failure: MSE converges for linear models (@test-linear.R#55) 
      6.  Failure: MSE converges for linear models (@test-linear.R#56) 
      7.  Failure: MSE converges for linear models (@test-linear.R#57) 
      8.  Failure: MSE converges for linear models (@test-linear.R#60) 
      9.  Failure: MSE converges for linear models (@test-linear.R#61) 
      10. Failure: MSE converges for linear models (@test-linear.R#62) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# shades

Version: 0.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘colorspace’
    ```

# shadow

Version: 0.3.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: sp
    rgeos version: 0.3-25, (SVN revision 555)
     GEOS runtime version: 3.5.1-CAPI-1.9.1 r4246 
     Linking to sp version: 1.2-5 
     Polygon checking: TRUE 
    
    Quitting from lines 89-94 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    package rgdal is required for spTransform methods
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘parallel’
      All declared Imports should be used.
    ```

# shazam

Version: 0.1.8

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# shiny

Version: 1.0.5

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        www   6.5Mb
    ```

# shinyAce

Version: 0.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        www   9.7Mb
    ```

# shinyTree

Version: 0.2.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_selected_names: no visible global function definition for ‘tail’
    get_selected_names: no visible global function definition for ‘head’
    Undefined global functions or variables:
      head tail
    Consider adding
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
    ```

# SIMLR

Version: 1.2.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        data   4.4Mb
        libs   1.6Mb
    ```

# simmer

Version: 3.6.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        libs  10.9Mb
    ```

# simpleCache

Version: 0.3.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘batchtools’
    ```

# skpr

Version: 0.35.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.2Mb
    ```

# SLOPE

Version: 0.1.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: open(matlab)
      5: open.Matlab(matlab)
      6: throw(sprintf("Failed to connect to MATLAB on host '%s' (port %d) after trying %d times for approximately %.1f seconds.", 
             this$host, as.integer(this$port), count, count * interval))
      7: throw.default(sprintf("Failed to connect to MATLAB on host '%s' (port %d) after trying %d times for approximately %.1f seconds.", 
             this$host, as.integer(this$port), count, count * interval))
      8: throw(Exception(...))
      9: throw.Exception(Exception(...))
      
      testthat results ================================================================
      OK: 4 SKIPPED: 1 FAILED: 1
      1. Error: SLOPE solver agrees with TFOCS solver in MATLAB (@test_solver.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# slowraker

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked Latin-1 strings
    ```

# smapr

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 8 SKIPPED: 0 FAILED: 18
      1. Error: invalid output directories cause errors (@test-download_smap.R#5) 
      2. Error: non-existent directories are created (@test-download_smap.R#11) 
      3. Error: the downloaded data is of the data frame class (@test-download_smap.R#21) 
      4. Error: Two SPL4CMDL data files are downloaded (h5 and xml) (@test-download_smap.R#28) 
      5. Error: setting overwrite = FALSE prevents data from being overwritten (@test-download_smap.R#50) 
      6. Error: setting overwrite = TRUE ensures data overwrite (@test-download_smap.R#72) 
      7. Error: invalid datasets cause errors (@test-extract_smap.R#5) 
      8. Error: extract_smap produces a RasterStack (@test-extract_smap.R#14) 
      9. Error: -9999 is used fill value when a _FillValue doesn't exist (@test-extract_smap.R#24) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rgdal’ ‘utils’
      All declared Imports should be used.
    ```

# smcUtils

Version: 0.2.2

## In both

*   checking R code for possible problems ... NOTE
    ```
    branching.resample: no visible global function definition for ‘rbinom’
    cov.weights: no visible global function definition for ‘var’
    inverse.cdf.weights: no visible global function definition for ‘runif’
    multinomial.resample: no visible global function definition for ‘runif’
    stratified.resample: no visible global function definition for ‘runif’
    systematic.resample: no visible global function definition for ‘runif’
    Undefined global functions or variables:
      rbinom runif var
    Consider adding
      importFrom("stats", "rbinom", "runif", "var")
    to your NAMESPACE file.
    ```

# Smisc

Version: 0.3.6

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Title: Converts date or datetime strings into alternate formats
    > ### Aliases: formatDT
    > ### Keywords: misc
    > 
    > ### ** Examples
    > 
    > # Demonstrates conversion of different datetime informats
    > formatDT("03/12/2004 04:31:17pm", posix = FALSE)
    $date
    [1] "03/12/2004"
    
    $time
    [1] "04:31:17 "
    
    $dt
    [1] "03/12/2004 04:31:17 "
    
    > formatDT("12Mar2004 04:31pm", posix = FALSE)
    Error in formatDT("12Mar2004 04:31pm", posix = FALSE) : 
      The first non-missing date 12Mar2004 is incorrect or has an invalid format.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      The first non-missing date 07-May-2009 is incorrect or has an invalid format.
      1: expect_equal(timeIntegration(c(1, 3), c("07-May-2009 15:00", "07-May-2009 16:00")), 
             2) at testthat/test_timeIntegration.R:25
      2: quasi_label(enquo(object), label)
      3: eval_bare(get_expr(quo), get_env(quo))
      4: timeIntegration(c(1, 3), c("07-May-2009 15:00", "07-May-2009 16:00"))
      5: formatDT(time)
      6: stop("The first non-missing date ", date.string, " is incorrect or has an invalid format.\n")
      
      testthat results ================================================================
      OK: 273 SKIPPED: 0 FAILED: 1
      1. Error: timeIntegration() returns values that are equal to known values (@test_timeIntegration.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SmithWilsonYieldCurve

Version: 1.0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    lines.SmithWilsonYieldCurve: no visible global function definition for
      ‘lines’
    plot.SmithWilsonYieldCurve: no visible global function definition for
      ‘plot’
    points.SmithWilsonYieldCurve: no visible global function definition for
      ‘points’
    Undefined global functions or variables:
      lines plot points
    Consider adding
      importFrom("graphics", "lines", "plot", "points")
    to your NAMESPACE file.
    ```

# smoof

Version: 1.5.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rPython’
    ```

# smooth

Version: 2.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# smoothAPC

Version: 0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘compiler’ ‘lmtest’
      All declared Imports should be used.
    ```

# SnakeCharmR

Version: 1.0.7

## In both

*   checking whether package ‘SnakeCharmR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/SnakeCharmR/new/SnakeCharmR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SnakeCharmR’ ...
** package ‘SnakeCharmR’ successfully unpacked and MD5 sums checked
Cannot find command 'python-config'. Aborting.
ERROR: configuration failed for package ‘SnakeCharmR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/SnakeCharmR/new/SnakeCharmR.Rcheck/SnakeCharmR’

```
### CRAN

```
* installing *source* package ‘SnakeCharmR’ ...
** package ‘SnakeCharmR’ successfully unpacked and MD5 sums checked
Cannot find command 'python-config'. Aborting.
ERROR: configuration failed for package ‘SnakeCharmR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/SnakeCharmR/old/SnakeCharmR.Rcheck/SnakeCharmR’

```
# soGGi

Version: 1.8.0

## In both

*   checking whether package ‘soGGi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘ggplot2::Position’ by ‘BiocGenerics::Position’ when loading ‘soGGi’
    See ‘/home/muelleki/git/R/testthat/revdep/checks/soGGi/new/soGGi.Rcheck/00install.out’ for details.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'c,ChIPprofile-method':
    \S4method{c}{ChIPprofile}
      Code: function(x, ...)
      Docs: function(x, ..., recursive = FALSE)
      Argument names in docs not in code:
        recursive
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call("rle_sum_any", ..., PACKAGE = "chipseq")
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      definition for ‘weighted.mean’
    getShifts: no visible global function definition for
      ‘readGAlignmentsFromBam’
    getSummitScore: no visible global function definition for
      ‘readGAlignmentsFromBam’
    plotRegion.ChIPprofile: no visible global function definition for
      ‘formula’
    runFindSummit: no visible global function definition for
      ‘readGAlignmentsFromBam’
    runRegionPlot : <anonymous>: no visible global function definition for
      ‘spline’
    summitPipeline: no visible global function definition for
      ‘readGAlignmentsFromBam’
    plotRegion,ChIPprofile: no visible global function definition for
      ‘formula’
    Undefined global functions or variables:
      formula read.delim readGAlignmentsFromBam spline weighted.mean
    Consider adding
      importFrom("stats", "formula", "spline", "weighted.mean")
      importFrom("utils", "read.delim")
    to your NAMESPACE file.
    ```

# solrium

Version: 0.4.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 157 SKIPPED: 0 FAILED: 18
      1. Error: core_create works (@test-core_create.R#6) 
      2. Error: ping works against (@test-ping.R#7) 
      3. Error: ping gives raw data correctly (@test-ping.R#20) 
      4. Error: ping fails well (@test-ping.R#31) 
      5. Error: schema works against (@test-schema.R#7) 
      6. Error: schema fails well (@test-schema.R#32) 
      7. Error: solr_all works with HathiTrust (@test-solr_all.R#46) 
      8. Error: solr_connect to local Solr server works (@test-solr_connect.R#19) 
      9. Error: solr_connect works with a proxy (@test-solr_connect.R#33) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

# SomaticCancerAlterations

Version: 1.12.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    .load_dataset: no visible global function definition for ‘data’
    .maf2gr: no visible binding for global variable ‘Chromosome’
    .maf2gr: no visible binding for global variable ‘Start_position’
    .maf2gr: no visible binding for global variable ‘End_position’
    .read_maf: no visible global function definition for ‘read.delim’
    hg2ncbi: no visible global function definition for ‘seqnameStyle<-’
    hg2ncbi: no visible global function definition for ‘genome<-’
    mutationDensity: no visible global function definition for
      ‘keepSeqlevels’
    mutationDensity: no visible global function definition for ‘as’
    ncbi2hg: no visible global function definition for ‘seqnameStyle<-’
    ncbi2hg: no visible global function definition for ‘genome<-’
    scaListDatasets: no visible global function definition for ‘data’
    Undefined global functions or variables:
      Chromosome End_position Start_position as data genome<- keepSeqlevels
      read.delim seqnameStyle<-
    Consider adding
      importFrom("methods", "as")
      importFrom("utils", "data", "read.delim")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# SomaticSignatures

Version: 2.12.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘NMF’
    A package should be listed in only one of these fields.
    ```

# SortableHTMLTables

Version: 0.1-3

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .gitignore
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# sortinghat

Version: 0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    simdata_contaminated : <anonymous>: no visible global function
      definition for ‘rbinom’
    simdata_uniform : multivariate_uniform : <anonymous>: no visible global
      function definition for ‘runif’
    which_min: no visible global function definition for ‘head’
    which_min: no visible global function definition for ‘tail’
    Undefined global functions or variables:
      head rbinom runif tail
    Consider adding
      importFrom("stats", "rbinom", "runif")
      importFrom("utils", "head", "tail")
    to your NAMESPACE file.
    ```

# sorvi

Version: 0.7.26

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    regression_plot: no visible global function definition for
      ‘colorRampPalette’
    regression_plot: no visible global function definition for
      ‘loess.control’
    regression_plot: no visible global function definition for ‘predict’
    regression_plot : <anonymous>: no visible global function definition
      for ‘quantile’
    regression_plot : <anonymous>: no visible global function definition
      for ‘pnorm’
    regression_plot: no visible global function definition for
      ‘flush.console’
    regression_plot: no visible global function definition for ‘density’
    Undefined global functions or variables:
      colorRampPalette density flush.console loess loess.control pnorm
      predict quantile read.csv
    Consider adding
      importFrom("grDevices", "colorRampPalette")
      importFrom("stats", "density", "loess", "loess.control", "pnorm",
                 "predict", "quantile")
      importFrom("utils", "flush.console", "read.csv")
    to your NAMESPACE file.
    ```

# sourceR

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gtools’ ‘hashmap’ ‘reshape2’
      All declared Imports should be used.
    ```

# spacyr

Version: 0.9.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             invokeRestart("muffleMessage")
         })
      5: eval_bare(get_expr(quo), get_env(quo))
      6: spacy_initialize()
      7: stop("spaCy or language model ", model, " is not installed in any of python executables.")
      
      testthat results ================================================================
      OK: 6 SKIPPED: 1 FAILED: 4
      1. Error: spacy_parse handles newlines and tabs ok (@test-2-spacy_parse.R#6) 
      2. Error: spacy_parse handles quotes ok (@test-2-spacy_parse.R#38) 
      3. Error: getting named entities works (@test-3-entity-functions.R#6) 
      4. Error: entity consolidation works (@test-3-entity-functions.R#48) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# SpaDES

Version: 2.0.0

## In both

*   checking whether package ‘SpaDES’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/SpaDES/new/SpaDES.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        union
    
    Loading required package: sp
    loading reproducible     0.1.3
    loading quickPlot        0.1.2
    loading SpaDES.core      0.1.0
    loading SpaDES.tools     0.1.0
    loading SpaDES.addins    0.1.0
    
    Default paths for SpaDES directories set to:
      cachePath:  /home/muelleki/tmp/Rtmpdyv9r9/SpaDES/cache
      inputPath:  /home/muelleki/tmp/Rtmpdyv9r9/SpaDES/inputs
      modulePath: /home/muelleki/tmp/Rtmpdyv9r9/SpaDES/modules
      outputPath: /home/muelleki/tmp/Rtmpdyv9r9/SpaDES/outputs
    These can be changed using 'setPaths()'. See '?setPaths'.
    Quitting from lines 48-61 (iii-cache.Rmd) 
    Error: processing vignette 'iii-cache.Rmd' failed with diagnostics:
    Some packages required for the simulation are not installed:
        tkrplot
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘SpaDES.addins’ ‘SpaDES.core’ ‘SpaDES.tools’ ‘quickPlot’
      ‘reproducible’
      All declared Imports should be used.
    ```

# SpaDES.addins

Version: 0.1.0

## In both

*   checking whether package ‘SpaDES.addins’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/SpaDES.addins/new/SpaDES.addins.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘rstudioapi’
      All declared Imports should be used.
    ```

# SpaDES.core

Version: 0.1.0

## In both

*   checking whether package ‘SpaDES.core’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/SpaDES.core/new/SpaDES.core.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CircStats’ ‘RandomFields’ ‘grDevices’ ‘sp’
      All declared Imports should be used.
    ```

# SpaDES.tools

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘fastdigest’
      All declared Imports should be used.
    ```

# spam

Version: 2.1-1

## Newly broken

*   checking tests ...
    ```
    ...
    >  # 'lakes' database. Type '?world' or 'news(package="maps")'.  #
    > 
    > 
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 42 SKIPPED: 1 FAILED: 40
      1. Error: crossprod n=1 (@test-crossprod.R#32) 
      2. Error: diff (@test-diff.R#22) 
      3. Error: dim (@test-dim.R#33) 
      4. Error: comparing nearest.dist with dist, use diag=true, upper=TRUE (@test-dist.R#97) 
      5. Error: bdiag.spam (@test-helper.R#32) 
      6. Error: rmvnorm (@test-helper.R#50) 
      7. Error: two matrices: (@test-kronecker.R#35) 
      8. Error: matrix vector (@test-kronecker.R#45) 
      9. Error: degenerate cases (@test-kronecker.R#54) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘magic’
    ```

# spaMM

Version: 2.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 34.3Mb
      sub-directories of 1Mb or more:
        libs  33.2Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Error in .requirePackage(package) : unable to find required package 'sp'
      Calls: <Anonymous> ... .extendsForS3 -> extends -> getClassDef -> .requirePackage
      Execution halted
    ```

# spareserver

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: clean_services() at testthat/test-spare.r:42
      2: rm(list = ls(spare_services), envir = spare_services)
      
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 7
      1. Error: slow networks are fine (@test-slow.r#43) 
      2. Error: unreliable networks are fine, too (@test-slow.r#67) 
      3. Error: Can create services (@test-spare.r#10) 
      4. Error: Can add servers (@test-spare.r#18) 
      5. Error: Can remove services (@test-spare.r#23) 
      6. Error: First server is used if available (@test-spare.r#30) 
      7. Error: Second server is used if first is not available (@test-spare.r#42) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# sparklyr

Version: 0.6.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 272 SKIPPED: 0 FAILED: 25
      1. Error: 'spark_connect' can create a secondary connection (@test-connect.R#8) 
      2. Error: supported spark_versions can be downloaded (@test-install-spark.R#7) 
      3. Error: spark_versions downloads use https (@test-install-spark.R#18) 
      4. Error: 'spark_version()' works under Livy connections (@test-livy.R#5) 
      5. Error: 'copy_to()' works under Livy connections (@test-livy.R#12) 
      6. Error: (unknown) (@test-ml-classification-eval.R#2) 
      7. Error: (unknown) (@test-ml-decision-tree.R#2) 
      8. Error: (unknown) (@test-ml-generalized-linear-regression.R#3) 
      9. Error: (unknown) (@test-ml-gradient-boosted-trees.R#2) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SparkR

Version: 2.1.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run-all.R’ failed.
    Last 13 lines of output:
      test_basic.R:21: error: create DataFrame from list or data.frame
      JVM is not ready after 10 seconds
      1: sparkR.session(master = sparkRTestMaster, enableHiveSupport = FALSE) at /home/muelleki/git/R/testthat/revdep/checks/SparkR/new/SparkR.Rcheck/SparkR/tests/testthat/test_basic.R:21
      2: sparkR.sparkContext(master, appName, sparkHome, sparkConfigMap, sparkExecutorEnvMap, 
             sparkJars, sparkPackages)
      3: stop("JVM is not ready after 10 seconds")
      ────────────────────────────────────────────────────────────────────────────────
      
      ═ Results ══════════════════════════════════════════════════════════════════════
      OK:       3
      Failed:   1
      Warnings: 0
      Skipped:  0
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:323)
    	at org.apache.spark.rdd.RDD.iterator(RDD.scala:287)
    	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
    	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:323)
    	at org.apache.spark.rdd.RDD.iterator(RDD.scala:287)
    	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:87)
    	at org.apache.spark.scheduler.Task.run(Task.scala:99)
    	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:325)
    	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
    	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
    	... 1 more
    Quitting from lines 891-907 (sparkr-vignettes.Rmd) 
    Error: processing vignette 'sparkr-vignettes.Rmd' failed with diagnostics:
    org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 1629.0 failed 1 times, most recent failure: Lost task 0.0 in stage 1629.0 (TID 2468, localhost, executor driver): org.apache.spark.SparkException: R computation failed with
     7f1a57ab5000-7f1a57ab9000 rw-p 005f4000 08:01 780327                     /usr/lib/lapack/liblapack.so.3.6.0
    7f1a57ab9000-7f1a57af9000 r-xp 00000000 08:01 1024113                    /usr/lib/R/library/graphics/libs/graphics.so
    7f1a57af9000-7f1a57cf8000 ---p 00040000 08:01 1024113                    /usr/lib/R/library/graphics/libs/graphics.so
    7f1a57cf8000-7f1a57cf9000 r--p 0003f000 08:01 1024113                    /usr/lib/R/library/graphics/libs/graphics.so
    7f1a57cf9000-7f1a57cfa000 rw-p 00040000 08:01 1024113                    /usr/lib/R/library/graphics/libs/graphics.so
    7f1a57cfa000-7f1a57d2f000 r-xp 00000000 08:01 1028498                    /usr/lib/R/lib
    Execution halted
    ```

# sparsebnUtils

Version: 0.0.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘igraph:::as_graphnel’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sparsebn’
    ```

# SparseGrid

Version: 0.8.2

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# sparseHessianFD

Version: 0.3.3.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'sparseHessianFD.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algorithm.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.27 \usepackage
                    {algorithmic}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# spectrolab

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# sperrorest

Version: 2.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Error: sperrorest() when missing factor levels in train data (@test-sperrorest.R#639) 
      cannot open the connection
      1: readRDS("/Users/pjs/Servers/GIServer/home/shares/data/LIFE/mod/survey_data/data-clean.rda") %>% 
             as_tibble() at testthat/test-sperrorest.R:639
      2: eval(lhs, parent, parent)
      3: eval(lhs, parent, parent)
      4: readRDS("/Users/pjs/Servers/GIServer/home/shares/data/LIFE/mod/survey_data/data-clean.rda")
      5: gzfile(file, "rb")
      
      testthat results ================================================================
      OK: 100 SKIPPED: 7 FAILED: 1
      1. Error: sperrorest() when missing factor levels in train data (@test-sperrorest.R#639) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# spiderbar

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(robotstxt)
      > test_check("spiderbar")
      Loading required package: spiderbar
      1. Failure: parsing and fetch testing and sitemaps work (@test-spiderbar.R#17) -
      `cd$crawl_delay` not equal to `c(0.1, 3, -1)`.
      2/3 mismatches (average diff: 2.9)
      [1] 3.0 - 0.1 ==  2.9
      [2] 0.1 - 3.0 == -2.9
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 1
      1. Failure: parsing and fetch testing and sitemaps work (@test-spiderbar.R#17) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SpidermiR

Version: 1.7.4

## In both

*   checking R code for possible problems ... NOTE
    ```
    .SpidermiRvisualize_gene: possible error in simpleNetwork(NetworkData,
      linkColour = "gray", textColour = "black", zoom = TRUE): unused
      argument (textColour = "black")
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘miRNAs’
    SpidermiRvisualize_plot_target: no visible binding for global variable
      ‘mRNA_target’
    Undefined global functions or variables:
      mRNA_target miRNAs
    ```

# spind

Version: 2.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# splashr

Version: 0.4.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘magick’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# spocc

Version: 0.7.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: 1. Failure: taxize based searches works with get_tsn input (@test-taxize-integration.R#64) 
      `length(ee$bison$data)` not equal to 1.
      1/1 mismatches
      [1] 0 - 1 == -1
      
      2. Failure: taxize based searches works with get_tsn input (@test-taxize-integration.R#66) 
      Names of `ee$bison$data` ('') don't match '175304'
      
      testthat results ================================================================
      OK: 243 SKIPPED: 0 FAILED: 2
      1. Failure: taxize based searches works with get_tsn input (@test-taxize-integration.R#64) 
      2. Failure: taxize based searches works with get_tsn input (@test-taxize-integration.R#66) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# SSDM

Version: 0.2.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 37-40 (SSDM.Rmd) 
    Error: processing vignette 'SSDM.Rmd' failed with diagnostics:
    Cannot create RasterLayer object from this file; perhaps you need to install rgdal first
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘shinyFiles’
      All declared Imports should be used.
    ```

# sss

Version: 0.1-0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

# stacomiR

Version: 0.5.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘gWidgetsRGtk2’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# StarBioTrek

Version: 1.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        data   8.8Mb
        doc    2.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    getKEGGdata: no visible binding for global variable
      ‘Cellular_community’
    getKEGGdata: no visible binding for global variable ‘Immune_system’
    getKEGGdata: no visible binding for global variable ‘Endocrine_system’
    getKEGGdata: no visible binding for global variable
      ‘Circulatory_system’
    getKEGGdata: no visible binding for global variable ‘Digestive_system’
    getKEGGdata: no visible binding for global variable ‘Excretory_system’
    getKEGGdata: no visible binding for global variable ‘Nervous_system’
    getKEGGdata: no visible binding for global variable ‘Sensory_system’
    matrix_plot: no visible binding for global variable ‘path’
    plotting_cross_talk: no visible binding for global variable ‘path’
    svm_classification: no visible binding for global variable ‘Target’
    Undefined global functions or variables:
      Aminoacid Carbohydrate Cell_growth_and_death Cellular_community
      Circulatory_system Cofa_vita_met Digestive_system Endocrine_system
      Energy Excretory_system Folding_sorting_and_degradation Glybio_met
      Immune_system Lipid Nervous_system Replication_and_repair
      Sensory_system Signal_transduction
      Signaling_molecules_and_interaction Target Transcription Translation
      Transport_and_catabolism path
    ```

# starmie

Version: 0.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc       1.1Mb
        extdata   4.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MCMCpack’
      All declared Imports should be used.
    ```

# stationaRy

Version: 0.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
    ```

# statip

Version: 0.1.4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘distrEx’
    ```

# statisticalModeling

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("statisticalModeling")
      1. Error: (unknown) (@test_models.R#5) -----------------------------------------
      gwm() has been removed from `mosaic'.  
          It will be replaced by better tools in `mosaicModel'.
      1: mosaic::gwm(sex ~ domhand + biggerfoot, data = mosaicData::KidsFeet) at testthat/test_models.R:5
      2: .Defunct(msg = "gwm() has been removed from `mosaic'.  \n    It will be replaced by better tools in `mosaicModel'.")
      3: stop(paste(msg, collapse = ""), call. = FALSE, domain = NA)
      
      testthat results ================================================================
      OK: 21 SKIPPED: 1 FAILED: 1
      1. Error: (unknown) (@test_models.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 303-306 (modeling.Rmd) 
    Error: processing vignette 'modeling.Rmd' failed with diagnostics:
    Invalid formula type for gf_point.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘magrittr’ ‘rpart’
      All declared Imports should be used.
    ```

# statsDK

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘ggplot2’ ‘stringr’
      All declared Imports should be used.
    ```

# statsgrokse

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Error in curl::curl_fetch_memory(url, handle = handle) : 
        Timeout was reached: Connection timed out after 10001 milliseconds
      4. Failure: normal usage (@test_usage.R#15) ------------------------------------
      `all(dim(tmp) > 0)` isn't true.
      
      testthat results ================================================================
      OK: 57 SKIPPED: 0 FAILED: 4
      1. Failure: normal usage (@test_usage.R#6) 
      2. Failure: normal usage (@test_usage.R#9) 
      3. Failure: normal usage (@test_usage.R#12) 
      4. Failure: normal usage (@test_usage.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# stepR

Version: 2.0-1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Successfully loaded stepR package version 2.0-1.
    Several new functions are added in version 2.0-0. Some older functions are deprecated (still working) and may be defunct in a later version. Please read the documentation for more details.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'StepR.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `algpseudocode.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.79 \usepackage
                    {algorithm}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

# strataG

Version: 2.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘survival’
      All declared Imports should be used.
    ```

# stream

Version: 1.2-4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc    1.6Mb
        libs   4.5Mb
    ```

# stressr

Version: 1.0.0

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# stringr

Version: 1.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# subprocess

Version: 0.8.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             env <- asNamespace(pkg_name)
             if (!exists(name, envir = env, mode = "function")) 
                 stop("Function ", name, " not found in environment ", environmentName(env), 
                     ".", call. = FALSE)
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 75 SKIPPED: 2 FAILED: 1
      1. Error: onLoad is correct (@test-package.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# subSeq

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    summary.subsamples: no visible binding for global variable ‘o.padj’
    summary.subsamples: no visible binding for global variable
      ‘significant’
    summary.subsamples: no visible binding for global variable ‘estFDP’
    summary.subsamples: no visible binding for global variable ‘rFDP’
    summary.subsamples: no visible binding for global variable ‘metric’
    summary.subsamples: no visible binding for global variable ‘value’
    summary.subsamples: no visible binding for global variable ‘percent’
    voomLimma: no visible global function definition for ‘model.matrix’
    Undefined global functions or variables:
      . ID average.depth average.value coefficient cor count cov depth
      estFDP method metric model.matrix o.coefficient o.lfdr o.padj
      p.adjust padj percent plot proportion pvalue rFDP rbinom replication
      selectMethod significant valid value var
    Consider adding
      importFrom("graphics", "plot")
      importFrom("methods", "selectMethod")
      importFrom("stats", "cor", "cov", "model.matrix", "p.adjust", "rbinom",
                 "var")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# sunburstR

Version: 1.0.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘treemap’
    ```

# SuperGauss

Version: 1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘fftw’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# supervisedPRIM

Version: 2.0.0

## In both

*   checking whether package ‘supervisedPRIM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/supervisedPRIM/new/supervisedPRIM.Rcheck/00install.out’ for details.
    ```

# sure

Version: 0.2.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘truncdist’
    ```

# surveillance

Version: 1.15.0

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘hhh4contacts’ ‘INLA’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        doc    2.3Mb
        help   1.0Mb
        libs   1.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘coin’, ‘VGAM’
    ```

# survivALL

Version: 0.9.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Biobase’ ‘broom’ ‘data.table’ ‘magrittr’ ‘pander’ ‘png’ ‘readr’
      ‘survsim’ ‘testthat’
      All declared Imports should be used.
    ```

# svyPVpack

Version: 0.1-1

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    svyPVcor: no visible global function definition for ‘var’
    svyPVeta: no visible global function definition for ‘update’
    svyPVeta: no visible global function definition for ‘var’
    svyPVglm: no visible global function definition for ‘gaussian’
    svyPVglm: no visible binding for global variable ‘as.formula’
    svyPVglm: no visible binding for global variable ‘var’
    svyPVglm: no visible global function definition for ‘pt’
    svyPVttest: no visible binding for global variable ‘as.formula’
    svyPVttest: no visible global function definition for ‘var’
    svyPVttest: no visible global function definition for ‘pt’
    svyPVttest: no visible binding for global variable ‘var’
    t.test.aux: no visible global function definition for ‘as.formula’
    t.test.aux: no visible global function definition for ‘complete.cases’
    Undefined global functions or variables:
      aggregate anova as.formula complete.cases cov.wt gaussian lm pt
      update var
    Consider adding
      importFrom("stats", "aggregate", "anova", "as.formula",
                 "complete.cases", "cov.wt", "gaussian", "lm", "pt",
                 "update", "var")
    to your NAMESPACE file.
    ```

# SWATH2stats

Version: 1.6.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘imsbInfer’ ‘MSstats’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘MSstats’
    ```

# sweep

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘lazyeval’ ‘lubridate’ ‘tidyr’
      All declared Imports should be used.
    ```

# swirlify

Version: 0.5.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      The following object is masked from 'package:testthat':
      
          skip
      
      > 
      > test_check("swirlify")
      1. Failure: test_lesson() passes with well-formed lesson (@test_test_lesson.R#36) 
      all(correct_output %in% readLines(file.path(path, "test.log"))) isn't true.
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 1
      1. Failure: test_lesson() passes with well-formed lesson (@test_test_lesson.R#36) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# sylly

Version: 0.1-3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'sylly_vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `apacite.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.4 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sylly.de’ ‘sylly.en’ ‘sylly.es’
    ```

# synapter

Version: 2.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 30-34 (fragmentmatching.Rmd) 
    Error: processing vignette 'fragmentmatching.Rmd' failed with diagnostics:
    there is no package called 'synapterdata'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘synapterdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        doc   6.3Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Laurent Gatto <lg390@cam.ac.uk> [aut, cre]
      Sebastian Gibb <mail@sebastiangibb.de> [aut, cre]
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MSnbase:::.plotSingleSpectrum’ ‘MSnbase:::Spectrum2_mz_sorted’
      ‘MSnbase:::commonPeaks’ ‘MSnbase:::numberOfCommonPeaks’
      ‘MSnbase:::relaxedMatch’ ‘MSnbase:::utils.applyColumnwiseByGroup’
      ‘MSnbase:::utils.list2ssv’ ‘MSnbase:::utils.ssv2list’
      ‘MSnbase:::utils.ssv2vec’ ‘MSnbase:::utils.vec2ssv’
      See the note in ?`:::` about the use of this operator.
    ```

# synlet

Version: 1.6.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    ...
    siRNAPlot: no visible global function definition for ‘pdf’
    siRNAPlot: no visible global function definition for ‘dev.off’
    tTest: no visible global function definition for ‘p.adjust’
    zFactor: no visible binding for global variable ‘condition’
    zFactor: no visible binding for global variable ‘sd’
    zFactor: no visible binding for global variable ‘median’
    zFactor: no visible global function definition for ‘complete.cases’
    Undefined global functions or variables:
      COL_NAME EXPERIMENT_MODIFICATION EXPERIMENT_TYPE MASTER_PLATE PLATE
      READOUT ROW_NAME Var1 WELL_CONTENT_NAME colorRampPalette
      complete.cases condition dev.off experiments is mad median medpolish
      p.adjust pdf phyper rainbow sd siRNA t.test value write.table
    Consider adding
      importFrom("grDevices", "colorRampPalette", "dev.off", "pdf",
                 "rainbow")
      importFrom("methods", "is")
      importFrom("stats", "complete.cases", "mad", "median", "medpolish",
                 "p.adjust", "phyper", "sd", "t.test")
      importFrom("utils", "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# sys

Version: 1.5

## In both

*   checking whether package ‘sys’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/sys/new/sys.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘sys’ ...
** package ‘sys’ successfully unpacked and MD5 sums checked
Building with AppArmor (Linux)
Using PKG_CFLAGS=
Using PKG_LIBS=-lapparmor
On Debian/Ubuntu this package requires AppArmor.
Please run: sudo apt-get install libapparmor-dev
To build without AppArmor support, set NO_APPARMOR=1 for example:
install.packages('sys', configure.vars = 'NO_APPARMOR=1')
ERROR: configuration failed for package ‘sys’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/sys/new/sys.Rcheck/sys’

```
### CRAN

```
* installing *source* package ‘sys’ ...
** package ‘sys’ successfully unpacked and MD5 sums checked
Building with AppArmor (Linux)
Using PKG_CFLAGS=
Using PKG_LIBS=-lapparmor
On Debian/Ubuntu this package requires AppArmor.
Please run: sudo apt-get install libapparmor-dev
To build without AppArmor support, set NO_APPARMOR=1 for example:
install.packages('sys', configure.vars = 'NO_APPARMOR=1')
ERROR: configuration failed for package ‘sys’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/sys/old/sys.Rcheck/sys’

```
# tableHTML

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘shiny’
      All declared Imports should be used.
    ```

# tadaatoolbox

Version: 0.13.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rmdformats’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# tatoo

Version: 1.0.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘crayon’ ‘utils’
      All declared Imports should be used.
    ```

# taxa

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘lazyeval’ ‘rlang’
      All declared Imports should be used.
    ```

# taxize

Version: 0.9.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: testthat results ================================================================
      OK: 700 SKIPPED: 0 FAILED: 12
      1. Error: eubon_search works (@test-eubon.R#7) 
      2. Failure: eubon_search fails well (@test-eubon.R#31) 
      3. Failure: eubon_search fails well (@test-eubon.R#34) 
      4. Error: get_ids returns the correct values and classses (@test-get_ids.R#8) 
      5. Failure: get_natservid fails well (@test-get_natservid.R#36) 
      6. Failure: get_natservid fails well (@test-get_natservid.R#38) 
      7. Error: iucn_id returns the correct class (@test-iucn_id.R#7) 
      8. Error: iucn_id fails well (@test-iucn_id.R#24) 
      9. Error: iucn_summary returns the correct value (@test-iucn_summary.R#7) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# taxizedb

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > test_check("taxizedb")
      Loading required package: taxizedb
      1. Failure: db_load fails as expected - more (@test-db_load.R#33) --------------
      `suppressMessages(db_load_col(path = f))` threw an error with unexpected message.
      Expected match: "Failed to connect"
      Actual message: "\nmysql not found on your computer\nInstall the missing tool(s) and try again"
      
      Auto-disconnecting SQLiteConnection
      testthat results ================================================================
      OK: 59 SKIPPED: 0 FAILED: 1
      1. Failure: db_load fails as expected - more (@test-db_load.R#33) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tbdiag

Version: 0.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

# TCGAbiolinks

Version: 2.5.9

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:S4Vectors':
    
        first, intersect, rename, setdiff, setequal, union
    
    The following objects are masked from 'package:BiocGenerics':
    
        combine, intersect, setdiff, union
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 16-20 (clinical.Rmd) 
    Error: processing vignette 'clinical.Rmd' failed with diagnostics:
    there is no package called 'DT'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 61.0Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        data   2.3Mb
        doc   57.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘limmacontrasts.fit’
    TCGAanalyze_analyseGRN: no visible global function definition for
      ‘knnmi.cross’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘c3net’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘minet’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetInduce’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetPipeline’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dCommSignif’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘visNet’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    getTSS: no visible global function definition for ‘promoters’
    Undefined global functions or variables:
      c3net dCommSignif dNetInduce dNetPipeline knnmi.cross
      limmacontrasts.fit limmamakeContrasts minet portions promoters value
      visNet
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘DT’
    ```

# TCGAbiolinksGUI

Version: 1.2.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:S4Vectors':
    
        first, intersect, rename, setdiff, setequal, union
    
    The following objects are masked from 'package:BiocGenerics':
    
        combine, intersect, setdiff, union
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 11-15 (data.Rmd) 
    Error: processing vignette 'data.Rmd' failed with diagnostics:
    there is no package called 'DT'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 30.3Mb
      sub-directories of 1Mb or more:
        app   1.1Mb
        doc  28.9Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘DT’ ‘dplyr’
    ```

# TCGAWorkflowData

Version: 1.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'TCGAWorkflowData.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 81.0Mb
      sub-directories of 1Mb or more:
        data  80.7Mb
    ```

# TCIApathfinder

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 12 SKIPPED: 0 FAILED: 95
      1. Error: Structure of body parts value (@test_get_body_part_names.R#5) 
      2. Error: Body part values for TCGA-BRCA (@test_get_body_part_names.R#14) 
      3. Error: Body part values for MR (@test_get_body_part_names.R#20) 
      4. Error: Body part values for TCGA-BRCA and MR (@test_get_body_part_names.R#27) 
      5. Error: Nonexistent collection and modality combination (@test_get_body_part_names.R#33) 
      6. Error: Invalid collection name (@test_get_body_part_names.R#40) 
      7. Error: Invalid modality (@test_get_body_part_names.R#47) 
      8. Error: Structure of collection names value (@test_get_collection_names.R#5) 
      9. Error: List of collections contains TCGA-BRCA (@test_get_collection_names.R#14) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# TCseq

Version: 1.0.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    DBresult: no visible global function definition for ‘as’
    DBresult.cluster: no visible global function definition for ‘as’
    TCA: no visible global function definition for ‘is’
    TCA: no visible global function definition for ‘as’
    TCAFromSummarizedExperiment: no visible global function definition for
      ‘is’
    TCAFromSummarizedExperiment: no visible global function definition for
      ‘as’
    countReads: no visible global function definition for
      ‘createAnnotationFile’
    countReads: no visible global function definition for ‘featureCounts’
    timeclustplot: no visible binding for global variable ‘group’
    timecourseTable: no visible global function definition for ‘as’
    Undefined global functions or variables:
      as createAnnotationFile featureCounts group is
    Consider adding
      importFrom("methods", "as", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# teachingApps

Version: 1.0.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        apps   2.6Mb
        libs   2.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.table’ ‘datasets’ ‘stats’
      All declared Imports should be used.
    ```

# texmexseq

Version: 0.3

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > # make up some data
    > sim.data <- function() rpoilog(1000, 1.0, 1.0, condS=TRUE)
    > otu <- data.frame(sample0=sim.data())
    > for (i in 1:10) otu[[paste('sample', i, sep='')]] <- sim.data()
    > otu.ids <- paste('otu', seq(1:1000), sep='')
    > rownames(otu) <- otu.ids
    > z.table <- z.transform.table(otu)
    Warning in value[[3L]](cond) : fit 1 failed
    Warning in value[[3L]](cond) : fit 1 failed
    Warning in value[[3L]](cond) : fit 2 failed
    > 
    > # pull out a quad, imagining that samples 1 and 2 were the control samples
    > # and 3 and 4 were the treatment
    > q <- quad.table(z.table, 'sample1', 'sample2', 'sample3', 'sample4')
    > 
    > # plot it
    > p <- quad.plot(q)
    Error in get("d.control") : object 'd.control' not found
    Calls: quad.plot ... lapply -> FUN -> overscope_eval_next -> .Call -> get
    Execution halted
    ```

# text2vec

Version: 0.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    3.5Mb
        libs   6.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘irlba’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# textmining

Version: 0.0.1

## In both

*   checking whether package ‘textmining’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/textmining/new/textmining.Rcheck/00install.out’ for details.
    ```

# textreadr

Version: 0.5.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘antiword’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# textreuse

Version: 0.1.4

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tm’
    ```

# textshape

Version: 1.5.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘tm’, ‘textreadr’
    ```

# textTinyR

Version: 1.0.7

## In both

*   checking whether package ‘textTinyR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/textTinyR/new/textTinyR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘textTinyR’ ...
** package ‘textTinyR’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
checking for gcc... gcc
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking whether g++ supports C++11 features by default... no
checking whether g++ supports C++11 features with -std=c++11... yes
checking for pkg-config... yes
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking boost/locale.hpp usability... yes
checking boost/locale.hpp presence... yes
checking for boost/locale.hpp... yes
checking for main in -lboost_locale... no
configure: error: Unable to find the boost-locale. In DEBIAN/UBUNTU: sudo apt-get install libboost-all-dev; sudo apt-get install libboost-locale-dev, FEDORA : yum install boost-devel,
					OSX/brew : detailed installation instructions can be found in the README file
ERROR: configuration failed for package ‘textTinyR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/textTinyR/new/textTinyR.Rcheck/textTinyR’

```
### CRAN

```
* installing *source* package ‘textTinyR’ ...
** package ‘textTinyR’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
checking for gcc... gcc
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking whether g++ supports C++11 features by default... no
checking whether g++ supports C++11 features with -std=c++11... yes
checking for pkg-config... yes
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking boost/locale.hpp usability... yes
checking boost/locale.hpp presence... yes
checking for boost/locale.hpp... yes
checking for main in -lboost_locale... no
configure: error: Unable to find the boost-locale. In DEBIAN/UBUNTU: sudo apt-get install libboost-all-dev; sudo apt-get install libboost-locale-dev, FEDORA : yum install boost-devel,
					OSX/brew : detailed installation instructions can be found in the README file
ERROR: configuration failed for package ‘textTinyR’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/textTinyR/old/textTinyR.Rcheck/textTinyR’

```
# TFBSTools

Version: 1.14.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘S4Vectors:::new_SimpleList_from_list’ ‘seqLogo:::pwm2ic’
      See the note in ?`:::` about the use of this operator.
    ```

# threewords

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Lengths differ: 2 is not 3
      
      5. Failure: Errors are correctly thrown (@test_threewords.R#43) ----------------
      `from_position(...)` did not throw an error.
      
      testthat results ================================================================
      OK: 10 SKIPPED: 0 FAILED: 5
      1. Failure: Individual word trios can be resolved to positions (@test_threewords.R#11) 
      2. Failure: Individual positions can be resolved to word trios (@test_threewords.R#19) 
      3. Failure: Multiple word trios can be resolved to positions (@test_threewords.R#29) 
      4. Failure: Multiple coordinate sets can be resolved to positions (@test_threewords.R#38) 
      5. Failure: Errors are correctly thrown (@test_threewords.R#43) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tidyjson

Version: 0.2.2

## In both

*   checking examples ... ERROR
    ```
    ...
    > # companies[[1]] %>% prettify
    > 
    > # Get the key employees data
    > key_employees <- companies %>%
    +   spread_values(
    +     name = jstring("name")
    +   ) %>%
    +   mutate(
    +     company.sort_order = rank(name)
    +   ) %>%
    +   enter_object("relationships") %>%
    +   gather_array("relationship.index") %>%
    +   spread_values(
    +     is.past = jlogical("is_past"),
    +     name = jstring("person", "permalink"),
    +     title = jstring("title")
    +   )
    Error in eval(assertion, env) : 
      argument "json.column" is missing, with no default
    Calls: %>% ... tryCatchList -> tryCatchOne -> doTryCatch -> eval -> eval
    Execution halted
    ```

# tidyquant

Version: 0.5.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                 quo_splice(node_car(x), x, warn = warn)
                 x <- node_cdr(x)
             }
         })
      9: expr_type_of(.x)
      10: typeof(x)
      11: duplicate(quo)
      
      testthat results ================================================================
      OK: 174 SKIPPED: 0 FAILED: 2
      1. Error: Test error on invalid data inputs. (@test_tq_mutate.R#142) 
      2. Error: Test error on invalid data inputs. (@test_tq_transmute.R#121) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘curl’ ‘devtools’ ‘rvest’ ‘timeSeries’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# tidyr

Version: 0.7.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 23 marked UTF-8 strings
    ```

# tidyRSS

Version: 1.2.2

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
         })
      6: withCallingHandlers(expr, warning = function(w) invokeRestart("muffleWarning"))
      7: json_parse(feed)
      8: jsonlite::fromJSON(feed)
      9: fromJSON_string(txt = txt, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame, 
             simplifyMatrix = simplifyMatrix, flatten = flatten, ...)
      10: parseJSON(txt, bigint_as_char)
      11: parse_con(txt, bigint_as_char)
      
      testthat results ================================================================
      OK: 1 SKIPPED: 0 FAILED: 1
      1. Error: tidyfeed returns a data_frame (@test.feeds.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# tidytext

Version: 0.1.4

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘broom’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# tidyxl

Version: 0.2.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# tigris

Version: 0.5.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘dplyr’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# tikzDevice

Version: 0.10-1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 675-675 (tikzDevice.Rnw) 
    Error: processing vignette 'tikzDevice.Rnw' failed with diagnostics:
    there is no package called 'formatR'
    Execution halted
    ```

# timekit

Version: 0.3.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# TimeProjection

Version: 0.2.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘TimeProjection-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: projectDate
    > ### Title: Time Projection
    > ### Aliases: projectDate
    > 
    > ### ** Examples
    > 
    > dates = timeSequence(from = "2001-01-01", to = "2004-01-01", by = "day")
    >    projectDate(as.Date(dates))
    Error in if (all(diff(as.numeric(raw[, i])) == 0)) redundantCols[i] = T : 
      missing value where TRUE/FALSE needed
    Calls: projectDate
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' calls in package code:
      ‘ggplot2’ ‘plyr’
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Packages in Depends field not imported from:
      ‘Matrix’ ‘lubridate’ ‘timeDate’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    plotCalendarHeatmap: no visible global function definition for ‘ddply’
    plotCalendarHeatmap: no visible global function definition for ‘.’
    plotCalendarHeatmap: no visible binding for global variable ‘year’
    plotCalendarHeatmap: no visible binding for global variable ‘month’
    plotCalendarHeatmap: no visible binding for global variable ‘week’
    plotCalendarHeatmap: no visible global function definition for ‘ggplot’
    plotCalendarHeatmap: no visible global function definition for ‘aes’
    plotCalendarHeatmap: no visible binding for global variable ‘monthweek’
    plotCalendarHeatmap: no visible binding for global variable ‘weekday’
    plotCalendarHeatmap: no visible global function definition for
      ‘geom_tile’
    plotCalendarHeatmap: no visible global function definition for
      ‘facet_grid’
    plotCalendarHeatmap: no visible global function definition for
      ‘scale_fill_gradientn’
    projectDate: no visible global function definition for ‘holidayNYSE’
    projectDate: no visible global function definition for
      ‘sparse.model.matrix’
    Undefined global functions or variables:
      . aes ddply facet_grid geom_tile ggplot holidayNYSE isWeekday month
      monthweek scale_fill_gradientn sparse.model.matrix week weekday year
    ```

# timetk

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# tm.plugin.webmining

Version: 1.3

## In both

*   checking R code for possible problems ... NOTE
    ```
    extractContentDOM: no visible global function definition for
      ‘capture.output’
    extractHTMLStrip: no visible global function definition for
      ‘capture.output’
    Undefined global functions or variables:
      capture.output
    Consider adding
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
    ```

# toaster

Version: 0.5.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘igraph’
    ```

# tofsims

Version: 1.4.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘tofsims-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: bwApply
    > ### Title: bwApply
    > ### Aliases: bwApply bwApply,MassSpectra,matrix-method
    > 
    > ### ** Examples
    > 
    > library(tofsimsData)
    > data(tofsimsData)
    > testImage <- PCAnalysis(testImage, nComp = 2)
    1
    > library(EBImage)
    Error in library(EBImage) : there is no package called ‘EBImage’
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Sorting the m/z vector.
    Extraction of peak limit indices from rawdata
    Calculation of count data per M/z
    Compounding contingency tables
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 reshape image data to standard orientation
    transform image data from array to matrix
    cleaning up...
    calculating offset
    scaling first dimension...
    scaling second dimension...
    combining...
    1
    calculating initial pca...
    calculating difference matrices...
    calculating covariance matrices...
    calculate eigen vectors and values...
    2
    Quitting from lines 112-117 (workflow.Rmd) 
    Error: processing vignette 'workflow.Rmd' failed with diagnostics:
    there is no package called 'EBImage'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EBImage’
    ```

# toxboot

Version: 0.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rmongodb’
    ```

# toxplot

Version: 0.1.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 48-52 (Using_ToxPlot_Package_to_Analyze_in_vitro_Screening_Data.Rmd) 
    Error: processing vignette 'Using_ToxPlot_Package_to_Analyze_in_vitro_Screening_Data.Rmd' failed with diagnostics:
    'roxygen2' >= 5.0.0 must be installed for this functionality.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# TPP

Version: 3.4.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        data           1.9Mb
        example_data   8.0Mb
        test_data      1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘doParallel:::.options’ ‘mefa:::rep.data.frame’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    File ‘TPP/R/TPP.R’:
      .onLoad calls:
        packageStartupMessage(msgText, "\n")
    
    See section ‘Good practice’ in '?.onAttach'.
    
    plot_fSta_distribution: no visible binding for global variable
      ‘..density..’
    plot_pVal_distribution: no visible binding for global variable
      ‘..density..’
    Undefined global functions or variables:
      ..density..
    ```

# trackeR

Version: 0.0.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘colorspace’
      All declared Imports should be used.
    ```

# traitr

Version: 0.14

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Title field: should not end in a period.
    ```

# treatSens

Version: 2.1.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.4Mb
      sub-directories of 1Mb or more:
        libs  27.2Mb
    ```

# treebase

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
         })(character(0))
      
      Space required after the Public Identifier
      SystemLiteral " or ' expected
      SYSTEM or PUBLIC, the URI is missing
      Error : 1: Space required after the Public Identifier
      2: SystemLiteral " or ' expected
      3: SYSTEM or PUBLIC, the URI is missing
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 1
      1. Error: metadata works as expected (@test_metadata.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# treeclim

Version: 2.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dplR’
    ```

# treemapify

Version: 2.3.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# treespace

Version: 1.0.0

## In both

*   checking whether package ‘treespace’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘DBI’ is not available and has been replaced
    See ‘/home/muelleki/git/R/testthat/revdep/checks/treespace/new/treespace.Rcheck/00install.out’ for details.
    ```

# triebeard

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# trustOptim

Version: 0.8.6.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        libs   8.3Mb
    ```

# tuber

Version: 0.9.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        expect_equal(hello(), 'Hello World')    
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 6 SKIPPED: 0 FAILED: 1
      1. Failure: Package Style (@test-pkg-style.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tufterhandout

Version: 1.2.1

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

# TVTB

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > # Pre-process variants
    > vcf <- VariantAnnotation::readVcf(
    +     vcfFile, param = tparam, colData = phenotypes)
    > vcf <- VariantAnnotation::expand(vcf, row.names = TRUE)
    > vcf <- addFrequencies(vcf, "super_pop")
    > 
    > # Example usage ----
    > 
    > if (requireNamespace("EnsDb.Hsapiens.v75")){
    +     plotInfo(
    +         vcf, "MAF",
    +         range(GenomicRanges::granges(vcf)),
    +         EnsDb.Hsapiens.v75::EnsDb.Hsapiens.v75,
    +         "super_pop"
    +     )
    + }
    Loading required namespace: EnsDb.Hsapiens.v75
    Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: plotInfo ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        rs1426654 rs150379789 rs570906312 rs538198029 rs553496066 rs574775672 
             TRUE        TRUE       FALSE       FALSE        TRUE       FALSE 
      rs140666229 rs556950130 rs575303689 rs147513140 rs187525777 rs192454382 
             TRUE       FALSE        TRUE        TRUE       FALSE       FALSE 
      rs184818838 rs566886499 rs199924625 rs555872528 rs531820822 rs201353600 
            FALSE       FALSE       FALSE       FALSE       FALSE       FALSE 
      rs550201688 rs565338261 rs201239799 rs200461129 rs146726548 
            FALSE       FALSE       FALSE       FALSE        TRUE 
      testthat results ================================================================
      OK: 229 SKIPPED: 2 FAILED: 2
      1. Error: all signatures work to completion (@test_plotInfo-methods.R#25) 
      2. Error: invalid metric/phenotype combination is detected (@test_plotInfo-methods.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Overwriting INFO keys in data:
    - REF
    - HET
    - ALT
    - AAF
    - MAF
    Overwriting INFO keys in header:
    - REF
    - HET
    - ALT
    - AAF
    - MAF
    Quitting from lines 570-577 (Introduction.Rmd) 
    Error: processing vignette 'Introduction.Rmd' failed with diagnostics:
    invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Execution halted
    ```

# twilio

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3. Error: tw_send_message() can send messages (@test_tw_send_message.R#11) -----
      Please set environmental variable TWILIO_SID.
      1: tw_send_message("2127872000", "+15005550006", "Half a pound of whitefish salad please.") at testthat/test_tw_send_message.R:11
      2: paste("2010-04-01", "Accounts", get_sid(), "Messages.json", sep = "/")
      3: get_sid()
      4: stop("Please set environmental variable TWILIO_SID.", call. = FALSE)
      
      testthat results ================================================================
      OK: 7 SKIPPED: 0 FAILED: 3
      1. Error: tw_get_message_media() can retrieve a photo (@test_tw_get_message_media.R#6) 
      2. Error: Test that tw_get_messages_list() will retrieve messages (@test_tw_get_messages_list.R#6) 
      3. Error: tw_send_message() can send messages (@test_tw_send_message.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# umx

Version: 1.7.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sem’
    ```

# ungeneanno

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(ungeneanno)
      Loading required package: httr
      Loading required package: XML
      > 
      > test_check("ungeneanno")
      1. Failure: Gets from NCBI gene database (@test-NIHConnections.R#25) -----------
      `g` has changed from known value recorded in 'ncbi_test_gene.rds'.
      Attributes: < Component "nih_summary": 1 string mismatch >
      
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 1
      1. Failure: Gets from NCBI gene database (@test-NIHConnections.R#25) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# uniqtag

Version: 1.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    cumcount: no visible global function definition for ‘setNames’
    uniqtag: no visible global function definition for ‘setNames’
    Undefined global functions or variables:
      setNames
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# unitizer

Version: 1.4.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/runtt.R’ failed.
    Last 13 lines of output:
      1. Error: (unknown) (@testthat.browse.R#5) 
      2. Error: (unknown) (@testthat.demo.R#4) 
      3. Failure: Show Test Error (@testthat.error.R#28) 
      4. Error: (unknown) (@testthat.exec.R#11) 
      5. Error: (unknown) (@testthat.inpkg.R#11) 
      6. Error: (unknown) (@testthat.item.R#4) 
      7. Error: (unknown) (@testthat.parse.R#5) 
      8. Failure: simple tests (@testthat.section.R#13) 
      9. Error: (unknown) (@testthat.section.R#5) 
      1. ...
      
      Error: testthat unit tests failed
      Removing packages from '/home/muelleki/git/R/testthat/revdep/checks/unitizer/new/unitizer.Rcheck'
      (as 'lib' is unspecified)
      Execution halted
    ```

# uptasticsearch

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: devtools::check at testthat/test-repo_characteristics.R:38
      2: getExportedValue(pkg, name)
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      testthat results ================================================================
      OK: 233 SKIPPED: 0 FAILED: 1
      1. Error: R CMD check should not return any unexpected errors, warnings, or notes (@test-repo_characteristics.R#38) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# uptimeRobot

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 20 SKIPPED: 0 FAILED: 13
      1. Error: uptimerobot.account.details (@test-account.details.R#7) 
      2. Failure: uptimerobot.contact.new/delete (@test-contact-actions.R#16) 
      3. Failure: uptimerobot.contact.new/delete (@test-contact-actions.R#19) 
      4. Failure: uptimerobot.contact.new/delete (@test-contact-actions.R#20) 
      5. Failure: uptimerobot.contact.new/delete (@test-contact-actions.R#23) 
      6. Error: uptimerobot.contact.new/delete (@test-contact-actions.R#26) 
      7. Error: uptimerobot.contacts (@test-contacts.R#14) 
      8. Failure: uptimerobot.monitor.new/edit/reset/delete (@test-monitor-actions.R#18) 
      9. Error: uptimerobot.monitor.new/edit/reset/delete (@test-monitor-actions.R#21) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# urltools

Version: 1.6.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘httr’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 407 marked UTF-8 strings
    ```

# USAboundaries

Version: 0.3.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘USAboundariesData’
    ```

# usmap

Version: 0.2.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        extdata   6.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ggthemes’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# uSORT

Version: 1.2.0

## In both

*   checking whether package ‘uSORT’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/muelleki/git/R/testthat/revdep/checks/uSORT/new/uSORT.Rcheck/00install.out’ for details.
    ```

# utilsIPEA

Version: 0.0.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   5.8Mb
    ```

# valaddin

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# validate

Version: 0.2.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘lumberjack’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lumberjack’
    ```

# valr

Version: 0.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.5Mb
      sub-directories of 1Mb or more:
        libs  14.0Mb
    ```

# vanddraabe

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > test_check("vanddraabe")
      Loading required package: vanddraabe
      1. Failure: FileTimeStamp returns the correct formatted date and time (@test-utilities.R#87) 
      `FileTimeStamp(current.time)` not equal to "may042016_1234".
      1/1 mismatches
      x[1]: "mai042016_1234"
      y[1]: "may042016_1234"
      
      testthat results ================================================================
      OK: 64 SKIPPED: 0 FAILED: 1
      1. Failure: FileTimeStamp returns the correct formatted date and time (@test-utilities.R#87) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# vcfR

Version: 1.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        doc    3.0Mb
        libs   7.5Mb
    ```

# vdmR

Version: 0.2.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘maptools’ ‘rgeos’
      All declared Imports should be used.
    ```

# veccompare

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pander’
      All declared Imports should be used.
    ```

# vietnamcode

Version: 0.1.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 60 marked UTF-8 strings
    ```

# viridis

Version: 0.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'raster'
    
    The following object is masked from 'package:colorspace':
    
        RGB
    
    Loading required package: lattice
    Loading required package: latticeExtra
    Loading required package: RColorBrewer
    
    Attaching package: 'latticeExtra'
    
    The following object is masked from 'package:ggplot2':
    
        layer
    
    Quitting from lines 204-213 (intro-to-viridis.Rmd) 
    Error: processing vignette 'intro-to-viridis.Rmd' failed with diagnostics:
    Cannot create RasterLayer object from this file; perhaps you need to install rgdal first
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# virustotal

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
                              ^~~~~~~~~~~~~
      tests/testthat/test_dir/test-helper.R:5:39: style: Trailing whitespace is superfluous.
        expect_equal(hello(), 'Hello World')    
                                            ^~~~
      tests/testthat/test_dir/test-helper.R:7:1: style: Trailing blank lines are superfluous.
      
      ^
      
      testthat results ================================================================
      OK: 2 SKIPPED: 0 FAILED: 2
      1. Error: can decrypt secrets and data structures verified (@test-data-structures.R#16) 
      2. Failure: Package Style (@test-pkg-style.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# vqtl

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘iterators’ ‘knitr’ ‘testthat’
      All declared Imports should be used.
    ```

# vsn

Version: 3.44.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hexbin’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    meanSdPlot,matrix: no visible binding for global variable ‘y’
    Undefined global functions or variables:
      y
    ```

# waccR

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lubridate’ ‘tibble’
      All declared Imports should be used.
    ```

# walker

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 46.9Mb
      sub-directories of 1Mb or more:
        libs  46.2Mb
    ```

# walkr

Version: 0.3.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

# Wats

Version: 0.10.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        doc  12.1Mb
    ```

# wdman

Version: 0.2.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 26 SKIPPED: 0 FAILED: 18
      1. Error: canCallChrome (@test-chrome.R#3) 
      2. Error: pickUpErrorFromReturnCode (@test-chrome.R#43) 
      3. Error: pickUpErrorFromPortInUse (@test-chrome.R#62) 
      4. Error: canCallGecko (@test-gecko.R#4) 
      5. Error: pickUpErrorFromReturnCode (@test-gecko.R#44) 
      6. Error: pickUpErrorFromPortInUse (@test-gecko.R#63) 
      7. Error: canCallIEDriver (@test-iedriver.R#4) 
      8. Error: pickUpErrorFromReturnCode (@test-iedriver.R#46) 
      9. Error: pickUpErrorFromPortInUse (@test-iedriver.R#68) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# wgsea

Version: 1.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘snpStats’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Z.value: no visible global function definition for ‘sd’
    Z.value: no visible global function definition for ‘pnorm’
    pairtest: no visible global function definition for ‘is’
    pairtest: no visible global function definition for ‘new’
    pairtest: no visible global function definition for ‘rbind2’
    pairtest: no visible global function definition for ‘p.value’
    pairtest: no visible global function definition for ‘single.snp.tests’
    scoretest: no visible global function definition for ‘pchisq’
    varplot : <anonymous>: no visible global function definition for ‘var’
    varplot: no visible global function definition for ‘plot’
    varplot: no visible global function definition for ‘abline’
    Undefined global functions or variables:
      abline is new p.value pchisq plot pnorm rbind2 sd single.snp.tests
      var
    Consider adding
      importFrom("graphics", "abline", "plot")
      importFrom("methods", "is", "new", "rbind2")
      importFrom("stats", "pchisq", "pnorm", "sd", "var")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# WHO

Version: 0.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘WHO-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_codes
    > ### Title: Get all codes and metadata for WHO series
    > ### Aliases: get_codes
    > 
    > ### ** Examples
    > 
    > codes <- get_codes()
    Error: parse error: premature EOF
                                           { "copyright": "(c) World Healt
                         (right here) ------^
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: jsonlite::fromJSON(parse_text(x, encoding = "UTF-8"), simplifyVector = simplifyVector, 
             ...)
      7: fromJSON_string(txt = txt, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame, 
             simplifyMatrix = simplifyMatrix, flatten = flatten, ...)
      8: parseJSON(txt, bigint_as_char)
      9: parse_string(txt, bigint_as_char)
      
      testthat results ================================================================
      OK: 2 SKIPPED: 0 FAILED: 2
      1. Error: get_codes returns a data frame with positive length (@tests.R#11) 
      2. Error: get_codes(TRUE) returns a data frame with positive length and more
                than three columns (@tests.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 44-48 (who_vignette.Rmd) 
    Error: processing vignette 'who_vignette.Rmd' failed with diagnostics:
    parse error: premature EOF
                                           { "copyright": "(c) World Healt
                         (right here) ------^
    Execution halted
    ```

# whoami

Version: 1.1.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
         })
      4: FUN(X[[i]], ...)
      5: stop("Can't mock functions in base packages (", pkg_name, ")", call. = FALSE)
      
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 5
      1. Error: Email address works (@test-email.R#6) 
      2. Error: username() falls back (@test-fallbacks.R#6) 
      3. Error: fullname() falls back (@test-fallbacks.R#17) 
      4. Error: email_address() falls back (@test-fallbacks.R#27) 
      5. Error: fullname works via git (@test-fullname.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# wicket

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# widyr

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# wiggleplotr

Version: 1.0.0

## In both

*   checking examples ... ERROR
    ```
    ...
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Loading required package: GenomicFeatures
    Loading required package: AnnotationDbi
    Loading required package: Biobase
    Welcome to Bioconductor
    
        Vignettes contain introductory material; view with
        'browseVignettes()'. To cite Bioconductor, see
        'citation("Biobase")', and for packages 'citation("pkgname")'.
    
    Loading required package: AnnotationFilter
    > plotTranscriptsFromEnsembldb(EnsDb.Hsapiens.v86, "NCOA7", transcript_ids = c("ENST00000438495", "ENST00000392477"))
    Error in validObject(.Object) : 
      invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Calls: plotTranscriptsFromEnsembldb ... .AnnotationFilterList -> new -> initialize -> initialize -> validObject
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 148-152 (wiggleplotr.Rmd) 
    Error: processing vignette 'wiggleplotr.Rmd' failed with diagnostics:
    invalid class "AnnotationFilterList" object: superclass "vectorORfactor" not defined in the environment of the object's class
    Execution halted
    ```

# WikidataR

Version: 1.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# wikilake

Version: 0.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# wikitaxa

Version: 0.1.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: wt_data("Mimulus foliatus", property = prop) at testthat/test-wt_data.R:7
      2: wt_data.default("Mimulus foliatus", property = prop)
      3: data_wiki(x[[1]]$id, property = property, ...)
      4: stop("No matching properties", call. = FALSE)
      
      testthat results ================================================================
      OK: 120 SKIPPED: 0 FAILED: 5
      1. Failure: wt_wikicommons_search works (@test-wikicommons.R#80) 
      2. Failure: wt_wikipedia returns non-empty results (@test-wikipedia.R#26) 
      3. Failure: wt_wikipedia_search works (@test-wikipedia.R#86) 
      4. Failure: wt_wikispecies_search works (@test-wikispecies.R#80) 
      5. Error: wt_data returns the correct class (@test-wt_data.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 166 marked UTF-8 strings
    ```

# withr

Version: 2.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1. Failure: (unknown) (@test-sink.R#50) ----------------------------------------
      readLines(tmp) not identical to "message".
      Lengths differ: 0 is not 1
      
      2. Failure: (unknown) (@test-sink.R#50) ----------------------------------------
      readLines(tmp) not identical to c("message", "message 2").
      Lengths differ: 0 is not 2
      
      testthat results ================================================================
      OK: 132 SKIPPED: 0 FAILED: 2
      1. Failure: (unknown) (@test-sink.R#50) 
      2. Failure: (unknown) (@test-sink.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# wrswoR

Version: 1.0-1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 622-635 (wrswoR.Rmd) 
    Error: processing vignette 'wrswoR.Rmd' failed with diagnostics:
    
    TeX was unable to calculate metrics for the following string
    or character:
    
    	77
    
    Common reasons for failure include:
      * The string contains a character which is special to LaTeX unless
        escaped properly, such as % or $.
      * The string makes use of LaTeX commands provided by a package and
        the tikzDevice was not told to load the package.
    
    The contents of the LaTeX log of the aborted run have been printed above,
    it may contain additional details as to why the metric calculation failed.
    Execution halted
    ```

# wru

Version: 0.1-7

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   5.6Mb
    ```

# WVPlots

Version: 0.2.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mgcv’
      All declared Imports should be used.
    ```

# XBSeq

Version: 1.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          Welcome to 'XBSeq'.
      > 
      > test_check("XBSeq")
      estimating parameters using MLE for group one 
      estimating parameters using MLE for group two 
      1. Failure: (unknown) (@test_XBplot.R#6) ---------------------------------------
      `XBplot(XB, Samplenum = "Sample_54_WT")` did not throw an error.
      
      testthat results ================================================================
      OK: 19 SKIPPED: 0 FAILED: 1
      1. Failure: (unknown) (@test_XBplot.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘XBSeq’ for: ‘conditions’, ‘conditions<-’, ‘dispTable’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for ‘assay’
    estimateRealCount,XBSeqDataSet: no visible global function definition
      for ‘assay<-’
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘conditions’
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘dispTable<-’
    Undefined global functions or variables:
      ..count.. DataFrame Gamma Group Sample SummarizedExperiment assay
      assay<- assays baseMean coefficients complete.cases conditions cor
      data ddelap dispTable dispTable<- dnbinom dpois formula glm
      log2FoldChange median optim p.adjust pbeta predict qbeta quantile
      rnbinom scvBiasCorrectionFits
    Consider adding
      importFrom("stats", "Gamma", "coefficients", "complete.cases", "cor",
                 "dnbinom", "dpois", "formula", "glm", "median", "optim",
                 "p.adjust", "pbeta", "predict", "qbeta", "quantile",
                 "rnbinom")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# xgboost

Version: 0.6-4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        libs  11.3Mb
    ```

# XiMpLe

Version: 0.10-1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'XiMpLe_vignette.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `apacite.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.4 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# XKCDdata

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# xml2

Version: 1.1.1

## In both

*   checking compiled code ... NOTE
    ```
    File ‘xml2/libs/xml2.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_WriteConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# xxIRT

Version: 2.0.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘graphics’
      All declared Imports should be used.
    ```

# yamss

Version: 1.2.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘EBImage’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# YAPSA

Version: 1.2.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘YAPSA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: create_mutation_catalogue_from_VR
    > ### Title: Create a Mutational Catalogue from a VRanges Object
    > ### Aliases: create_mutation_catalogue_from_VR
    > 
    > ### ** Examples
    > 
    >  library(BSgenome.Hsapiens.UCSC.hg19)
    Error in library(BSgenome.Hsapiens.UCSC.hg19) : 
      there is no package called 'BSgenome.Hsapiens.UCSC.hg19'
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
        is.unsorted, lapply, lengths, mapply, match, mget, order,
        paste, pmax, pmax.int, pmin, pmin.int, rank, rbind, rowMeans,
        rowSums, rownames, sapply, setdiff, sort, table, tapply,
        union, unique, unsplit, which, which.max, which.min
    
    Loading required package: S4Vectors
    
    Attaching package: 'S4Vectors'
    
    The following object is masked from 'package:base':
    
        expand.grid
    
    Loading required package: IRanges
    Loading required package: GenomeInfoDb
    Loading required package: ggplot2
    Loading required package: grid
    Quitting from lines 763-764 (YAPSA.Rmd) 
    Error: processing vignette 'YAPSA.Rmd' failed with diagnostics:
    there is no package called 'BSgenome.Hsapiens.UCSC.hg19'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘BSgenome.Hsapiens.UCSC.hg19’
    ```

# Zelig

Version: 5.1-4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ev
                mean         sd       50%      2.5%     97.5%
      [1,] 0.6990619 0.09467077 0.7081549 0.5028567 0.8603348
      pv
              0    1
      [1,] 0.31 0.69
      fd
                 mean        sd        50%      2.5%       97.5%
      [1,] -0.2377065 0.1148547 -0.2380952 -0.466211 -0.01659926
      testthat results ================================================================
      OK: 1273 SKIPPED: 0 FAILED: 1
      1. Error: REQUIRE TEST survey weights correctly passed (@test-survey.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# zeligverse

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Amelia’ ‘MatchIt’ ‘WhatIf’
      All declared Imports should be used.
    ```

# zFactor

Version: 0.1.6

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rootSolve’ ‘tibble’
      All declared Imports should be used.
    ```

# zonator

Version: 0.5.8

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      2: compare(act$val, exp$val, ..., check.attributes = FALSE)
      3: compare.numeric(act$val, exp$val, ..., check.attributes = FALSE)
      4: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      5: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      6: stop("'tolerance' should be numeric")
      
      testthat results ================================================================
      OK: 157 SKIPPED: 1 FAILED: 3
      1. Error: performance levels are reported right for individual features (@test-04-zresults.R#193) 
      2. Error: performance levels are reported right for groups (@test-04-zresults.R#231) 
      3. Error: Retrieving variants works (@test-06-zproject.R#38) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘zdat’
    ```

# zoom

Version: 2.0.4

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    setCallBack : devset: no visible global function definition for
      ‘dev.cur’
    setCallBack : devset: no visible global function definition for
      ‘dev.set’
    sq.zoom: no visible global function definition for ‘locator’
    zoomplot.zoom: no visible global function definition for ‘recordPlot’
    zoomplot.zoom: no visible global function definition for ‘box’
    Undefined global functions or variables:
      box dev.cur dev.off dev.print dev.set dev.size getGraphicsEvent
      getGraphicsEventEnv grconvertX grconvertY locator par pdf png
      recordPlot replayPlot sessionInfo setGraphicsEventEnv
      setGraphicsEventHandlers
    Consider adding
      importFrom("grDevices", "dev.cur", "dev.off", "dev.print", "dev.set",
                 "dev.size", "getGraphicsEvent", "getGraphicsEventEnv",
                 "pdf", "png", "recordPlot", "replayPlot",
                 "setGraphicsEventEnv", "setGraphicsEventHandlers")
      importFrom("graphics", "box", "grconvertX", "grconvertY", "locator",
                 "par")
      importFrom("utils", "sessionInfo")
    to your NAMESPACE file.
    ```

# zoon

Version: 0.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      *** installing help indices
      ** building package indices
      ** testing if installed package can be loaded
      * DONE (maxlike)
      
      The downloaded source packages are in
      	'/home/muelleki/tmp/Rtmp34hkmB/downloaded_packages'
      testthat results ================================================================
      OK: 693 SKIPPED: 36 FAILED: 3
      1. Error: Test call_path in a large number of variations (@testcall_path.R#102) 
      2. Error: Check PROCESS output formats for OneHundredBackground.R 
      3. Error: Check PROCESS output formats for Crossvalidate.R 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# zstdr

Version: 0.1.1

## In both

*   checking whether package ‘zstdr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/testthat/revdep/checks/zstdr/new/zstdr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘zstdr’ ...
** package ‘zstdr’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking for cmake... no
configure: error: Could not find cmake.
ERROR: configuration failed for package ‘zstdr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/zstdr/new/zstdr.Rcheck/zstdr’

```
### CRAN

```
* installing *source* package ‘zstdr’ ...
** package ‘zstdr’ successfully unpacked and MD5 sums checked
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking for cmake... no
configure: error: Could not find cmake.
ERROR: configuration failed for package ‘zstdr’
* removing ‘/home/muelleki/git/R/testthat/revdep/checks/zstdr/old/zstdr.Rcheck/zstdr’

```
# ztable

Version: 0.1.5

## In both

*   checking R code for possible problems ... NOTE
    ```
    ztable.glm: no visible global function definition for ‘confint’
    ztable.glm: no visible global function definition for ‘coef’
    ztable.nls: no visible global function definition for ‘formula’
    Undefined global functions or variables:
      coef confint formula
    Consider adding
      importFrom("stats", "coef", "confint", "formula")
    to your NAMESPACE file.
    ```

