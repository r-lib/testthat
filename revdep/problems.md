# batata

<details>

* Version: 0.2.1
* GitHub: https://github.com/feddelegrand7/batata
* Source code: https://github.com/cran/batata
* Date/Publication: 2021-03-08 09:50:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "batata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-display_starred.R:8:3): display_starred() returns a character vector ──
      `output` has type 'NULL', not 'character'.
      ── Failure (test-display_starred.R:14:3): display_starred() returns a vector
                of length superior than 0 ──
      length(output) is not strictly more than 0. Difference: 0
      ── Failure (test-display_starred.R:20:3): display_starred() returns a coherent length ──
      length(output2) not equal to 10.
      1/1 mismatches
      [1] 0 - 10 == -10
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

