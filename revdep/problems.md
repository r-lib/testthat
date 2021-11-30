# aopdata

<details>

* Version: 0.2.2
* GitHub: https://github.com/ipeaGIT/aopdata
* Source code: https://github.com/cran/aopdata
* Date/Publication: 2021-04-30 08:50:23 UTC
* Number of recursive dependencies: 118

Run `cloud_details(, "aopdata")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘access_inequality.Rmd’ using rmarkdown
    Linking to GEOS 3.8.0, GDAL 3.0.4, PROJ 6.3.1
    udunits database from /usr/share/xml/udunits/udunits2.xml
    Using year 2019
    Using mode public_transport
    Using year 2019
    Using year 2010
    --- finished re-building ‘access_inequality.Rmd’
    
    ...
    Problem connecting to data server. Please try aopdata again in a few minutes.
    Using year 2019
    Using year 2010
    --- finished re-building ‘landuse_maps.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘access_maps.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# appler

<details>

* Version: 0.1.2
* GitHub: https://github.com/ashbaldry/appler
* Source code: https://github.com/cran/appler
* Date/Publication: 2021-10-21 18:20:02 UTC
* Number of recursive dependencies: 42

Run `cloud_details(, "appler")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(appler)
      > 
      > test_check("appler")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-review.R:35:3): Non-existent ID returns `NULL` ──────────────────
      <http_503/http_500/http_error/error/condition>
      Error in `get_apple_reviews(1, "gb")`: Service Unavailable (HTTP 503).
      Backtrace:
          █
       1. └─appler::get_apple_reviews(1, "gb") test-review.R:35:2
       2.   └─httr::stop_for_status(req)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 35 ]
      Error: Test failures
      Execution halted
    ```

# GPvecchia

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/GPvecchia
* Date/Publication: 2020-04-22 14:22:14 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "GPvecchia")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘GPvecchia_vignette.Rmd’ using rmarkdown
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    
     *** caught segfault ***
    address (nil), cause 'memory not mapped'
    ...
    26: doTryCatch(return(expr), name, parentenv, handler)
    27: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    28: tryCatchList(expr, classes, parentenv, handlers)
    29: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = "weave", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = "texi2pdf",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf("Error: processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)))})
    30: tools:::buildVignettes(dir = "/tmp/workdir/GPvecchia/new/GPvecchia.Rcheck/vign_test/GPvecchia",     ser_elibs = "/tmp/RtmpflFQUy/file86bf46b1814.rds")
    An irrecoverable exception occurred. R is aborting now ...
    
     *** caught segfault ***
    address (nil), cause 'memory not mapped'
    Segmentation fault (core dumped)
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        libs   9.2Mb
    ```

# RFCCA

<details>

* Version: 1.0.7
* GitHub: https://github.com/calakus/RFCCA
* Source code: https://github.com/cran/RFCCA
* Date/Publication: 2021-11-25 05:30:06 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "RFCCA")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘RFCCA.Rmd’ using rmarkdown
    
     RFCCA 1.0.7
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    
     *** caught segfault ***
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    ...
    address (nil), cause 'memory not mapped'
    
     *** caught segfault ***
    address (nil), cause 'memory not mapped'
    BLAS : Program is Terminated. Because you tried to allocate too many memory regions.
    Warning: stack imbalance in 'lazyLoadDBfetch', 65 then 59
    
     *** caught segfault ***
    address (nil), cause 'memory not mapped'
    Warning: stack imbalance in 'options', 51 then 54
    ```

