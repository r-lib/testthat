# BgeeDB

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/BgeeDB
* URL: https://github.com/BgeeDB/BgeeDB_R
* BugReports: https://github.com/BgeeDB/BgeeDB_R/issues
* Date/Publication: 2018-10-30
* Number of recursive dependencies: 61

Run `revdep_details(,"BgeeDB")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    Building URLs to retrieve organ names from Bgee.................
       URL successfully built (https://r.bgee.org/?page=r_package&action=get_anat_entities&display_type=tsv&species_list=7955&attr_list=ID&attr_list=NAME&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0)
       Submitting URL to Bgee webservice (can be long)
    trying URL 'https://r.bgee.org/?page=r_package&action=get_anat_entities&display_type=tsv&species_list=7955&attr_list=ID&attr_list=NAME&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0'
    downloaded 425 KB
    
       Got results from Bgee webservice. Files are written in "/Users/max/github/forks/testthat/revdep/checks.noindex/BgeeDB/new/BgeeDB.Rcheck/Danio_rerio_Bgee_14_0"
    
    Building URLs to retrieve mapping of gene to organs from Bgee...
       URL successfully built (https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER)
       Submitting URL to Bgee webservice (can be long)
    trying URL 'https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER'
    downloaded 2.1 MB
    
    Warning in download.file(myUrl, destfile = paste0(myBgeeObject$pathToData,  :
      URL 'https://bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER': status was 'Failure when receiving data from the peer'
    Error in download.file(myUrl, destfile = paste0(myBgeeObject$pathToData,  : 
      download from 'https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER' failed
    Calls: loadTopAnatData -> download.file
    Execution halted
    ```

*   R CMD check timed out
    

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# curl

<details>

* Version: 3.3
* Source code: https://github.com/cran/curl
* URL: https://github.com/jeroen/curl#readme (devel) https://curl.haxx.se/libcurl/ (upstream)
* BugReports: https://github.com/jeroen/curl/issues
* Date/Publication: 2019-01-10 12:50:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"curl")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > if(curl::has_internet()){
      +   test_check("curl")
      + }
      This is libcurl version 7.54.0 with LibreSSL/2.6.4 
      Using test server: http://hb.opencpu.org 
      [31m──[39m [31m1. Error: callbacks are protected (@test-progress.R#8) [39m [31m────────────────────────────────────────────[39m
      Timeout was reached: Resolving timed out after 1484036 milliseconds
      1: curl_fetch_memory("https://cloud.r-project.org/web/packages/curl/curl.pdf", handle = h) at testthat/test-progress.R:8
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════
      OK: 196 SKIPPED: 1 FAILED: 1
      1. Error: callbacks are protected (@test-progress.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking compiled code ... NOTE
    ```
    File ‘curl/libs/curl.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# drake

<details>

* Version: 7.1.0
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2019-04-07 15:23:01 UTC
* Number of recursive dependencies: 110

Run `revdep_details(,"drake")` for more info

</details>

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
      7: handle_build_exceptions(target = target, meta = meta, config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/exec-build.R:55
      8: drake_error("Target `", target, "` failed. Call `diagnose(", target, ")` for details. Error message:\n  ", 
             meta$error$message, config = config) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/utils-handlers.R:29
      9: stop(..., call. = FALSE) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/drake/new/drake.Rcheck/00_pkg_src/drake/R/vis-console.R:52
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════════════════
      OK: 843 SKIPPED: 206 WARNINGS: 0 FAILED: 1
      1. Error: lock_envir works (@test-edge-cases.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# markmyassignment

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/markmyassignment
* Date/Publication: 2018-01-17 10:33:29 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"markmyassignment")` for more info

</details>

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

# parallelMap

<details>

* Version: 1.3
* Source code: https://github.com/cran/parallelMap
* URL: https://github.com/berndbischl/parallelMap
* BugReports: https://github.com/berndbischl/parallelMap/issues
* Date/Publication: 2015-06-10 00:58:31
* Number of recursive dependencies: 31

Run `revdep_details(,"parallelMap")` for more info

</details>

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
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════════════════
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

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/platetools
* URL: https://github.com/swarchal/platetools
* BugReports: https://github.com/swarchal/platetools/issues
* Date/Publication: 2018-06-25 14:03:45 UTC
* Number of recursive dependencies: 42

Run `revdep_details(,"platetools")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("platetools")
      [31m──[39m [31m1. Error: missing_wells errors when expected (@test-missing_wells.R#20) [39m [31m────────────────────────[39m
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(missing_wells(as.list(full), well = full$well), expect_error(missing_wells(full, well = missing$wel))) at testthat/test-missing_wells.R:20
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...) at /private/tmp/RtmpNTipQD/R.INSTALLd5237e9155c/testthat/R/expect-output.R:130
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), encodeString(cond$message, 
             quote = "\"")) at /private/tmp/RtmpNTipQD/R.INSTALLd5237e9155c/testthat/R/expect-output.R:266
      4: encodeString(regexp, quote = "\"") at /private/tmp/RtmpNTipQD/R.INSTALLd5237e9155c/testthat/R/expect-output.R:266
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════════════════
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

# recount

<details>

* Version: 1.8.2
* Source code: https://github.com/cran/recount
* URL: https://github.com/leekgroup/recount
* BugReports: https://support.bioconductor.org/t/recount/
* Date/Publication: 2019-02-16
* Number of recursive dependencies: 157

Run `revdep_details(,"recount")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      downloaded 535 KB
      
      Loading objects:
        PredictedPhenotypes
      trying URL 'http://duffel.rail.bio/recount/v2/DRP000499/rse_gene.Rdata'
      Content type 'application/octet-stream' length 4636353 bytes (4.4 MB)
      ==================================================
      downloaded 4.4 MB
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 51 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-annotation.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

# rentrez

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/rentrez
* URL: http://github.com/ropensci/rentrez
* BugReports: https://github.com/ropensci/rentrez/issues
* Date/Publication: 2018-03-05 11:37:40 UTC
* Number of recursive dependencies: 32

Run `revdep_details(,"rentrez")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘rentrez-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: entrez_global_query
    > ### Title: Find the number of records that match a given term across all
    > ###   NCBI Entrez databases
    > ### Aliases: entrez_global_query
    > 
    > ### ** Examples
    > 
    > 
    > NCBI_data_on_best_butterflies_ever <- entrez_global_query(term="Heliconius")
    Error: HTTP failure: 429
    {"error":"API rate limit exceeded","api-key":"76.31.205.235","count":"4","limit":"3"}
    Execution halted
    ```

