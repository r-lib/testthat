# ATbounds

<details>

* Version: 0.1.0
* GitHub: https://github.com/ATbounds/ATbounds-r
* Source code: https://github.com/cran/ATbounds
* Date/Publication: 2021-11-24 19:00:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "ATbounds")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘ATbounds_vignette.Rmd’ using rmarkdown
    Quitting from lines 43-51 (ATbounds_vignette.Rmd) 
    Error: processing vignette 'ATbounds_vignette.Rmd' failed with diagnostics:
    cannot open the connection to 'http://users.nber.org/~rdehejia/data/nsw_control.txt'
    --- failed re-building ‘ATbounds_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘ATbounds_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cli

<details>

* Version: 3.1.0
* GitHub: https://github.com/r-lib/cli
* Source code: https://github.com/cran/cli
* Date/Publication: 2021-10-27 14:50:06 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "cli")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      style_reset(st("foo"), "foo") %in% ok is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      ── Failure (test-ansi.R:53:3): Variable number of arguments ────────────────────
      c(col_red("foo", "bar")) (`actual`) not equal to "\033[31mfoobar\033[39m" (`expected`).
      
      `actual`:   "foobar"                
      `expected`: "\033[31mfoobar\033[39m"
      
      [ FAIL 9 | WARN 0 | SKIP 328 | PASS 1345 ]
      Deleting unused snapshots:
      * utf8/utf8-output.txt
      Error: Test failures
      Execution halted
    ```

# crosstable

<details>

* Version: 0.3.2
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2021-11-27 20:00:02 UTC
* Number of recursive dependencies: 114

Run `cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `.` produced warnings.
      Backtrace:
          █
       1. ├─`%>%`(...)
       2. └─testthat::expect_silent(.)
      ── Failure (test-selection.R:57:5): crosstable with external character vector ──
      `.` produced warnings.
      Backtrace:
          █
       1. ├─`%>%`(...)
       2. └─testthat::expect_silent(.)
      
      [ FAIL 2 | WARN 274 | SKIP 20 | PASS 324 ]
      Error: Test failures
      Execution halted
    ```

# khroma

<details>

* Version: 1.7.0
* GitHub: https://github.com/tesselle/khroma
* Source code: https://github.com/cran/khroma
* Date/Publication: 2021-09-02 14:50:24 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "khroma")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-colour.R:137:3): Print with crayon ────────────────────────────
      crayon::has_style(col) is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 779 ]
      Deleting unused snapshots:
      * plot/scheme-muted-falsefalse.svg
      * plot/scheme-muted-falsetrue.svg
      * plot/scheme-muted-truefalse.svg
      Error: Test failures
      Execution halted
    ```

