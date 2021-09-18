# amber

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/amber
* Date/Publication: 2020-08-28 11:20:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "amber")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        3. raster::`projection<-`(`*tmp*`, value = regular)
        4. raster:::.getCRS(value)
        5. sp::CRS(x)
        6. rgdal::checkCRSArgs_ng(...)
       12. rgdal::showSRID(...)
      
      ── Error (???): Test scores.fluxnet.csv ────────────────────────────────────────
      Error in `as.double(y)`: cannot coerce type 'S4' to vector of type 'double'
      Backtrace:
       1. amber::scores.fluxnet.csv(...)
       3. graphics::plot.default(...)
       4. grDevices::xy.coords(x, y, xlabel, ylabel, log)
      
      Error: Test failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        extdata   8.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# bignum

<details>

* Version: 0.2.1
* GitHub: https://github.com/davidchall/bignum
* Source code: https://github.com/cran/bignum
* Date/Publication: 2021-06-17 07:40:06 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "bignum")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("bignum")
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (22)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-biginteger.R:153:3): difficult cases work ─────────────────────
      expect_warning(biginteger(c(1, 1e-10)), class = "bignum_warning_cast_lossy") (`actual`) not equal to biginteger(c("1", "0")) (`expected`).
      
      `actual` is an S3 object of class <bignum_warning_cast_lossy/vctrs_error_cast_lossy/warning/condition>, a list
      `expected` is an S3 object of class <bignum_biginteger/bignum_vctr/vctrs_vctr>, a character vector
      
      [ FAIL 1 | WARN 0 | SKIP 22 | PASS 459 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.0Mb
      sub-directories of 1Mb or more:
        libs  13.7Mb
    ```

# clock

<details>

* Version: 0.4.0
* GitHub: https://github.com/r-lib/clock
* Source code: https://github.com/cran/clock
* Date/Publication: 2021-07-22 19:00:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "clock")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$message` is a character vector ('Failed to parse 1 string at location 1. Returning `NA` at that location.')
      `expected$message` is absent
      
      `actual$trace` is an S3 object of class <rlang_trace>, a list
      `expected$trace` is absent
      
      `actual$ticks` is absent
      `expected$ticks` is an integer vector (NA)
      
      `actual$ticks_of_day` is absent
      `expected$ticks_of_day` is an integer vector (NA)
      
      [ FAIL 1 | WARN 0 | SKIP 221 | PASS 976 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 48.7Mb
      sub-directories of 1Mb or more:
        libs  47.1Mb
    ```

# crosstable

<details>

* Version: 0.2.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2021-03-08 09:20:02 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-1-crosstable.R:273:3): Multiple functions ───────────────────────
      Error: `object` and `expected` must both be vectors
      Backtrace:
          █
       1. └─testthat::expect_setequal(...)
      ── Error (test-1-crosstable.R:414:3): Testing everything ───────────────────────
      Error in `UseMethod("as_flextable")`: no applicable method for 'as_flextable' applied to an object of class "c('crosstable_effect_warning', 'warning', 'condition')"
      Backtrace:
          █
       1. └─flextable::as_flextable(x)
      
      [ FAIL 2 | WARN 0 | SKIP 14 | PASS 335 ]
      Error: Test failures
      Execution halted
    ```

# ebreg

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/ebreg
* Date/Publication: 2021-05-26 13:10:06 UTC
* Number of recursive dependencies: 46

Run `cloud_details(, "ebreg")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("ebreg")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test_ebproject.R:106:3): returned values have the right size ─────────
      Error in `chol.default(V)`: the leading minor of order 2 is not positive definite
      Backtrace:
          █
       1. └─ebreg::ebreg(...) test_ebproject.R:106:2
       2.   └─ebreg:::get.lm.stuff(S.new, y, X)
       3.     ├─base::chol(V)
       4.     └─base::chol.default(V)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 7 ]
      Error: Test failures
      Execution halted
    ```

# egor

<details>

* Version: 1.21.7
* GitHub: https://github.com/tilltnet/egor
* Source code: https://github.com/cran/egor
* Date/Publication: 2021-07-01 16:20:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "egor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       10. ├─dplyr::select(., -V1, -V2)
       11. ├─dplyr::left_join(., aaties, by = c(from = ".srcID", to = ".tgtID"))
       12. ├─dplyr::mutate(...)
       13. ├─dplyr:::mutate.data.frame(...)
       14. │ └─dplyr:::mutate_cols(.data, ..., caller_env = caller_env())
       15. │   ├─base::withCallingHandlers(...)
       16. │   └─mask$eval_all_mutate(quo)
       17. ├─base::factor(...)
       18. │ └─base::stop(...)
       19. └─base::.handleSimpleError(...)
       20.   └─dplyr:::h(simpleError(msg, call))
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 217 ]
      Error: Test failures
      Execution halted
    ```

# fundiversity

<details>

* Version: 0.2.0
* GitHub: https://github.com/Bisaloo/fundiversity
* Source code: https://github.com/cran/fundiversity
* Date/Publication: 2021-05-14 07:40:16 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "fundiversity")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > if (requireNamespace("testthat", quietly = TRUE)) {
      +   library(testthat)
      +   options(fundiversity.memoise = TRUE)
      +   test_check("fundiversity")
      + }
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-fric_intersect.R:80:3): Functional Richness Intersection edge cases ──
      expect_message(fd_fric_intersect(traits_birds[1:4, ], site_sp_birds)[["FRic_intersect"]])[c(1, 2, 3)] absent from NA_real_
      ── Failure (test-fric_intersect.R:80:3): Functional Richness Intersection edge cases ──
      NA_real_[1] absent from expect_message(fd_fric_intersect(traits_birds[1:4, ], site_sp_birds)[["FRic_intersect"]])
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 155 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘geometry’
      All declared Imports should be used.
    ```

# googleAnalyticsR

<details>

* Version: 1.0.0
* GitHub: https://github.com/MarkEdmondson1234/googleAnalyticsR
* Source code: https://github.com/cran/googleAnalyticsR
* Date/Publication: 2021-04-17 09:20:02 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "googleAnalyticsR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        1. └─testthat::test_check("googleAnalyticsR")
        2.   └─testthat::test_dir(...)
        3.     └─testthat:::test_files(...)
        4.       └─testthat:::test_files(...)
        5.         ├─testthat::with_reporter(...)
        6.         │ └─base::tryCatch(...)
        7.         │   └─base:::tryCatchList(expr, classes, parentenv, handlers)
        8.         │     └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
        9.         │       └─base:::doTryCatch(return(expr), name, parentenv, handler)
       10.         └─testthat:::parallel_event_loop_chunky(queue, reporters)
       11.           └─queue$poll(Inf)
       12.             └─base::lapply(...)
       13.               └─testthat:::FUN(X[[i]], ...)
       14.                 └─private$handle_error(msg, i)
      Execution halted
    ```

# gtfstools

<details>

* Version: 0.1.0
* GitHub: https://github.com/ipeaGIT/gtfstools
* Source code: https://github.com/cran/gtfstools
* Date/Publication: 2021-02-23 09:00:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "gtfstools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-read_gtfs.R:90:3): results in a gtfs object (if no parsing failure happens) ──
      Error: `.fn` must be a string, a symbol, a call, or a function
      Backtrace:
          █
       1. └─base::lapply(gtfs, expect_s3_class, "data.table") test-read_gtfs.R:90:2
       2.   └─testthat:::FUN(X[[i]], ...)
       3.     └─testthat::quasi_label(enquo(object), arg = "object")
       4.       ├─label %||% expr_label(expr)
       5.       └─testthat:::expr_label(expr)
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 463 ]
      Error: Test failures
      Execution halted
    ```

# hms

<details>

* Version: 1.1.0
* GitHub: https://github.com/tidyverse/hms
* Source code: https://github.com/cran/hms
* Date/Publication: 2021-05-17 17:20:15 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "hms")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          █
       1. └─hms:::expect_hms_equal(...) test-coercion-deprecated.R:4:2
       2.   └─testthat::expect_s3_class(x, "hms") helper-compare.R:2:2
      ── Error (test-coercion-deprecated.R:4:3): coercion in ─────────────────────────
      Error in `eval_bare(expr, quo_get_env(quo))`: 'list' object cannot be coerced to type 'double'
      Backtrace:
          █
       1. └─hms:::expect_hms_equal(...) test-coercion-deprecated.R:4:2
       2.   └─testthat::expect_equal(as.numeric(x), as.numeric(y)) helper-compare.R:4:2
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 4 | WARN 0 | SKIP 1 | PASS 197 ]
      Error: Test failures
      Execution halted
    ```

# htmltools

<details>

* Version: 0.5.2
* GitHub: https://github.com/rstudio/htmltools
* Source code: https://github.com/cran/htmltools
* Date/Publication: 2021-08-25 13:50:02 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "htmltools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-deps.r:232:3): able to resolve HTML scripts supplied with & without integrity ──
      Error: `.fn` must be a string, a symbol, a call, or a function
      Backtrace:
          █
       1. └─testthat::expect_equal(...) test-deps.r:232:2
       2.   └─testthat::quasi_label(enquo(object), label, arg = "object")
       3.     ├─label %||% expr_label(expr)
       4.     └─testthat:::expr_label(expr)
       5.       └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 2020 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘knitr’
    ```

# httptest

<details>

* Version: 4.0.0
* GitHub: https://github.com/nealrichardson/httptest
* Source code: https://github.com/cran/httptest
* Date/Publication: 2021-02-01 06:10:04 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "httptest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (8)
      • TODO: handle URL escaping (1)
      • TODO: prettify when simplify=FALSE (1)
      • third_edition is TRUE (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-fake-http.R:118:3): fake_request gets covered directly (not just in tracer) ──
      expect_message(...) inherits from 'simpleMessage'/'message'/'condition' not 'response'.
      ── Failure (test-fake-http.R:125:3): fake_request gets covered directly (not just in tracer) ──
      expect_message(...) inherits from 'simpleMessage'/'message'/'condition' not 'response'.
      
      [ FAIL 2 | WARN 0 | SKIP 12 | PASS 286 ]
      Error: Test failures
      Execution halted
    ```

# InterfaceqPCR

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/InterfaceqPCR
* Date/Publication: 2017-04-01 06:30:13 UTC
* Number of recursive dependencies: 40

Run `cloud_details(, "InterfaceqPCR")` for more info

</details>

## Newly broken

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
      Warning: loading Rplot failed
    See ‘/tmp/workdir/InterfaceqPCR/new/InterfaceqPCR.Rcheck/00install.out’ for details.
    ```

# lifecycle

<details>

* Version: 1.0.0
* GitHub: https://github.com/r-lib/lifecycle
* Source code: https://github.com/cran/lifecycle
* Date/Publication: 2021-02-15 15:20:06 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "lifecycle")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘lifecycle-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: verbosity
    > ### Title: Control the verbosity of deprecation signals
    > ### Aliases: verbosity
    > 
    > ### ** Examples
    > 
    > if (rlang::is_installed("testthat")) {
    ...
    
    ── Failure (???): mytool is deprecated ─────────────────────────────────────────
    `mytool()` did not throw the expected error.
    Backtrace:
     1. rlang::with_options(...)
     2. testthat::expect_error(mytool(), class = "defunctError")
     3. testthat:::expect_condition_matching(...)
    
    Error: Test failed
    Execution halted
    ```

# param6

<details>

* Version: 0.2.1
* GitHub: https://github.com/xoopR/param6
* Source code: https://github.com/cran/param6
* Date/Publication: 2021-07-29 08:50:05 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "param6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a logical vector (FALSE)
      ── Failure (test-paramset.R:119:3): ParamSet actives - values ──────────────────
      expect_warning(...) is not FALSE
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a logical vector (FALSE)
      ── Failure (test-paramset.R:124:3): ParamSet actives - values ──────────────────
      expect_warning(...) is not FALSE
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is a logical vector (FALSE)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 362 ]
      Error: Test failures
      Execution halted
    ```

# pavo

<details>

* Version: 2.7.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2021-03-23 11:40:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "pavo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in `seq_len(nrow(rspecdata))`: argument must be coercible to non-negative integer
      Backtrace:
          █
       1. ├─testthat::expect_error(vismodel(flowers_NIR), "wavelength range") test-vismodel.R:33:2
       2. │ └─testthat:::expect_condition_matching(...)
       3. │   └─testthat:::quasi_capture(...)
       4. │     ├─testthat:::.capture(...)
       5. │     │ └─base::withCallingHandlers(...)
       6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       7. └─pavo::vismodel(flowers_NIR)
       8.   └─pavo:::isolate_wl(rspecdata, keep = "wl")
      
      [ FAIL 18 | WARN 39 | SKIP 7 | PASS 370 ]
      Error: Test failures
      Execution halted
    ```

# r2dii.match

<details>

* Version: 0.0.10
* GitHub: https://github.com/2DegreesInvesting/r2dii.match
* Source code: https://github.com/cran/r2dii.match
* Date/Publication: 2021-06-29 21:00:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "r2dii.match")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("r2dii.match")
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (6)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-match_name.R:47:3): w/ missing values at all levels outputs 0-row ──
      nrow(out) (`actual`) not equal to 0L (`expected`).
      
      `actual` is NULL
      `expected` is an integer vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 169 ]
      Error: Test failures
      Execution halted
    ```

# rbedrock

<details>

* Version: 0.1.1
* GitHub: https://github.com/reedacartwright/rbedrock
* Source code: https://github.com/cran/rbedrock
* Date/Publication: 2021-09-11 23:40:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "rbedrock")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(rbedrock)
      > 
      > test_check("rbedrock")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_entities.R:36:5): put_entities_data writes Entities data ──────
      `dat` not equal to `dat2`.
      Component "@10:0:0:50": Component 4: Component 4: Component 4: Component 2: Modes: logical, numeric
      Component "@10:0:0:50": Component 4: Component 4: Component 4: Component 2: Attributes: < target is NULL, current is list >
      Component "@10:0:0:50": Component 4: Component 4: Component 4: Component 2: target is logical, current is rbedrock_nbt
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 431 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   6.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# readr

<details>

* Version: 2.0.1
* GitHub: https://github.com/tidyverse/readr
* Source code: https://github.com/cran/readr
* Date/Publication: 2021-08-10 15:40:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "readr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘first_edition.R’
      Running ‘second_edition.R’
    Running the tests in ‘tests/second_edition.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (7)
      • edition_first() is not TRUE (14)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-read-lines.R:15:3): read_lines handles embedded nuls ──────────
      `res` (`actual`) not equal to c("a,b,c", "1,2,", "3,4,5") (`expected`).
      
      `actual` is an S3 object of class <vroom_parse_issue/warning/condition>, a list
      `expected` is a character vector ('a,b,c', '1,2,', '3,4,5')
      
      [ FAIL 1 | WARN 0 | SKIP 21 | PASS 731 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        libs   9.4Mb
    ```

# remotes

<details>

* Version: 2.4.0
* GitHub: https://github.com/r-lib/remotes
* Source code: https://github.com/cran/remotes
* Date/Publication: 2021-06-02 18:20:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "remotes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-parse-git.R:125:5): parse_repo_spec, github ─────────────────────
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─remotes:::expect_equal_named_lists(...) test-parse-git.R:125:4
       2.   └─testthat::expect_equal(!!object, !!expected) helper.R:30:2
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       ├─label %||% expr_label(expr)
       5.       └─testthat:::expr_label(expr)
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 1 | WARN 0 | SKIP 77 | PASS 412 ]
      Error: Test failures
      Execution halted
    ```

# rlang

<details>

* Version: 0.4.11
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2021-04-30 23:20:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-quo.R:288:3): as_quosure() still provides default env ───────────
      Error: `quo` must be a quosure
      Backtrace:
          █
       1. ├─rlang:::expect_reference(quo_get_env(quo), current_env()) test-quo.R:288:2
       2. │ ├─testthat::expect_true(is_reference(object, expected)) helper-rlang.R:70:2
       3. │ │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       4. │ │   └─rlang::eval_bare(expr, quo_get_env(quo))
       5. │ └─rlang::is_reference(object, expected)
       6. └─rlang::quo_get_env(quo)
      
      [ FAIL 1 | WARN 2 | SKIP 56 | PASS 2721 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 125.0Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.8Mb
    ```

## Newly fixed

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/old/RNiftyReg.Rcheck/00install.out’ for details.
    ```

# SDraw

<details>

* Version: 2.1.13
* GitHub: https://github.com/tmcd82070/SDraw
* Source code: https://github.com/cran/SDraw
* Date/Publication: 2020-07-03 16:20:09 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "SDraw")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        error: cannot popen '/usr/bin/which 'uname' 2>/dev/null', probable reason 'Cannot allocate memory'
       running command 'uname -a' had status 139
       internal error -3 in R_decompress1
      2: package ‘utils’ in options("defaultPackages") was not found 
      3: package ‘grDevices’ in options("defaultPackages") was not found 
      4: package ‘graphics’ in options("defaultPackages") was not found 
      4: 5: In get(Info[i, 1], envir = env) :In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      5: package ‘graphics’ in options("defaultPackages") was not found 
       internal error -3 in R_decompress1
      6: package ‘stats’ in options("defaultPackages") was not found 
      6: In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      7: package ‘stats’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘graphics’ in get(Info[i, 1], envir = env):
       lazy-load database '/opt/R/4.0.3/lib/R/library/grDevices/R/grDevices.rdb' is corrupt
      Killed
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘covr’
      All declared Imports should be used.
    ```

# shinymeta

<details>

* Version: 0.2.0.1
* GitHub: https://github.com/rstudio/shinymeta
* Source code: https://github.com/cran/shinymeta
* Date/Publication: 2021-06-15 15:20:02 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "shinymeta")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        8.       │   │ └─domain$wrapSync(expr)
        9.       │   ├─shiny::withReactiveDomain(...)
       10.       │   │ └─promises::with_promise_domain(...)
       11.       │   │   └─domain$wrapSync(expr)
       12.       │   │     └─base::force(expr)
       13.       │   └─env$runWith(self, func)
       14.       │     └─shiny:::contextFunc()
       15.       │       └─shiny::..stacktraceon..(expr)
       16.       └─testthat::expect_equal(...) test-comments.R:192:2
      
      [ FAIL 4 | WARN 22 | SKIP 4 | PASS 201 ]
      Deleting unused snapshots:
      * report/template.Rmd
      Error: Test failures
      Execution halted
    ```

# statgenGxE

<details>

* Version: 1.0.4
* GitHub: https://github.com/Biometris/statgenGxE
* Source code: https://github.com/cran/statgenGxE
* Date/Publication: 2021-01-07 16:20:03 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "statgenGxE")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      ── Error (test-plots.R:376:3): stability plot gives correct output types ───────
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─base::lapply(X = p1, FUN = expect_is, "ggplot") test-plots.R:376:2
       2.   └─testthat:::FUN(X[[i]], ...)
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       ├─label %||% expr_label(expr)
       5.       └─testthat:::expr_label(expr)
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 2 | WARN 37 | SKIP 16 | PASS 435 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘asreml’
    ```

# statgenSTA

<details>

* Version: 1.0.8
* GitHub: https://github.com/Biometris/statgenSTA
* Source code: https://github.com/cran/statgenSTA
* Date/Publication: 2021-05-25 11:30:03 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "statgenSTA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      ── Error (test-STAplots.R:50:3): STA spatial plot gives correct output types ───
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─base::lapply(X = p1[[1]][[1]], FUN = expect_is, "ggplot") test-STAplots.R:50:2
       2.   └─testthat:::FUN(X[[i]], ...)
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       4.       ├─label %||% expr_label(expr)
       5.       └─testthat:::expr_label(expr)
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 2 | WARN 0 | SKIP 6 | PASS 771 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘asreml’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mapproj’
      All declared Imports should be used.
    ```

# taylor

<details>

* Version: 0.2.0
* GitHub: https://github.com/wjakethompson/taylor
* Source code: https://github.com/cran/taylor
* Date/Publication: 2021-08-17 08:00:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "taylor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      * ggplot2-color-scales/red-fill-d.svg
      * ggplot2-color-scales/reputation-color-b.svg
      * ggplot2-color-scales/reputation-color-c.svg
      * ggplot2-color-scales/reputation-color-d.svg
      * ggplot2-color-scales/reputation-fill-b.svg
      * ggplot2-color-scales/reputation-fill-c.svg
      * ggplot2-color-scales/reputation-fill-d.svg
      * ggplot2-color-scales/speak-now-color-b.svg
      * ggplot2-color-scales/speak-now-color-c.svg
      * ggplot2-color-scales/speak-now-color-d.svg
      * ggplot2-color-scales/speak-now-fill-b.svg
      * ggplot2-color-scales/speak-now-fill-c.svg
      * ggplot2-color-scales/speak-now-fill-d.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 594 marked UTF-8 strings
    ```

# term

<details>

* Version: 0.3.2
* GitHub: https://github.com/poissonconsulting/term
* Source code: https://github.com/cran/term
* Date/Publication: 2021-09-06 14:50:02 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "term")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-npars.R:31:3): npars.term invalid elements ────────────────────
      expect_warning(npars(new_term(c("a[2]", "b c")))) (`actual`) not identical to 2L (`expected`).
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is an integer vector (2)
      ── Failure (test-npars.R:45:3): npars.term scalar invalid elements ─────────────
      expect_warning(npars(new_term(c("a[2]", "b c")), scalar = TRUE)) (`actual`) not identical to 1L (`expected`).
      
      `actual` is an S3 object of class <simpleWarning/warning/condition>, a list
      `expected` is an integer vector (1)
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 544 ]
      Error: Test failures
      Execution halted
    ```

# tidyr

<details>

* Version: 1.1.3
* GitHub: https://github.com/tidyverse/tidyr
* Source code: https://github.com/cran/tidyr
* Date/Publication: 2021-03-03 09:20:06 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "tidyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Names of `out` ('message', 'trace', 'internal') don't match 'x_x', 'y_x'
      ── Failure (test-nest.R:299:3): unnest has mutate semantics ────────────────────
      out$z (`actual`) not equal to 2:5 (`expected`).
      
      `actual` is NULL
      `expected` is an integer vector (2, 3, 4, 5)
      ── Failure (test-nest.R:314:3): .id creates vector of names for vector unnest ──
      out$name (`actual`) not equal to c("a", "b", "b") (`expected`).
      
      `actual` is NULL
      `expected` is a character vector ('a', 'b', 'b')
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 645 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# Tplyr

<details>

* Version: 0.4.1
* GitHub: https://github.com/atorus-research/Tplyr
* Source code: https://github.com/cran/Tplyr
* Date/Publication: 2021-07-13 16:20:02 UTC
* Number of recursive dependencies: 116

Run `cloud_details(, "Tplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Error (test-get_numeric.R:145:3): Multiple layers gives a list of statistics data in a list for those layers ──
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─purrr::walk(dat_list, expect_type, type = "list") test-get_numeric.R:145:2
       2.   └─purrr::map(.x, .f, ...)
       3.     └─testthat:::.f(.x[[i]], ...)
       4.       └─testthat::quasi_label(enquo(object), arg = "object")
       5.         ├─label %||% expr_label(expr)
       6.         └─testthat:::expr_label(expr)
       7.           └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 668 ]
      Error: Test failures
      Execution halted
    ```

# TreeTools

<details>

* Version: 1.5.0
* GitHub: https://github.com/ms609/TreeTools
* Source code: https://github.com/cran/TreeTools
* Date/Publication: 2021-09-08 08:00:07 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "TreeTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual`:   FALSE
      `expected`: TRUE 
      ── Failure (test-tree_rearrange.R:296:3): KeepTip() works ──────────────────────
      all.equal(...) is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 4 | WARN 0 | SKIP 3 | PASS 2503 ]
      Deleting unused snapshots:
      * Support/labelsplits-names.svg
      * Support/labelsplits.svg
      * mst/mst-plotting.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

# tsna

<details>

* Version: 0.3.3
* GitHub: NA
* Source code: https://github.com/cran/tsna
* Date/Publication: 2021-04-23 19:50:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "tsna")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘degree_tests.R’
      Running ‘density_tests.R’
      Running ‘durations_tests.R’
      Running ‘fromDissTests.R’
      Running ‘pShift_tests.R’
      Running ‘path_tests.R’
      Running ‘reachable_tests.R’
      Running ‘statsWrapper_tests.R’
    Running the tests in ‘tests/statsWrapper_tests.R’ failed.
    Last 13 lines of output:
    ...
        6. tsna::tErgmStats(moodyContactSim, "foo")
        7. base::lapply(...)
        8. tsna:::FUN(X[[i]], ...)
       10. ergm:::summary_formula.network(as.formula(paste("net", formula)))
       11. ergm::ergm_model(object, basis, ...)
       12. ergm::call.ErgmTerm(...)
       13. statnet.common::locate_prefixed_function(...)
      
      Error: Test failed
      Execution halted
    ```

# vctrs

<details>

* Version: 0.3.8
* GitHub: https://github.com/r-lib/vctrs
* Source code: https://github.com/cran/vctrs
* Date/Publication: 2021-04-29 16:00:03 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "vctrs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-type-data-frame.R:142:3): warn about lossy coercions ────────────
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─vctrs:::expect_lossy(...) test-type-data-frame.R:142:2
       2.   └─vctrs:::expect_identical(!!out, !!result) helper-expectations.R:11:2
       3.     └─testthat::quasi_label(enquo(object), label, arg = "object") helper-vctrs.R:52:2
       4.       ├─label %||% expr_label(expr)
       5.       └─testthat:::expr_label(expr)
       6.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 1 | WARN 0 | SKIP 34 | PASS 4129 ]
      Error: Test failures
      Execution halted
    ```

# vegawidget

<details>

* Version: 0.3.2
* GitHub: https://github.com/vegawidget/vegawidget
* Source code: https://github.com/cran/vegawidget
* Date/Publication: 2021-01-12 08:40:08 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "vegawidget")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$message` is a character vector ('Spec has no `$schema` element, adding `$schema` element for Vega-Lite major-version')
      `expected$message` is absent
      
      `actual$call` is a call
      `expected$call` is absent
      
      `actual$trace` is an S3 object of class <rlang_trace>, a list
      `expected$trace` is absent
      
      `actual$$schema` is absent
      `expected$$schema` is a character vector ('https://vega.github.io/schema/vega-lite/v4.json')
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 71 ]
      Error: Test failures
      Execution halted
    ```

# wk

<details>

* Version: 0.5.0
* GitHub: https://github.com/paleolimbot/wk
* Source code: https://github.com/cran/wk
* Date/Publication: 2021-07-13 04:50:02 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "wk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("wk")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-compat-vctrs.R:205:5): vec_c() propagates the crs attribute ─────
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─testthat::expect_identical(...) test-compat-vctrs.R:205:4
       2.   └─testthat::quasi_label(enquo(expected), expected.label, arg = "expected")
       3.     ├─label %||% expr_label(expr)
       4.     └─testthat:::expr_label(expr)
       5.       └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 960 ]
      Error: Test failures
      Execution halted
    ```

# zeallot

<details>

* Version: 0.1.0
* GitHub: https://github.com/nteetor/zeallot
* Source code: https://github.com/cran/zeallot
* Date/Publication: 2018-01-28 16:14:13 UTC
* Number of recursive dependencies: 44

Run `cloud_details(, "zeallot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error: Can't create call to non-callable object
      Backtrace:
          █
       1. └─zeallot:::expect_equalish(...) test-pair-off.R:77:2
       2.   ├─base::eval(bquote(expect_equal(.(object), .(expected), check.attributes = FALSE))) test-pair-off.R:4:2
       3.   │ └─base::eval(bquote(expect_equal(.(object), .(expected), check.attributes = FALSE)))
       4.   └─testthat::expect_equal(...)
       5.     └─testthat::quasi_label(enquo(object), label, arg = "object")
       6.       ├─label %||% expr_label(expr)
       7.       └─testthat:::expr_label(expr)
       8.         └─rlang::call2(x[[1]], quote(expr = ...))
      
      [ FAIL 7 | WARN 0 | SKIP 1 | PASS 141 ]
      Error: Test failures
      Execution halted
    ```

