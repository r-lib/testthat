# annotatr

Version: 1.8.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘annotatr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: build_annotations
    > ### Title: A function to build annotations from TxDb.* and AnnotationHub
    > ###   resources
    > ### Aliases: build_annotations
    > 
    > ### ** Examples
    > 
    > # Example with hg19 gene promoters
    > annots = c('hg19_genes_promoters')
    > annots_gr = build_annotations(genome = 'hg19', annotations = annots)
    Error in get(txdb_name) : 
      object 'TxDb.Hsapiens.UCSC.hg19.knownGene' not found
    Calls: build_annotations
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘org.Dm.eg.db’ ‘org.Gg.eg.db’ ‘org.Rn.eg.db’
      ‘TxDb.Dmelanogaster.UCSC.dm3.ensGene’
      ‘TxDb.Dmelanogaster.UCSC.dm6.ensGene’
      ‘TxDb.Ggallus.UCSC.galGal5.refGene’
      ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
      ‘TxDb.Hsapiens.UCSC.hg38.knownGene’
      ‘TxDb.Mmusculus.UCSC.mm9.knownGene’
      ‘TxDb.Mmusculus.UCSC.mm10.knownGene’
      ‘TxDb.Rnorvegicus.UCSC.rn4.ensGene’
      ‘TxDb.Rnorvegicus.UCSC.rn5.refGene’
      ‘TxDb.Rnorvegicus.UCSC.rn6.refGene’
    ```

*   checking R code for possible problems ... NOTE
    ```
    plot_coannotations: no visible binding for global variable ‘.’
    plot_numerical_coannotations: no visible binding for global variable
      ‘.’
    Undefined global functions or variables:
      .
    ```

# banR

Version: 0.2.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 47-49 (geocode.Rmd) 
    Error: processing vignette 'geocode.Rmd' failed with diagnostics:
    The API sent back an error 503
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

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

# BgeeDB

Version: 2.8.0

## In both

*   R CMD check timed out
    

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# BIEN

Version: 1.2.3

## In both

*   R CMD check timed out
    

# BIOMASS

Version: 2.1

## In both

*   R CMD check timed out
    

# broom.mixed

Version: 0.2.4

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      1: expect(!("deviance" %in% names(glance(lmm0)))) at testthat/test-lme4.R:59
      2: paste(c(failure_message, info), collapse = "\n")
      
      ── 2. Error: glance includes deviance iff method='ML' (@test-nlme.R#88)  ───────
      argument "failure_message" is missing, with no default
      1: expect(!("deviance" %in% names(glance(lmm0)))) at testthat/test-nlme.R:88
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
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

# canceR

Version: 1.16.01

## In both

*   R CMD check timed out
    

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

# CNPBayes

Version: 1.12.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R     2.0Mb
        doc   3.5Mb
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
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 70 SKIPPED: 0 FAILED: 1
      1. Error: Catch unit tests pass (@test_cpp.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.8Mb
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
      
      ── 4. Error: dates works (@helper-run-data-type-tests.R#114)  ──────────────────
      argument "failure_message" is missing, with no default
      1: expect(all(format(res$created_on, "%Z") == "UTC")) at /Users/max/github/forks/testthat/revdep/checks.noindex/dbx/new/dbx.Rcheck/tests/testthat/helper-run-data-type-tests.R:114
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 75 SKIPPED: 19 FAILED: 4
      1. Error: empty insert works (@helper-run-insert-tests.R#12) 
      2. Error: empty update works (@helper-run-update-tests.R#20) 
      3. Error: empty upsert works (@helper-run-upsert-tests.R#54) 
      4. Error: dates works (@helper-run-data-type-tests.R#114) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# DelayedMatrixStats

Version: 1.4.0

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Missing objects imported by ':::' calls:
      ‘DelayedArray:::.execute_delayed_ops’
      ‘DelayedArray:::get_Nindex_names_along’
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::set_dim’ ‘DelayedArray:::set_dimnames’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DiffBind

Version: 2.10.0

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘XLConnect’
    ```

*   checking R code for possible problems ... NOTE
    ```
    pv.DBAplotVolcano: no visible binding for global variable ‘Fold’
    pv.DBAplotVolcano: no visible binding for global variable ‘Legend’
    Undefined global functions or variables:
      Fold Legend
    ```

# diffdf

Version: 1.0.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
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

# dimRed

Version: 0.2.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          embed
      
      The following object is masked from 'package:base':
      
          as.data.frame
      
      > 
      > test_check("dimRed", reporter = ListReporter)
      /Users/max/.virtualenvs/r-tensorflow/lib/python2.7/site-packages/h5py/__init__.py:36: FutureWarning: Conversion of the second argument of issubdtype from `float` to `np.floating` is deprecated. In future, it will be treated as `np.float64 == np.dtype(float).type`.
        from ._conv import register_converters as _register_converters
      2019-04-02 14:13:50.353561: I tensorflow/core/platform/cpu_feature_guard.cc:137] Your CPU supports instructions that this TensorFlow binary was not compiled to use: SSE4.2 AVX AVX2 AVX512F FMA
      Using TensorFlow backend.
      Error: Test failures
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
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   2.9Mb
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
      3: run_native_backend(config)
      4: get(paste0("backend_", parallelism), envir = getNamespace("drake"))(config)
      5: loop_build(target = targets[i], config = config, downstream = targets[-seq_len(i)])
      6: conclude_build(build = build, config = config)
      7: handle_build_exceptions(target = target, meta = meta, config = config)
      8: drake_error("Target `", target, "` failed. Call `diagnose(", target, ")` for details. Error message:\n  ", 
             meta$error$message, config = config)
      9: stop(..., call. = FALSE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 803 SKIPPED: 207 FAILED: 1
      1. Error: lock_envir works (@test-edge-cases.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# EnrichedHeatmap

Version: 1.12.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        doc       7.7Mb
        extdata   2.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    as.normalizedMatrix: no visible binding for global variable
      ‘target_is_single_point’
    Undefined global functions or variables:
      target_is_single_point
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

# FELLA

Version: 1.2.0

## In both

*   R CMD check timed out
    

# geometa

Version: 0.4-0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        R         7.0Mb
        extdata   1.3Mb
    ```

# graphite

Version: 1.28.2

## In both

*   R CMD check timed out
    

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
      ── 1. Error: (unknown) (@test_checkGeneSymbols.R#77)  ──────────────────────────
      argument "failure_message" is missing, with no default
      1: expect(identical(res, res2)) at testthat/test_checkGeneSymbols.R:77
      2: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 38 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_checkGeneSymbols.R#77) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# hipathia

Version: 1.4.1

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        data      3.8Mb
        doc       1.7Mb
        extdata   4.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘load_entrez_hgnc’
    ```

*   checking R code for possible problems ... NOTE
    ```
    heatmap_plot: no visible binding for global variable ‘var’
    Undefined global functions or variables:
      var
    Consider adding
      importFrom("stats", "var")
    to your NAMESPACE file.
    ```

# HTSSIP

Version: 1.4.0

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘igraph’
      All declared Imports should be used.
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
      6: paste(c(failure_message, info), collapse = "\n")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1 SKIPPED: 0 FAILED: 1
      1. Error: it works (@test-jetpack.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# knockoff

Version: 0.3.2

## In both

*   R CMD check timed out
    

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

# MSnbase

Version: 2.8.3

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        data   1.9Mb
        doc    7.8Mb
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
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      ‘mzR:::.hasChromatograms’ ‘mzR:::.hasSpectra’
      See the note in ?`:::` about the use of this operator.
    ```

# msPurity

Version: 1.8.1

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
    stde: no visible global function definition for ‘sd’
    stderror: no visible global function definition for ‘sd’
    xcmsGroupPurity: no visible binding for global variable ‘median’
    xcmsGroupPurity: no visible global function definition for ‘median’
    averageSpectra,purityD: no visible binding for global variable ‘i’
    subtract,purityD: no visible binding for global variable ‘i’
    validate,purityA: no visible global function definition for ‘head’
    writeOut,purityD: no visible global function definition for ‘write.csv’
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

# PathwaySplice

Version: 1.6.1

## In both

*   R CMD check timed out
    

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    ```

*   checking R code for possible problems ... NOTE
    ```
    compareResults2: no visible global function definition for 'ggplot'
    compareResults2: no visible global function definition for 'aes'
    compareResults2: no visible binding for global variable
      'random_sampling_200k'
    compareResults2: no visible binding for global variable 'PValue'
    compareResults2: no visible binding for global variable 'PathwaySplice'
    compareResults2: no visible global function definition for 'geom_point'
    compareResults2: no visible global function definition for
      'geom_smooth'
    compareResults2: no visible global function definition for 'labs'
    compareResults2: no visible global function definition for
      'scale_colour_manual'
    compareResults2: no visible global function definition for
      'scale_shape_manual'
    netplot: no visible global function definition for 'get.col.scale'
    Undefined global functions or variables:
      PValue PathwaySplice aes geom_point geom_smooth get.col.scale ggplot
      labs random_sampling_200k scale_colour_manual scale_shape_manual
    ```

# PharmacoGx

Version: 1.12.0

## In both

*   R CMD check timed out
    

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2251 marked UTF-8 strings
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

# pmc

Version: 1.0.3

## In both

*   R CMD check timed out
    

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

# pRoloc

Version: 1.22.2

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 14.6Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc  12.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MLInterfaces:::.macroF1’ ‘MLInterfaces:::.precision’
      ‘MLInterfaces:::.recall’ ‘MLInterfaces:::es2df’
      ‘MSnbase:::.sameNbCol’ ‘MSnbase:::getVariableName’
      ‘MSnbase:::logging’ ‘MSnbase:::nologging’ ‘caret:::predict.plsda’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘pRoloc/R/annotation.R’:
      unlockBinding("params", .pRolocEnv)
    ```

# PureCN

Version: 1.12.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘PureCN-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annotateTargets
    > ### Title: Annotate targets with gene symbols
    > ### Aliases: annotateTargets
    > 
    > ### ** Examples
    > 
    > library(TxDb.Hsapiens.UCSC.hg19.knownGene)
    Error in library(TxDb.Hsapiens.UCSC.hg19.knownGene) : 
      there is no package called ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      FATAL [2019-04-02 20:25:14] The normal.panel.vcf.file contains only a single sample. 
      
      FATAL [2019-04-02 20:25:14]  
      
      FATAL [2019-04-02 20:25:14] This is most likely a user error due to invalid input data or 
      
      FATAL [2019-04-02 20:25:14] parameters (PureCN 1.12.2). 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 303 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test_annotateTargets.R#2) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        data      1.1Mb
        doc       2.6Mb
        extdata   3.1Mb
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

# recount

Version: 1.8.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘recount-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_geo
    > ### Title: Find the GEO accession id for a given SRA run
    > ### Aliases: find_geo
    > 
    > ### ** Examples
    > 
    > ## Find the GEO accession id for for SRX110461
    > find_geo('SRX110461')
    Error: HTTP failure: 429
    {"error":"API rate limit exceeded","api-key":"208.103.64.29","count":"4","limit":"3"}
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EnsDb.Hsapiens.v79’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        data  12.1Mb
        doc    3.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 347 marked UTF-8 strings
    ```

# rols

Version: 2.10.1

## In both

*   R CMD check timed out
    

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

# scruff

Version: 1.0.3

## In both

*   R CMD check timed out
    

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: 'ShortRead:::.set_omp_threads'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call(ShortRead:::.set_omp_threads, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      'reads_mapped_to_genome'
    tenxBamqc: no visible binding for global variable
      'reads_mapped_to_genes'
    tenxBamqc: no visible binding for global variable 'cb'
    tenxBamqc: no visible binding for global variable 'cell_barcode'
    tenxBamqc: no visible binding for global variable 'number_of_cells'
    Undefined global functions or variables:
      . .x CB GX MM NH avg_reads_per_corrected_umi avg_reads_per_umi
      barcode bc_correct capture.output cb cell_barcode cell_index
      exon_number experiment fastq_path filename gene_biotype gene_id
      gene_name geneid inferred_umi lane length1 level median
      median_reads_per_corrected_umi median_reads_per_umi min.phred1
      mt_counts number_of_cells percent_assigned project
      protein_coding_counts protein_coding_genes qtring1 qtring2 read1
      read1_path read2 read2_path readname reads reads_mapped_to_genes
      reads_mapped_to_genome rname1 rname2 total_counts transcript_id
      transcript_name type umi x x1 x2 y y1 y2
    Consider adding
      importFrom("stats", "median")
      importFrom("utils", "capture.output")
    to your NAMESPACE file.
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

# simulator

Version: 0.2.0

## In both

*   R CMD check timed out
    

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

# tissueTreg

Version: 1.2.0

## In both

*   R CMD check timed out
    

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘ggplot2’ ‘reshape2’
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

# XBSeq

Version: 1.14.1

## In both

*   R CMD check timed out
    

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

# xcms

Version: 3.4.4

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   8.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components with restrictions not permitted:
      GPL (>= 2) + file LICENSE
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MALDIquant:::.localMaxima’ ‘MSnbase:::formatFileSpectrumNames’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘MSW.cwt’ ‘MSW.getLocalMaximumCWT’ ‘MSW.getRidge’ ‘XProcessHistory’
      ‘descendMin’ ‘descendMinTol’ ‘estimateChromNoise’
      ‘getLocalNoiseEstimate’ ‘na.flatfill’ ‘patternVsRowScore’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncvar_def’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘nc_create’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncvar_put’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncatt_put’
    write.cdf,xcmsRaw: no visible global function definition for ‘nc_close’
    write.mzQuantML,xcmsSet: no visible global function definition for
      ‘saveXML’
    write.mzdata,xcmsRaw: no visible global function definition for
      ‘base64encode’
    Undefined global functions or variables:
      addChildren addEdge base64encode checkCluster checkForRemoteErrors
      edgemode<- makeCluster mpi.any.source mpi.any.tag
      mpi.bcast.Robj2slave mpi.bcast.cmd mpi.comm.rank mpi.comm.size
      mpi.get.sourcetag mpi.recv.Robj mpi.send.Robj mpi.spawn.Rslaves
      nc_close nc_create ncatt_put ncdim_def ncvar_def ncvar_put newXMLNode
      recvOneResult rgl.bbox rgl.clear rgl.points rgl.surface saveXML
      sendCall xmlInternalTreeParse xmlSchemaValidate xmlTree xmlTreeParse
    ```

