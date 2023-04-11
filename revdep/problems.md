# bookdown

<details>

* Version: 0.33
* GitHub: https://github.com/rstudio/bookdown
* Source code: https://github.com/cran/bookdown
* Date/Publication: 2023-03-06 23:50:02 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::cloud_details(, "bookdown")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
      Running ‘test-rmd.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (9)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-bs4_book.R:4:1'): (code run outside of `test_that()`) ──────────
    ...
      Error in `vapply(bs4_book_deps(), skip_if_not_installed, logical(1L), USE.NAMES = FALSE)`: values must be length 1,
       but FUN(X[[1]]) result is length 0
      Backtrace:
          ▆
       1. └─bookdown:::skip_if_bs4_book_deps_missing() at test-bs4_book.R:4:0
       2.   └─base::vapply(...) at tests/testthat/helper-bs4_book.R:4:2
      
      [ FAIL 1 | WARN 0 | SKIP 9 | PASS 57 ]
      Error: Test failures
      Execution halted
    ```

# crosstable

<details>

* Version: 0.6.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2023-04-04 15:50:05 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (35)
      • On Linux (12)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-by_factor.R:290:3'): By multiple errors ──────────────────────
      `.` did not throw the expected error.
      Backtrace:
          ▆
       1. ├─... %>% expect_error(class = "crosstable_all_na_by_warning") at test-by_factor.R:290:2
       2. └─testthat::expect_error(., class = "crosstable_all_na_by_warning")
      
      [ FAIL 1 | WARN 2 | SKIP 47 | PASS 329 ]
      Error: Test failures
      Execution halted
    ```

# extras

<details>

* Version: 0.5.0
* GitHub: https://github.com/poissonconsulting/extras
* Source code: https://github.com/cran/extras
* Date/Publication: 2022-10-30 04:20:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "extras")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-bern.R:47:3'): rbern ───────────────────────────────────────────
      Error in `expect_error(rbern(NA, 1), NA_real_)`: `pattern` must be a single string, `NA`, or `NULL`, not a numeric `NA`.
      Backtrace:
          ▆
       1. └─testthat::expect_error(...) at test-bern.R:47:2
       2.   └─testthat:::expect_condition_matching(...)
       3.     └─testthat:::cnd_matcher(...)
       4.       └─testthat:::check_string(...)
       5.         └─testthat:::stop_input_type(...)
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1002 ]
      Error: Test failures
      Execution halted
    ```

# fs

<details>

* Version: 1.6.1
* GitHub: https://github.com/r-lib/fs
* Source code: https://github.com/cran/fs
* Date/Publication: 2023-02-06 21:22:33 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::cloud_details(, "fs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       3. └─testthat::expect_equal(colourise_fs_path("file.R"), "\033[32mfile.R\033[0m") at test-fs_path.R:54:6
      ── Failure ('test-fs_path.R:32:5'): colourise_fs_path: returns an appropriately colored fs_path object ──
      colourise_fs_path("file.Rmd") (`actual`) not equal to "\033[32mfile.Rmd\033[0m" (`expected`).
      
      `actual`:   "file.Rmd"               
      `expected`: "\033[32mfile.Rmd\033[0m"
      Backtrace:
          ▆
       1. ├─fs:::with_dir_tree(...) at test-fs_path.R:32:4
       2. │ └─base::force(code) at tests/testthat/helper.R:22:2
       3. └─testthat::expect_equal(colourise_fs_path("file.Rmd"), "\033[32mfile.Rmd\033[0m") at test-fs_path.R:57:6
      
      [ FAIL 5 | WARN 0 | SKIP 9 | PASS 3454 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# gfpop

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/gfpop
* Date/Publication: 2023-03-27 09:30:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::cloud_details(, "gfpop")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        - Use `usethis::create_github_token()` to create a Personal Access Token.
        - Use `usethis::edit_r_environ()` and add the token as `GITHUB_PAT`.
      Backtrace:
          ▆
       1. └─devtools::install_github("vrunge/gfpop.data") at test-sn.R:3:0
       2.   ├─pkgbuild::with_build_tools(...)
       3.   └─remotes:::install_remotes(...)
       4.     └─base::tryCatch(...)
       5.       └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       6.         └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       7.           └─value[[3L]](cond)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 40 ]
      Error: Test failures
      Execution halted
    ```

# gh

<details>

* Version: 1.4.0
* GitHub: https://github.com/r-lib/gh
* Source code: https://github.com/cran/gh
* Date/Publication: 2023-02-22 20:20:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::cloud_details(, "gh")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in `gh("GET /repos/{owner}/{repo}/contents/{path}", owner = "r-lib", 
          repo = "gh", path = "LICENSE", ref = "v1.2.0", ...)`: GitHub API error (403): API rate limit exceeded for 50.16.151.69. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)
      i Read more at <https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting>
      Backtrace:
          ▆
       1. └─gh (local) get_license() at test-print.R:13:2
       2.   └─gh::gh(...) at test-print.R:3:4
       3.     └─gh:::gh_make_request(req)
       4.       └─gh:::gh_error(resp, error_call = error_call)
       5.         └─cli::cli_abort(...)
       6.           └─rlang::abort(...)
      
      [ FAIL 3 | WARN 0 | SKIP 16 | PASS 116 ]
      Error: Test failures
      Execution halted
    ```

# lightgbm

<details>

* Version: 3.3.5
* GitHub: https://github.com/Microsoft/LightGBM
* Source code: https://github.com/cran/lightgbm
* Date/Publication: 2023-01-16 19:00:07 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "lightgbm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      71. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      72. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      73. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      ══ Failed ══════════════════════════════════════════════════════════════════════
      ── 1. Failure ('test_lgb.Booster.R:474:7'): Booster$eval() should work on a Data
      `eval_in_mem` not identical to `eval_from_file`.
      Objects equal but not identical
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 82.4Mb
      sub-directories of 1Mb or more:
        libs  81.8Mb
    ```

# mpathsenser

<details>

* Version: 1.1.3
* GitHub: NA
* Source code: https://github.com/cran/mpathsenser
* Date/Publication: 2023-02-07 14:12:31 UTC
* Number of recursive dependencies: 108

Run `revdepcheck::cloud_details(, "mpathsenser")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          ▆
       1. └─mpathsenser::geocode_rev(data$lat, data$lon, email = "koen.niemeijer@kuleuven.be") at test-location_functions.R:100:2
       2.   └─base::lapply(...)
       3.     └─mpathsenser (local) FUN(X[[i]], ...)
       4.       └─jsonlite::fromJSON(x)
       5.         └─jsonlite:::parse_and_simplify(...)
       6.           └─jsonlite:::parseJSON(txt, bigint_as_char)
       7.             └─jsonlite:::parse_con(txt, bigint_as_char)
       8.               ├─base::open(con, "rb")
       9.               └─base::open.connection(con, "rb")
      
      [ FAIL 1 | WARN 54 | SKIP 0 | PASS 474 ]
      Error: Test failures
      Execution halted
    ```

# PKNCA

<details>

* Version: 0.10.1
* GitHub: https://github.com/billdenney/pknca
* Source code: https://github.com/cran/PKNCA
* Date/Publication: 2023-01-11 10:23:28 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "PKNCA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
          filter
      
      > 
      > test_check("PKNCA")
      Found column named duration, using it for the attribute of the same name.
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-class-PKNCAdose.R:443:3'): setDuration ───────────────────────
      `expect_error(...)` did not throw the expected warning.
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      Error: Test failures
      Execution halted
    ```

# rlang

<details>

* Version: 1.1.0
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2023-03-14 08:20:06 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        7. └─rlang (local) f(foo)
        8.   └─rlang::check_dots_empty(error = hnd) at test-dots-ellipsis.R:95:7
        9.     └─rlang:::action_dots(...)
       10.       ├─rlang (local) try_dots(...)
       11.       │ └─rlang::try_fetch(expr, error = error)
       12.       │   ├─base::tryCatch(...)
       13.       │   │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       14.       │   │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       15.       │   │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
       16.       │   └─base::withCallingHandlers(...)
       17.       └─rlang (local) action(...)
      
      [ FAIL 1 | WARN 2 | SKIP 249 | PASS 3869 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# rtry

<details>

* Version: 1.0.0
* GitHub: https://github.com/MPI-BGC-Functional-Biogeography/rtry
* Source code: https://github.com/cran/rtry
* Date/Publication: 2022-01-17 09:02:42 UTC
* Number of recursive dependencies: 58

Run `revdepcheck::cloud_details(, "rtry")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(rtry)
      > 
      > test_check("rtry")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 92 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-geocoding.R:10:3'): basic test ─────────────────────────────────
      Error in `rtry_geocoding(input_address, "john.doe@example.com")`: object 'geocode' not found
      Backtrace:
          ▆
       1. └─rtry::rtry_geocoding(input_address, "john.doe@example.com") at test-geocoding.R:10:2
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 92 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘rtry-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: rtry_revgeocoding
    > ### Title: Perform reverse geocoding
    > ### Aliases: rtry_revgeocoding
    > 
    > ### ** Examples
    > 
    > # Convert the coordinates of MPI-BGC (50.91012, 11.56674) into an address
    > # Note: Please change to your own email address when executing this function
    > rtry_revgeocoding(data.frame(50.91012, 11.56674),
    +   email = "john.doe@example.com")
    Warning in open.connection(con, "rb") :
      cannot open URL 'https://nominatim.openstreetmap.org/reverse?format=json&lat=50.91012&lon=11.56674&accept-language=en&addressdetails=1&zoom=10&email=john.doe@example.com': HTTP status was '502 Bad Gateway'
    Error in rtry_revgeocoding(data.frame(50.91012, 11.56674), email = "john.doe@example.com") : 
      object 'rev_geocode' not found
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2023 marked Latin-1 strings
      Note: found 17 marked UTF-8 strings
    ```

# tidyquant

<details>

* Version: 1.0.7
* GitHub: https://github.com/business-science/tidyquant
* Source code: https://github.com/cran/tidyquant
* Date/Publication: 2023-03-31 20:40:02 UTC
* Number of recursive dependencies: 178

Run `revdepcheck::cloud_details(, "tidyquant")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘tidyquant-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: tq_mutate
    > ### Title: Mutates quantitative data
    > ### Aliases: tq_mutate tq_mutate_ tq_mutate_xy tq_mutate_xy_
    > ###   tq_mutate_fun_options tq_transmute tq_transmute_ tq_transmute_xy
    > ###   tq_transmute_xy_ tq_transmute_fun_options
    > 
    > ### ** Examples
    ...
    > # Example 3: Using tq_mutate to work with non-OHLC data
    > tq_get("DCOILWTICO", get = "economic.data") %>%
    +     tq_mutate(select = price, mutate_fun = lag.xts, k = 1, na.pad = TRUE)
    Warning: x = 'DCOILWTICO', get = 'economic.data': Error in getSymbols.FRED(Symbols = "DCOILWTICO", env = <environment>, : Unable to import “DCOILWTICO”.
    HTTP error 503.
    
    Error in tq_mutate_.default(data = data, select = lazyeval::expr_text(select),  : 
      data must be a tibble or data.frame object
    Calls: %>% -> tq_mutate -> tq_mutate_ -> tq_mutate_.default
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyverse’
      All declared Imports should be used.
    ```

