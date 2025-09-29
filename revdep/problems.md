# adjclust (0.6.10)

* GitHub: <https://github.com/pneuvial/adjclust>
* Email: <mailto:pierre.neuvial@math.univ-toulouse.fr>
* GitHub mirror: <https://github.com/cran/adjclust>

Run `revdepcheck::cloud_details(, "adjclust")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library("testthat")
       > library("adjclust")
       > 
       > test_check("adjclust")
       object has no names - using numeric order for row/column names
       [ FAIL 1 | WARN 0 | SKIP 3 | PASS 171 ]
       
       ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
       • No NA value: nothing to test here! (3): 'test_snpClust_NA-in-LD.R:22:3',
         'test_snpClust_NA-in-LD.R:57:3', 'test_snpClust_NA-in-LD.R:78:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_modify.R:19:3'): Results of the algorithm are shifted by lambda when similarity is unnormalized and heights are positive ──
       Error in `expect_message(fit4 <- adjClust(sim2), fit3$correction)`: `regexp` must be a single string, `NA`, or `NULL`, not the number 1.8.
       Backtrace:
           ▆
        1. └─testthat::expect_message(regexp = fit3$correction) at test_modify.R:19:3
        2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 3 | PASS 171 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  5.2Mb
       sub-directories of 1Mb or more:
         doc    2.1Mb
         libs   2.6Mb
     ```

# APackOfTheClones (1.3.0)

* GitHub: <https://github.com/Qile0317/APackOfTheClones>
* Email: <mailto:qile.yang@berkeley.edu>
* GitHub mirror: <https://github.com/cran/APackOfTheClones>

Run `revdepcheck::cloud_details(, "APackOfTheClones")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ── Failure ('test-get_clone_sizes.R:48:2'): countCloneSizes works ──────────────
       Expected `test_obj[5:12]` to be equal to `expected_obj[5:12]`.
       Differences:
       dimnames(actual)[[1]] vs dimnames(expected)[[1]]
         "TRAV10.TRAJ48.TRAC;TGTGTGGTGAGCGACTTTGGAAATGAGAAATTAACCTTT_TRBV27.None.TRBJ2-1.TRBC2;TGTGCCAGCAGTTTAGGGTCGGGGGGGACGGGGAATGAGCAGTTCTTC"
         "TRAV12-2.TRAJ12.TRAC;TGTGCCCGGAAGGTTAGGGATAGCAGCTATAAATTGATCTTC_TRBV6-4.None.TRBJ2-1.TRBC2;TGTGCCAGCAGTGACTCCGGATACAATGAGCAGTTCTTC"
       - "TRAV12-2.TRAJ6.TRAC;TGTGCCGAGAGGGGTTCGGGAGGAAGCTACATACCTACATTT_TRBV7-9.None.TRBJ2-3.TRBC2;TGTGCCAGCAGCGACCCGAGTGGACGACAGGGTCCGAGGTGGGATACGCAGTATTTT"
       + "TRAV16.TRAJ30.TRAC;TGTGCTCTAAGTGGTAGCAGAGATGACAAGATCATCTTT_NA;NA"
       - "TRAV16.TRAJ30.TRAC;TGTGCTCTAAGTGGTAGCAGAGATGACAAGATCATCTTT_NA;NA"
       + "TRAV8-3.TRAJ42.TRAC;TGTGCTGTGGGTGAGAAGGGTTATGGAGGAAGCCAAGGAAATCTCATCTTT_TRBV12-4.None.TRBJ1-6.TRBC1;TRBV7-6.None.TRBJ1-4.TRBC1;TGTGCCAGCAGTTTCCGACCGCCGGGTTCACCCCTCCACTTT;TGTGCCAGCCACGGCGCCAGGGGTGATGGCTTTTGTGAAAAACTGTTTTTT"
       - "TRAV24.TRAJ22.TRAC;TGTGCCTCCCTTTCTGGTTCTGCAAGGCAACTGACCTTT_TRBV27.None.TRBJ2-1.TRBC2;TGTGCCAGCAGCCCCACAGTAGCGGGGGAGCAGTTCTTC"
       + "TRAV8-6.TRAJ34.TRAC;TGTGCTGTGACCTTCCATTATAACACCGACAAGCTCATCTTT_TRBV4-1.None.TRBJ2-7.TRBC2;TGCGCCAGCAGCCAAGACCGGACGGGACTAGACTACGAGCAGTACTTC"
       - "TRAV27.TRAJ58.TRAC;TGTGCAGGAGCTGCGGAAACCAGTGGCTCTAGGTTGACCTTT_TRBV12-4.None.TRBJ2-7.TRBC2;TGTGCCAGCAGCCGGTTGAGGACAGGGGCCCTATACGAGCAGTACTTC"
       + "TRAV24.TRAJ22.TRAC;TGTGCCTCCCTTTCTGGTTCTGCAAGGCAACTGACCTTT_TRBV27.None.TRBJ2-1.TRBC2;TGTGCCAGCAGCCCCACAGTAGCGGGGGAGCAGTTCTTC"
       - "TRAV8-3.TRAJ42.TRAC;TGTGCTGTGGGTGAGAAGGGTTATGGAGGAAGCCAAGGAAATCTCATCTTT_TRBV12-4.None.TRBJ1-6.TRBC1;TRBV7-6.None.TRBJ1-4.TRBC1;TGTGCCAGCAGTTTCCGACCGCCGGGTTCACCCCTCCACTTT;TGTGCCAGCCACGGCGCCAGGGGTGATGGCTTTTGTGAAAAACTGTTTTTT"
       + "TRAV27.TRAJ58.TRAC;TGTGCAGGAGCTGCGGAAACCAGTGGCTCTAGGTTGACCTTT_TRBV12-4.None.TRBJ2-7.TRBC2;TGTGCCAGCAGCCGGTTGAGGACAGGGGCCCTATACGAGCAGTACTTC"
       - "TRAV8-6.TRAJ34.TRAC;TGTGCTGTGACCTTCCATTATAACACCGACAAGCTCATCTTT_TRBV4-1.None.TRBJ2-7.TRBC2;TGCGCCAGCAGCCAAGACCGGACGGGACTAGACTACGAGCAGTACTTC"
       + "TRAV12-2.TRAJ6.TRAC;TGTGCCGAGAGGGGTTCGGGAGGAAGCTACATACCTACATTT_TRBV7-9.None.TRBJ2-3.TRBC2;TGTGCCAGCAGCGACCCGAGTGGACGACAGGGTCCGAGGTGGGATACGCAGTATTTT"
       
       
       [ FAIL 3 | WARN 0 | SKIP 15 | PASS 242 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  7.5Mb
       sub-directories of 1Mb or more:
         help   1.1Mb
         libs   5.2Mb
     ```

# autodb (3.0.0)

* GitHub: <https://github.com/CharnelMouse/autodb>
* Email: <mailto:markwebster204@yahoo.co.uk>
* GitHub mirror: <https://github.com/cran/autodb>

Run `revdepcheck::cloud_details(, "autodb")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         9.               └─hedgehog:::as.expectation.error(e)
        10.                 └─testthat::expectation("error", msg, srcref)
        11.                   └─testthat::new_expectation(...)
        12.                     └─base::structure(...)
       ── Error ('test-synthesise.r:101:5'): synthesise / is invariant to dependency reordering ──
       Error in `attributes(.Data) <- c(attributes(.Data), attrib)`: all attributes must have names [3 does not]
       Backtrace:
            ▆
         1. └─hedgehog::forall(gen_permutation, normalisation_permutation_invariant) at test-synthesise.r:101:5
         2.   └─hedgehog:::run.prop(property, tree$root, curry)
         3.     └─base::tryCatch(...)
         4.       └─base (local) tryCatchList(expr, classes, parentenv, handlers)
         5.         └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         6.           └─value[[3L]](cond)
         7.             └─hedgehog (local) register_expectation(e)
         8.               ├─hedgehog:::as.expectation(e)
         9.               └─hedgehog:::as.expectation.error(e)
        10.                 └─testthat::expectation("error", msg, srcref)
        11.                   └─testthat::new_expectation(...)
        12.                     └─base::structure(...)
       
       [ FAIL 19 | WARN 0 | SKIP 1 | PASS 694 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# aws.comprehend (0.2.1)

* GitHub: <https://github.com/cloudyr/aws.comprehend>
* Email: <mailto:antoine.sac@gmail.com>
* GitHub mirror: <https://github.com/cran/aws.comprehend>

Run `revdepcheck::cloud_details(, "aws.comprehend")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-detect_syntax.R:6:3'): detect_syntax works on single string ────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-detect_syntax.R:6:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-detect_syntax.R:27:3'): detect_syntax works on character vector ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-detect_syntax.R:27:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 13 | WARN 0 | SKIP 0 | PASS 10 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# bgmfiles (0.0.6)

* GitHub: <https://github.com/AustralianAntarcticDivision/bgmfiles>
* Email: <mailto:mdsumner@gmail.com>
* GitHub mirror: <https://github.com/cran/bgmfiles>

Run `revdepcheck::cloud_details(, "bgmfiles")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(bgmfiles)
       > 
       > test_check("bgmfiles")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 2 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-files.R:7:3'): files are present ───────────────────────────────
       Error: 'is_true' is not an exported object from 'namespace:testthat'
       Backtrace:
           ▆
        1. └─testthat::expect_that(all(file.exists(bgmfiles())), testthat::is_true()) at test-files.R:7:3
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 2 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# bindr (0.1.2)

* GitHub: <https://github.com/krlmlr/bindr>
* Email: <mailto:kirill@cynkra.com>
* GitHub mirror: <https://github.com/cran/bindr>

Run `revdepcheck::cloud_details(, "bindr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(bindr)
       > 
       > test_check("bindr")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-error.R:9:3'): non-native encoding causes warning ──────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-error.R:9:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 41 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# caretEnsemble (4.0.1)

* GitHub: <https://github.com/zachmayer/caretEnsemble>
* Email: <mailto:zach.mayer@gmail.com>
* GitHub mirror: <https://github.com/cran/caretEnsemble>

Run `revdepcheck::cloud_details(, "caretEnsemble")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > testthat::test_check("caretEnsemble")
       Loading required package: caretEnsemble
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 614 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-caretList.R:315:3'): caretList supports models that return an array or matrix ──
       Error in `UseMethod("predict")`: no applicable method for 'predict' applied to an object of class "character"
       Backtrace:
           ▆
        1. └─stats::predict(models, head(X, 10L)) at test-caretList.R:315:3
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 614 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# clinDataReview (1.6.2)

* GitHub: <https://github.com/openanalytics/clinDataReview>
* Email: <mailto:laure.cougnaud@openanalytics.eu>
* GitHub mirror: <https://github.com/cran/clinDataReview>

Run `revdepcheck::cloud_details(, "clinDataReview")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `names(expected)`: "TRT" "TERM" "CAT"   "ASTDY" "AENDY" "ASTFLG" "AENFLG"
       
           actual             | expected              
       [1] "CAT"              - "treatment"        [1]
       [2] "term of interest" | "term of interest" [2]
       [3] "ASTDY"            - "CAT"              [3]
       [4] "AENDY"            - "ASTDY"            [4]
       [5] "treatment"        - "AENDY"            [5]
       [6] "ASTFLG"           | "ASTFLG"           [6]
       [7] "AENFLG"           | "AENFLG"           [7]
       
       ── Failure ('test_utility-dimensions.R:9:2'): Plot width and height, if specified, are respected ──
       Expected `res` to be equal to `c(height = 100, width = 300)`.
       Differences:
       `names(actual)`:   "width"  "height"
       `names(expected)`: "height" "width" 
       
         `actual`: 300.0 100.0
       `expected`: 100.0 300.0
       
       
       [ FAIL 16 | WARN 0 | SKIP 31 | PASS 501 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  5.7Mb
       sub-directories of 1Mb or more:
         doc   4.3Mb
     ```

# cnd (0.1.0)

* GitHub: <https://github.com/jmbarbone/cnd>
* Email: <mailto:jmbarbone@gmail.com>
* GitHub mirror: <https://github.com/cran/cnd>

Run `revdepcheck::cloud_details(, "cnd")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > # Learn more about the roles of various files in:
       > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(cnd)
       > 
       > test_check("cnd")
       [ FAIL 1 | WARN 0 | SKIP 11 | PASS 81 ]
       
       ══ Skipped tests (11) ══════════════════════════════════════════════════════════
       • On CRAN (11): 'test-condition.R:109:1', 'test-condition.R:179:1',
         'test-document.R:33:3', 'test-document.R:37:1', 'test-handlers.R:1:1',
         'test-handlers.R:11:1', 'test-print.R:1:1', 'test-print.R:24:1',
         'test-register.R:40:1', 'test-register.R:44:1', 'test-utils.R:28:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-condition.R:226:3'): cnd(condition) handling ─────────────────
       Expected zero successes.
       Actually succeeded 1 times
       
       [ FAIL 1 | WARN 0 | SKIP 11 | PASS 81 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# coenocliner (0.2-3)

* GitHub: <https://github.com/gavinsimpson/coenocliner>
* Email: <mailto:ucfagls@gmail.com>
* GitHub mirror: <https://github.com/cran/coenocliner>

Run `revdepcheck::cloud_details(, "coenocliner")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > ## Setup
       > library("testthat")
       > 
       > ## Runs the tests in inst/tests
       > test_check("coenocliner")
       Loading required package: coenocliner
       This is coenocliner 0.2-3
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 85 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-coenocline.R:25:5'): coenocline() returns an integer matrix ────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(typeof(sim) == "integer", is_true()) at test-coenocline.R:25:5
       ── Error ('test-coenocline.R:55:5'): coenocline() returns an integer matrix with x and y gradients ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(typeof(sim) == "integer", is_true()) at test-coenocline.R:55:5
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 85 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# conflr (0.1.1)

* GitHub: <https://github.com/line/conflr>
* Email: <mailto:hiroaki.yutani@linecorp.com>
* GitHub mirror: <https://github.com/cran/conflr>

Run `revdepcheck::cloud_details(, "conflr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-utils.R:77:3'): try_get_existing_page_id() works ───────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:77:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-utils.R:93:3'): try_get_personal_space_key() handles personal spaces ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:93:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 14 | WARN 0 | SKIP 4 | PASS 92 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘R6’
       All declared Imports should be used.
     ```

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# countdown (0.4.0)

* GitHub: <https://github.com/gadenbuie/countdown>
* Email: <mailto:garrick@adenbuie.com>
* GitHub mirror: <https://github.com/cran/countdown>

Run `revdepcheck::cloud_details(, "countdown")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(testthat)
       > library(countdown)
       > 
       > test_check("countdown")
       [ FAIL 1 | WARN 0 | SKIP 1 | PASS 43 ]
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • On CRAN (1): 'test-countdown.R:15:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-shiny.R:7:5'): countdown_app() / errors if shiny not available ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       i Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(requireNamespace = function(...) FALSE, expect_error(countdown_app())) at test-shiny.R:7:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 1 | PASS 43 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd cross-references ... NOTE
     ```
     Packages unavailable to check Rd xrefs: ‘xaringan’, ‘beepr’
     ```

# covdepGE (1.0.1)

* GitHub: <https://github.com/JacobHelwig/covdepGE>
* Email: <mailto:jacob.a.helwig@tamu.edu>
* GitHub mirror: <https://github.com/cran/covdepGE>

Run `revdepcheck::cloud_details(, "covdepGE")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:461:3'): Font size ────────────────────────────────
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:467:3'): Font color 1 ─────────────────────────────
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:473:3'): Font color 2 ─────────────────────────────
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:479:3'): Font threshold ───────────────────────────
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:506:3'): Different graph_colors ───────────────────
       Expected one failure.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:511:3'): No title summary ─────────────────────────
       Expected one failure.
       Actually failed 0 times
       
       [ FAIL 25 | WARN 16 | SKIP 31 | PASS 57 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking C++ specification ... NOTE
     ```
       Specified C++11: please drop specification unless essential
     ```

# covr (3.6.4)

* GitHub: <https://github.com/r-lib/covr>
* Email: <mailto:james.f.hester@gmail.com>
* GitHub mirror: <https://github.com/cran/covr>

Run `revdepcheck::cloud_details(, "covr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-utils.R:20:3'): it works as expected ───────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:20:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-utils.R:27:3'): it works as expected ───────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:27:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 22 | WARN 0 | SKIP 11 | PASS 185 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# datarobot (2.18.6)

* Email: <mailto:api-maintainer@datarobot.com>
* GitHub mirror: <https://github.com/cran/datarobot>

Run `revdepcheck::cloud_details(, "datarobot")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-CreateUserPartition.R:87:3'): validationType = 'TVH' option can be used to SetTarget ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-CreateUserPartition.R:87:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-StartAutopilot.R:461:3'): Datetime partition with invalid partition ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-StartAutopilot.R:461:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 9 | WARN 0 | SKIP 32 | PASS 98 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# DiceKriging (1.6.0)

* Email: <mailto:roustant@insa-toulouse.fr>
* GitHub mirror: <https://github.com/cran/DiceKriging>

Run `revdepcheck::cloud_details(, "DiceKriging")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-scaling.R:3:1'): Test leaveOneOut ──────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...)
       ── Error ('test-scaling.R:3:1'): Test leaveOneOut ──────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...)
       ── Error ('test-scaling.R:3:1'): Test predict ──────────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...)
       ── Error ('test-scaling.R:3:1'): Test predict ──────────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(max(abs(p$sd - p.test$sd)) < 1e-06, is_true())
       
       [ FAIL 12 | WARN 6 | SKIP 12 | PASS 85 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# dictionar6 (0.1.3)

* GitHub: <https://github.com/xoopR/dictionar6>
* Email: <mailto:raphaelsonabend@gmail.com>
* GitHub mirror: <https://github.com/cran/dictionar6>

Run `revdepcheck::cloud_details(, "dictionar6")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
     Complete output:
       > library(testthat)
       > test_check("dictionar6")
       Loading required package: dictionar6
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 165 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-Dictionary.R:56:3'): add untyped ─────────────────────────────
       Expected `x$items` to be equal to `y$items`.
       Differences:
       `actual$c` is an integer vector (3)
       `expected$c` is a double vector (3)
       
       `actual$d` is an integer vector (4)
       `expected$d` is a double vector (4)
       
       Backtrace:
           ▆
        1. └─dictionar6:::expect_equal_dictionary(...) at test-Dictionary.R:56:3
        2.   └─testthat::expect_mapequal(x$items, y$items) at ./helpers.R:10:3
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 165 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# difNLR (1.5.1-4)

* GitHub: <https://github.com/adelahladka/difNLR>
* Email: <mailto:hladka@cs.cas.cz>
* GitHub mirror: <https://github.com/cran/difNLR>

Run `revdepcheck::cloud_details(, "difNLR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       - attr(environment(actual$m$resid)$rhs, 'gradient')[6, ]      -0.17426729 -0.16579794 0.78936340  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[6, ]    -0.17426730 -0.16579795 0.78936344  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[7, ]      -0.04316780 -0.23243707 0.55164766 -0.04316774 -0.23243707
       + attr(environment(expected$m$resid)$rhs, 'gradient')[7, ]    -0.04316780 -0.23243709 0.55164768 -0.04316789 -0.23243709
       - attr(environment(actual$m$resid)$rhs, 'gradient')[8, ]      -0.10877869 -0.22819247 0.64546291  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[8, ]    -0.10877869 -0.22819249 0.64546285  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[9, ]       0.16964468 -0.17684839 0.23046458  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[9, ]     0.16964469 -0.17684838 0.23046462  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[10, ]      0.17703718 -0.17134705 0.23986089  0.17703731 -0.17134705
       + attr(environment(expected$m$resid)$rhs, 'gradient')[10, ]    0.17703716 -0.17134706 0.23986080  0.17703712 -0.17134706
       and 1990 more ...
       
       ── Failure ('test-estimNLR.R:81:3'): estimNLR - examples at help page ──────────
       Expected `fit_plf` to be equal to `fit_plf_expected`.
       Differences:
         `actual$se`: 0.23443593 0.13252404 0.16037916 0.14521814 0.12357220
       `expected$se`: 0.23443320 0.13252301 0.16037792 0.14521746 0.12357061
       
       
       [ FAIL 25 | WARN 0 | SKIP 16 | PASS 317 ]
       Deleting unused snapshots: 'difNLR/plot-fit1-gen.svg',
       'difNLR/plot-fit2-gen.svg', and 'difNLR/plot-stat-gen.svg'
       Error:
       ! Test failures.
       Execution halted
     ```

# digitize (0.0.4)

* GitHub: <https://github.com/tpoisot/digitize>
* Email: <mailto:jashander@ucdavis.edu>
* GitHub mirror: <https://github.com/cran/digitize>

Run `revdepcheck::cloud_details(, "digitize")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-reverse_compatible.r:32:13'): `digitize` gives same ────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-reverse_compatible.r:32:13
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-unit.r:9:13'): Digitize skips point input ──────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-unit.r:9:13
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# disprofas (0.2.1)

* GitHub: <https://github.com/piusdahinden/disprofas>
* Email: <mailto:pius.dahinden@tillotts.com>
* GitHub mirror: <https://github.com/cran/disprofas>

Run `revdepcheck::cloud_details(, "disprofas")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-generic_bootstrap_f2.R:10:3'): plot.bootstrap_f2_succeeds ────
       Expected `expect_output(plot(re), "Shah")` to be an S3 object.
       Actual OO type: none.
       ── Failure ('test-generic_bootstrap_f2.R:21:3'): print_and_thus_summary.bootstrap_f2_succeeds ──
       Expected `expect_output(print(re), "Shah")` to be an S3 object.
       Actual OO type: none.
       ── Failure ('test-generic_mimcr.R:22:3'): print_and_thus_summary.mimcr_succeeds ──
       Expected `expect_output(print(re1), "MIMCR")` to be an S3 object.
       Actual OO type: none.
       ── Failure ('test-generic_mimcr.R:43:3'): print_and_thus_summary.mimcr_succeeds ──
       Expected `expect_output(print(re2), "MIMCR")` to be an S3 object.
       Actual OO type: none.
       ── Failure ('test-generic_mimcr.R:53:3'): print_and_thus_summary.mimcr_succeeds ──
       Expected `expect_output(print(re3), "MIMCR")` to be an S3 object.
       Actual OO type: none.
       ── Failure ('test-generic_mztia.R:43:3'): print_and_thus_summary.mztia_succeeds ──
       Expected `expect_output(print(re), "Martinez & Zhao")` to be an S3 object.
       Actual OO type: none.
       
       [ FAIL 6 | WARN 0 | SKIP 0 | PASS 694 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# distances (0.1.12)

* GitHub: <https://github.com/fsavje/distances>
* Email: <mailto:rpackages@fredriksavje.com>
* GitHub mirror: <https://github.com/cran/distances>

Run `revdepcheck::cloud_details(, "distances")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. └─testthat::expect_error(class = c("error", "condition")) at test_input_check.R:249:3
        2.   └─testthat:::check_string(class, allow_null = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test_input_check.R:273:3'): `coerce_integer` checks input. ──────────
       Error in `expect_error(t_coerce_integer(t_x = letters[1:10]), class = c("error", "condition"), regexp = "`t_x` must be integer or NULL.")`: `class` must be a single string or `NULL`, not a character vector.
       Backtrace:
           ▆
        1. └─testthat::expect_error(class = c("error", "condition")) at test_input_check.R:273:3
        2.   └─testthat:::check_string(class, allow_null = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test_input_check.R:300:3'): `coerce_norm_matrix` checks input. ──────
       Error in `expect_error(t_coerce_norm_matrix(t_mat = dist(1:4)), class = c("error", "condition"), regexp = "`t_mat` must be matrix, data.frame or vector.")`: `class` must be a single string or `NULL`, not a character vector.
       Backtrace:
           ▆
        1. └─testthat::expect_error(class = c("error", "condition")) at test_input_check.R:300:3
        2.   └─testthat:::check_string(class, allow_null = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 8 | WARN 0 | SKIP 0 | PASS 419 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# distro (0.1.0)

* Email: <mailto:neal.p.richardson@gmail.com>
* GitHub mirror: <https://github.com/cran/distro>

Run `revdepcheck::cloud_details(, "distro")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─distro (local) with_mock_os_release("debian-bullseye", distro())
        5.   └─testthat::with_mock(...) at test-os-release.R:2:3
        6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        7.       └─lifecycle:::deprecate_stop0(msg)
        8.         └─rlang::cnd_signal(...)
       ── Error ('test-system-release.R:11:3'): system_release ────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. ├─testthat::expect_equal(...) at test-system-release.R:11:3
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─distro (local) with_mock_system_release(...)
        5.   └─testthat::with_mock(...) at test-system-release.R:2:3
        6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        7.       └─lifecycle:::deprecate_stop0(msg)
        8.         └─rlang::cnd_signal(...)
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# EDISON (1.1.1)

* Email: <mailto:fdondelinger.work@gmail.com>
* GitHub mirror: <https://github.com/cran/EDISON>

Run `revdepcheck::cloud_details(, "EDISON")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       5 % 10 % 15 % 20 % 25 % 30 % 35 % 40 % 45 % 50 % 55 % 60 % 65 % 70 % 75 % 80 % 85 % 90 % 95 % 100 % [1] ""
       [1] "End of iterations"
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-structure-moves.r:328:1'): network info the same before and after  ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(updateCorrectly(), is_true())
       ── Error ('test-structure-moves.r:332:1'): rejected moves make no change ───────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(noChangeOnReject(), is_true())
       ── Error ('test-structure-moves.r:336:1'): output not null ─────────────────────
       Error in `is_false()`: could not find function "is_false"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...)
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# ergm (4.10.1)

* GitHub: <https://github.com/statnet/ergm>
* Email: <mailto:pavel@statnet.org>
* GitHub mirror: <https://github.com/cran/ergm>

Run `revdepcheck::cloud_details(, "ergm")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > test-valued-terms.R: 
       > test-valued-terms.R: 'ergm.count' 4.1.2 (2024-06-15), part of the Statnet Project
       > test-valued-terms.R: * 'news(package="ergm.count")' for changes since last version
       > test-valued-terms.R: * 'citation("ergm.count")' for citation information
       > test-valued-terms.R: * 'https://statnet.org' for help, support, and other information
       > test-valued-terms.R: 
       [ FAIL 2 | WARN 0 | SKIP 1 | PASS 4275 ]
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • empty test (1):
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-term-Offset.R:19:3'): Estimation with Offset() operator works ──
       Expected failure message to match regexp ".* did not throw the expected message.*".
       Actual message:
       x | Expected `off <- ergm(nw ~ edges + offset(triangle), offset.coef = 0.1)` to throw a message.
       ── Failure ('test-term-Offset.R:23:3'): Estimation with Offset() operator works ──
       Expected failure message to match regexp ".* did not throw the expected message.*".
       Actual message:
       x | Expected `Off <- ergm(nw ~ edges + Offset(~triangle, which = 1, coef = 0.1))` to throw a message.
       
       [ FAIL 2 | WARN 0 | SKIP 1 | PASS 4275 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  8.2Mb
       sub-directories of 1Mb or more:
         R      1.5Mb
         doc    1.3Mb
         help   1.6Mb
         libs   2.9Mb
     ```

# expstudy (2.0.0)

* GitHub: <https://github.com/cb12991/expstudy>
* Email: <mailto:cb12991@me.com>
* GitHub mirror: <https://github.com/cran/expstudy>

Run `revdepcheck::cloud_details(, "expstudy")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(testthat)
       > library(expstudy)
       
       Attaching package: 'expstudy'
       
       The following object is masked from 'package:stats':
       
           aggregate
       
       > 
       > test_check("expstudy")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-summarise_measures.R:2:3'): measures summed up correctly ─────
       Expected `as.list(summarise_measures(mortexp))` to be equal to `lapply(...)`.
       Differences:
       `attr(actual, 'measure_sets')` is a list
       `attr(expected, 'measure_sets')` is absent
       
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# fabletools (0.5.1)

* GitHub: <https://github.com/tidyverts/fabletools>
* Email: <mailto:mail@mitchelloharawild.com>
* GitHub mirror: <https://github.com/cran/fabletools>

Run `revdepcheck::cloud_details(, "fabletools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
           ▆
        1. ├─... %>% expect_identical(c("key", "ets")) at test-mable.R:64:3
        2. └─testthat::expect_identical(., c("key", "ets"))
       ── Failure ('test-mable.R:68:3'): mable dplyr verbs ────────────────────────────
       Expected `.` to be identical to `c("key", "ets")`.
       Differences:
       target is NULL, current is character
       Backtrace:
           ▆
        1. ├─... %>% expect_identical(c("key", "ets")) at test-mable.R:68:3
        2. └─testthat::expect_identical(., c("key", "ets"))
       ── Error ('test-mable.R:81:3'): mable dplyr verbs ──────────────────────────────
       <subscriptOutOfBoundsError/error/condition>
       Error in `.[["key"]]`: subscript out of bounds
       Backtrace:
           ▆
        1. ├─... %>% expect_identical("mdeaths") at test-mable.R:81:3
        2. └─testthat::expect_identical(., "mdeaths")
        3.   └─testthat::quasi_label(enquo(object), label)
        4.     └─rlang::eval_bare(expr, quo_get_env(quo))
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 291 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# futile.logger (1.4.3)

* Email: <mailto:r@zatonovo.com>
* GitHub mirror: <https://github.com/cran/futile.logger>

Run `revdepcheck::cloud_details(, "futile.logger")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_logger.R:34:3'): Create new logger ─────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(length(raw.root) == 0, is_true()) at test_logger.R:34:3
       ── Error ('test_logger.R:47:3'): Hierarchy is honored ──────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(length(raw.root) == 0, is_true()) at test_logger.R:47:3
       ── Error ('test_logger.R:61:3'): Hierarchy inheritance ─────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(length(raw.root) == 0, is_true()) at test_logger.R:61:3
       ── Error ('test_logger.R:80:3'): carp returns output ───────────────────────────
       Error in `is_false()`: could not find function "is_false"
       Backtrace:
           ▆
        1. └─testthat::expect_that(flog.carp(), is_false()) at test_logger.R:80:3
       
       [ FAIL 12 | WARN 1 | SKIP 0 | PASS 40 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# ggeffects (2.3.1)

* GitHub: <https://github.com/strengejacke/ggeffects>
* Email: <mailto:d.luedecke@uke.de>
* GitHub mirror: <https://github.com/cran/ggeffects>

Run `revdepcheck::cloud_details(, "ggeffects")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         'test-test_predictions_emmeans.R:73:1',
         'test-test_predictions_ggeffects.R:115:1',
         'test-test_predictions_ggeffects.R:164:1',
         'test-test_predictions_ggeffects.R:183:3',
         'test-test_predictions_ggeffects.R:226:5', 'test-vcov.R:1:1',
         'test-vglm.R:1:1', 'test-zeroinfl.R:27:3', 'test-zi_prob.R:1:1'
       • On Linux (10): 'test-brglm.R:1:1', 'test-ci_backticks-names.R:1:1',
         'test-emmeans-weights.R:1:1', 'test-gee.R:1:1', 'test-ggaverage.R:1:1',
         'test-glm.R:1:1', 'test-ordinal.R:1:1', 'test-print_subsets.R:1:1',
         'test-print_test_predictions-ordinal.R:1:1',
         'test-print_test_predictions.R:1:1'
       • empty test (2): 'test-polr.R:136:5', 'test-polr.R:142:5'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-polr.R:65:7'): ggaverage, polr, weights ──────────────────────
       Expected `pr$predicted` to be equal to `c(...)`.
       Differences:
         `actual`: 0.4594 0.2668 0.2737 0.3307 0.2754 0.3939 0.1975 0.2378 0.5647
       `expected`: 0.4489 0.2713 0.2798 0.3200 0.2776 0.4024 0.1888 0.2358 0.5754
       
       
       [ FAIL 1 | WARN 0 | SKIP 70 | PASS 504 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# ggseg (1.6.5)

* GitHub: <https://github.com/ggseg/ggseg>
* Email: <mailto:a.m.mowinckel@psykologi.uio.no>
* GitHub mirror: <https://github.com/cran/ggseg>

Run `revdepcheck::cloud_details(, "ggseg")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Loading required package: ggseg
       merging atlas and data by 'region'
       merging atlas and data by 'region'
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 106 ]
       
       ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
       • On CRAN (7): 'test-brain-atlas-plots.R:2:1', 'test-ggseg.R:8:1',
         'test-ggseg.R:41:1', 'test-ggseg.R:50:1', 'test-ggseg_atlas.R:94:1',
         'test-scale_brain.R:2:1', 'test-theme_brain.R:2:1'
       • empty test (1): 'test-coord-funcs.R:1:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-brain_palettes.R:10:3'): Check that palette extraction happens ok ──
       Error in `expect_warning(length(brain_pal("aseg", 2)), 3)`: `regexp` must be a single string, `NA`, or `NULL`, not the number 3.
       Backtrace:
           ▆
        1. └─testthat::expect_warning(regexp = 3) at test-brain_palettes.R:10:3
        2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 106 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking package subdirectories ... NOTE
     ```
     Problems with news in ‘NEWS.md’:
       Cannot extract version info from the following section titles:
         * Changes all data options to .data to decrease possibility of column naming overlap
     ```

# gips (1.2.3)

* GitHub: <https://github.com/PrzeChoj/gips>
* Email: <mailto:adam.prze.choj@gmail.com>
* GitHub mirror: <https://github.com/cran/gips>

Run `revdepcheck::cloud_details(, "gips")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(gips)
       > 
       > test_check("gips")
       Loading required package: MASS
       Loading required package: mvtnorm
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 464 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-log_posteriori_of_gips.R:167:3'): compare_posteriories_of_perms properly calculates ──
       Expected `expect_output(...)` to be equal to `1/94914.4439516766`.
       Differences:
       `actual` is a character vector ('The permutation (1,2,3)(4,5) is 1.054e-5 times more likely than the (1,2,3,4,5) permutation.\nThat means, the second permutation is more likely.')
       `expected` is a double vector (1.05358042292185e-05)
       
       ── Failure ('test-log_posteriori_of_gips.R:174:3'): compare_posteriories_of_perms properly calculates ──
       Expected `expect_output(...)` to be equal to `-log(94914.4439516766)`.
       Differences:
       `actual` is a character vector ('The permutation (1,2,3)(4,5) is exp(-11.461) times more likely than the (1,2,3,4,5) permutation.\nThat means, the second permutation is more likely.')
       `expected` is a double vector (-11.4607311748255)
       
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 464 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# graphhopper (0.1.2)

* GitHub: <https://github.com/crazycapivara/graphhopper-r>
* Email: <mailto:crazycapivara@gmail.com>
* GitHub mirror: <https://github.com/cran/graphhopper>

Run `revdepcheck::cloud_details(, "graphhopper")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(graphhopper)
       > 
       > test_check("graphhopper")
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 6 ]
       
       ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
       • gh_is_avialable() is not TRUE (2): 'test_route-local-gh-instance.R:10:3',
         'test_spt-local-gh-instance.R:4:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_route.R:9:3'): sf LINESTRING ───────────────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_route.R:9:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 6 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# greeks (1.4.4)

* GitHub: <https://github.com/ahudde/greeks>
* Email: <mailto:anselmhudde@gmx.de>
* GitHub mirror: <https://github.com/cran/greeks>

Run `revdepcheck::cloud_details(, "greeks")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error in `expect(max(error) < sqrt(epsilon))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(max(error) < sqrt(epsilon)) at test-BS_European_Greeks.R:107:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       ── Error ('test-BS_Geometric_Asian_Greeks.R:81:3'): BS_Geometric_Asian_Greeks is correct ──
       Error in `expect(max(error) < sqrt(epsilon))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(max(error) < sqrt(epsilon)) at test-BS_Geometric_Asian_Greeks.R:81:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       ── Error ('test-Implied_Volatility.R:90:3'): implied volatility is correct ─────
       Error in `expect(max(abs(option_price_test - option_price)) < 1e-06)`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(...) at test-Implied_Volatility.R:90:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  5.2Mb
       sub-directories of 1Mb or more:
         libs   4.8Mb
     ```

# HandTill2001 (1.0.2)

* Email: <mailto:fvafrcu@mailbox.org>
* GitHub mirror: <https://github.com/cran/HandTill2001>

Run `revdepcheck::cloud_details(, "HandTill2001")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘runit.R’
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library("HandTill2001")
       > 
       > test_check("HandTill2001")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 15 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-throw.R:5:3'): throw the HandTill2001 exception ────────────────
       Error in `testthat::expect_error(HandTill2001:::throw(string), regexp = error_message, class = c("error", "HandTill2001", "condition"))`: `class` must be a single string or `NULL`, not a character vector.
       Backtrace:
           ▆
        1. └─testthat::expect_error(class = c("error", "HandTill2001", "condition")) at test-throw.R:5:3
        2.   └─testthat:::check_string(class, allow_null = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 15 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     --- re-building ‘consensus_auc.Rnw’ using Sweave
     Loading required package: class
     Loaded mda 0.5-5
     
     Error: processing vignette 'consensus_auc.Rnw' failed with diagnostics:
     Running 'texi2dvi' on 'consensus_auc.tex' failed.
     LaTeX errors:
     ! LaTeX Error: File `grfext.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.179   \RequirePackage{grfext}\relax
                                          ^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘consensus_auc.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘consensus_auc.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# hdcuremodels (0.0.5)

* GitHub: <https://github.com/kelliejarcher/hdcuremodels>
* Email: <mailto:archer.43@osu.edu>
* GitHub mirror: <https://github.com/cran/hdcuremodels>

Run `revdepcheck::cloud_details(, "hdcuremodels")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Number of non-zero latency covariates: 26
       
       Mixture cure model fit using the EM algorithm 
       
       using cross-validation 
       
       Number of non-zero incidence covariates: 3
       
       Number of non-zero latency covariates: 26
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 556 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-formula.R:11:3'): formula function works correctly ─────────────
       Error in `expect(is.call(formula(fit)))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(is.call(formula(fit))) at test-formula.R:11:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 556 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# hedgehog (0.1)

* GitHub: <https://github.com/hedgehogqa/r-hedgehog>
* Email: <mailto:huw.campbell@gmail.com>
* GitHub mirror: <https://github.com/cran/hedgehog>

Run `revdepcheck::cloud_details(, "hedgehog")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        12.               └─hedgehog:::as.expectation.error(e)
        13.                 └─testthat::expectation("error", msg, srcref)
        14.                   └─testthat::new_expectation(...)
        15.                     └─base::structure(...)
       ── Error ('test_hedgehog.R:173:1'): can mix pure and generative in a list ──────
       Error in `attributes(.Data) <- c(attributes(.Data), attrib)`: all attributes must have names [3 does not]
       Backtrace:
            ▆
         1. └─hedgehog::forall(...)
         2.   └─hedgehog:::run.prop(property, tree$root, curry)
         3.     └─base::tryCatch(...)
         4.       └─base (local) tryCatchList(expr, classes, parentenv, handlers)
         5.         └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         6.           └─value[[3L]](cond)
         7.             └─hedgehog (local) register_expectation(e)
         8.               ├─hedgehog:::as.expectation(e)
         9.               └─hedgehog:::as.expectation.error(e)
        10.                 └─testthat::expectation("error", msg, srcref)
        11.                   └─testthat::new_expectation(...)
        12.                     └─base::structure(...)
       
       [ FAIL 4 | WARN 1 | SKIP 0 | PASS 27 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# htmltools (0.5.8.1)

* GitHub: <https://github.com/rstudio/htmltools>
* Email: <mailto:carson@posit.co>
* GitHub mirror: <https://github.com/cran/htmltools>

Run `revdepcheck::cloud_details(, "htmltools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-tag-query.R:123:3'): tagQuery()$find() ─────────────────────────
       Error in `y$parent`: $ operator is invalid for atomic vectors
       Backtrace:
            ▆
         1. ├─testthat::expect_failure(...) at test-tag-query.R:123:3
         2. │ └─testthat:::capture_success_failure(expr)
         3. │   └─base::withCallingHandlers(...)
         4. └─htmltools:::expect_equal_tags(x$selectedTags(), newX$selectedTags())
         5.   └─htmltools (local) expect_equal_tags_(x, y) at ./helper-tags.R:25:3
         6.     └─base::Map(x, y, f = expect_equal_tags_) at ./helper-tags.R:16:7
         7.       └─base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
         8.         └─htmltools (local) `<fn>`(dots[[1L]][[1L]], dots[[2L]][[1L]])
         9.           └─htmltools (local) expect_equal_tags_(x$children, y$children) at ./helper-tags.R:12:7
        10.             └─base::Map(x, y, f = expect_equal_tags_) at ./helper-tags.R:16:7
        11.               └─base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
        12.                 └─htmltools (local) `<fn>`(dots[[1L]][[1L]], dots[[2L]][[1L]])
        13.                   └─testthat::expect_equal(y$parent, NULL) at ./helper-tags.R:8:7
        14.                     └─testthat::quasi_label(enquo(object), label)
        15.                       └─rlang::eval_bare(expr, quo_get_env(quo))
       
       [ FAIL 1 | WARN 0 | SKIP 7 | PASS 10196 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking package dependencies ... NOTE
     ```
     Package which this enhances but not available for checking: ‘knitr’
     ```

# httptest (4.2.2)

* GitHub: <https://github.com/nealrichardson/httptest>
* Email: <mailto:neal.p.richardson@gmail.com>
* GitHub mirror: <https://github.com/cran/httptest>

Run `revdepcheck::cloud_details(, "httptest")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        4. │     └─testthat:::expect_condition_matching_(...)
        5. │       └─testthat:::quasi_capture(...)
        6. │         ├─testthat (local) .capture(...)
        7. │         │ └─base::withCallingHandlers(...)
        8. │         └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        9. └─testthat::expect_failure(...)
       ── Failure ('test-expect-header.R:25:7'): expect_header with fake HTTP ─────────
       Expected zero successes.
       Actually succeeded 1 times
       Backtrace:
           ▆
        1. ├─httptest::expect_POST(...) at test-expect-header.R:25:7
        2. │ └─httptest:::expect_mock_request(object, "POST ", url, " ", ...)
        3. │   └─request_happened()(...)
        4. │     └─testthat:::expect_condition_matching_(...)
        5. │       └─testthat:::quasi_capture(...)
        6. │         ├─testthat (local) .capture(...)
        7. │         │ └─base::withCallingHandlers(...)
        8. │         └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        9. └─testthat::expect_failure(...)
       
       [ FAIL 2 | WARN 0 | SKIP 12 | PASS 289 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# httptest2 (1.2.1)

* GitHub: <https://github.com/nealrichardson/httptest2>
* Email: <mailto:neal.p.richardson@gmail.com>
* GitHub mirror: <https://github.com/cran/httptest2>

Run `revdepcheck::cloud_details(, "httptest2")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       <httptest2_request/rlang_error/error/condition>
       Error in `mock(req)`: An unexpected request was made:
       POST http://httpbin.not/get {"test":true}
       Backtrace:
            ▆
         1. ├─testthat::expect_failure(...) at test-expect-request.R:75:5
         2. │ └─testthat:::capture_success_failure(expr)
         3. │   └─base::withCallingHandlers(...)
         4. ├─httptest2::expect_POST(...)
         5. │ └─httptest2:::expect_request(object, "POST ", url, " ", ...)
         6. │   ├─base::withCallingHandlers(...)
         7. │   └─testthat::expect_error(...)
         8. │     └─testthat:::expect_condition_matching_(...)
         9. │       └─testthat:::quasi_capture(...)
        10. │         ├─testthat (local) .capture(...)
        11. │         │ └─base::withCallingHandlers(...)
        12. │         └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        13. └─httr2::req_perform(this_req)
        14.   └─httptest2 (local) mock(req)
        15.     └─rlang::abort(out, mockfile = req$mockfile, class = "httptest2_request")
       
       [ FAIL 5 | WARN 0 | SKIP 2 | PASS 233 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# humanize (0.2.0)

* GitHub: <https://github.com/newtux/humanize>
* Email: <mailto:gerrymanoim@gmail.com>
* GitHub mirror: <https://github.com/cran/humanize>

Run `revdepcheck::cloud_details(, "humanize")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_time.R:145:3'): natural_time works as expected ─────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_time.R:145:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_time.R:214:3'): natural_time no months works as expected ───────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_time.R:214:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 96 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# HurreconR (1.1)

* GitHub: <https://github.com/hurrecon-model/hurreconR>
* Email: <mailto:boose@fas.harvard.edu>
* GitHub mirror: <https://github.com/cran/HurreconR>

Run `revdepcheck::cloud_details(, "HurreconR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > 
       > library(testthat)
       > library(HurreconR)
       > 
       > test_check("HurreconR")
       Path set to /tmp/workdir/HurreconR/new/HurreconR.Rcheck/HurreconR/
       ... Modeling site ...
       017 ms
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 0 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_HurreconR.R:14:1'): (code run outside of `test_that()`) ────────
       Error in `expect_snapshot_value(hurrecon_summarize_site(hur_id = "AL1935-03", site_name = "Miami FL", hur_path = hur_path), test.expected, style = "serialize", cran = FALSE)`: `tolerance` must be a number, not the string "/tmp/workdir/HurreconR/new/...".
       Backtrace:
           ▆
        1. └─testthat::expect_snapshot_value(tolerance = test.expected) at test_HurreconR.R:14:1
        2.   └─testthat:::check_number_decimal(tolerance, min = 0)
        3.     └─testthat:::.stop_not_number(...)
        4.       └─testthat:::stop_input_type(...)
        5.         └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 0 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# IMEC (0.2.0)

* Email: <mailto:maximilianmaier0401@gmail.com>
* GitHub mirror: <https://github.com/cran/IMEC>

Run `revdepcheck::cloud_details(, "IMEC")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       [ FAIL 2 | WARN 2 | SKIP 1 | PASS 2 ]
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • On CRAN (1): 'test-0-basictests.R:105:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-0-basictests.R:29:3'): analytic way of calculating coherence works ──
       Error in `expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]]))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]])) at test-0-basictests.R:29:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       ── Error ('test-0-basictests.R:60:3'): analytic way of calculating coherence works for 1 theory ──
       Error in `expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]]))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]])) at test-0-basictests.R:60:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       
       [ FAIL 2 | WARN 2 | SKIP 1 | PASS 2 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# installr (0.23.4)

* GitHub: <https://github.com/talgalili/installr>
* Email: <mailto:tal.galili@gmail.com>
* GitHub mirror: <https://github.com/cran/installr>

Run `revdepcheck::cloud_details(, "installr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error in `!generated_warnings`: invalid argument type
       Backtrace:
           ▆
        1. └─testthat::expect_setequal(!!generated_warnings, !!expected_warnings) at test-copy_site_files.R:213:5
        2.   └─testthat:::check_vector(object)
        3.     └─testthat:::is_vector(x)
       ── Error ('test-copy_site_files.R:213:5'): Rprofile.site: TRUE, Renviron.site: FALSE, copy_site_files: NA, copy_Rprofile.site: NA, copy_question_response: FALSE ──
       Error in `!generated_warnings`: invalid argument type
       Backtrace:
           ▆
        1. └─testthat::expect_setequal(!!generated_warnings, !!expected_warnings) at test-copy_site_files.R:213:5
        2.   └─testthat:::check_vector(object)
        3.     └─testthat:::is_vector(x)
       ── Error ('test-copy_site_files.R:213:5'): Rprofile.site: FALSE, Renviron.site: FALSE, copy_site_files: NA, copy_Rprofile.site: NA, copy_question_response: FALSE ──
       Error in `!generated_warnings`: invalid argument type
       Backtrace:
           ▆
        1. └─testthat::expect_setequal(!!generated_warnings, !!expected_warnings) at test-copy_site_files.R:213:5
        2.   └─testthat:::check_vector(object)
        3.     └─testthat:::is_vector(x)
       
       [ FAIL 64 | WARN 0 | SKIP 2 | PASS 33 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) ask.user.yn.question.Rd:44: Lost braces; missing escapes or markup?
         44 | menu in the {utils} package, yesno in the {devtools} package.
            |             ^
     checkRd: (-1) ask.user.yn.question.Rd:44: Lost braces; missing escapes or markup?
         44 | menu in the {utils} package, yesno in the {devtools} package.
            |                                           ^
     checkRd: (-1) install.FFmpeg.Rd:25: Lost braces; missing escapes or markup?
         25 | This function is useful for saveVideo() in the {animation} package.
            |                                                ^
     checkRd: (-1) install.SWFTools.Rd:27: Lost braces; missing escapes or markup?
         27 | This function is useful for saveSWF() in the {animation} package.
            |                                              ^
     checkRd: (-1) os.shutdown.Rd:25: Lost braces; missing escapes or markup?
         25 | This function is a modified version of Yihui's shutdown function from the {fun} package.
            |                                                                           ^
     ```

# itan (3.1.1)

* GitHub: <https://github.com/arielarmijo/itan>
* Email: <mailto:arielarmijo@yahoo.es>
* GitHub mirror: <https://github.com/cran/itan>

Run `revdepcheck::cloud_details(, "itan")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected `actual` to be equal to `expected`.
       Differences:
       `actual$A` is an integer vector (6, 0, 6, 13, 17, ...)
       `expected$A` is a double vector (6, 0, 6, 13, 17, ...)
       
       `actual$B` is an integer vector (4, 1, 4, 22, 8, ...)
       `expected$B` is a double vector (4, 1, 4, 22, 8, ...)
       
       `actual$C` is an integer vector (4, 4, 26, 0, 6, ...)
       `expected$C` is a double vector (4, 4, 26, 0, 6, ...)
       
       `actual$D` is an integer vector (2, 33, 1, 2, 0, ...)
       `expected$D` is a double vector (2, 33, 1, 2, 0, ...)
       
       `actual$E` is an integer vector (21, 0, 0, 1, 7, ...)
       `expected$E` is a double vector (21, 0, 0, 1, 7, ...)
       
       `actual$NA` is an integer vector (2, 1, 2, 1, 1, ...)
       `expected$NA` is a double vector (2, 1, 2, 1, 1, ...)
       
       
       [ FAIL 4 | WARN 50 | SKIP 0 | PASS 101 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# latrend (1.6.2)

* GitHub: <https://github.com/niekdt/latrend>
* Email: <mailto:niek.den.teuling@philips.com>
* GitHub mirror: <https://github.com/cran/latrend>

Run `revdepcheck::cloud_details(, "latrend")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       [ FAIL 1 | WARN 0 | SKIP 12 | PASS 2350 ]
       
       ══ Skipped tests (12) ══════════════════════════════════════════════════════════
       • On CRAN (9): 'test-crimcv.R:4:1', 'test-flexmix.R:2:1', 'test-funfem.R:3:1',
         'test-lcmm.R:2:1', 'test-mixak.R:2:1', 'test-mixtools.R:3:1',
         'test-parallel.R:1:1', 'test-stratify.R:79:3', 'test-stratify.R:89:3'
       • empty test (1): 'test-quick.R:1:1'
       • skipping MixTVEM tests because the TVEMMixNormal() function is not loaded
         (1): 'test-mixtvem.R:2:1'
       • {akmedoids} is not installed (1): 'test-akmedoids.R:2:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-models.R:62:3'): as.data.frame ───────────────────────────────
       Expected `nrow(.)` to equal 0.
       Differences:
       target is NULL, current is numeric
       Backtrace:
           ▆
        1. ├─... %T>% ... at test-models.R:62:3
        2. └─testthat::expect_equal(nrow(.), 0)
       
       [ FAIL 1 | WARN 0 | SKIP 12 | PASS 2350 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# leaflet.minicharts (0.6.2)

* Email: <mailto:veronique.bachelier@rte-france.com>
* GitHub mirror: <https://github.com/cran/leaflet.minicharts>

Run `revdepcheck::cloud_details(, "leaflet.minicharts")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-flows.R:12:1'): (code run outside of `test_that()`) ────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-flows.R:12:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-minicharts.R:12:1'): (code run outside of `test_that()`) ───────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-minicharts.R:12:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 106 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# learnr (0.11.5)

* GitHub: <https://github.com/rstudio/learnr>
* Email: <mailto:garrick@posit.co>
* GitHub mirror: <https://github.com/cran/learnr>

Run `revdepcheck::cloud_details(, "learnr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-options-reveal_solution.R:37:3'): Solutions are revealed or hidden with tutorial_options() ──
       Error in `if (n_extra > 0) {     lines <- c(lines, paste0("... and ", n_extra, " more.\n")) }`: missing value where TRUE/FALSE needed
       Backtrace:
           ▆
        1. ├─testthat::expect_failure(...) at test-options-reveal_solution.R:37:3
        2. │ └─testthat:::capture_success_failure(expr)
        3. │   └─base::withCallingHandlers(...)
        4. └─testthat::expect_match(ex_show, hidden_solution, fixed = TRUE)
        5.   └─testthat:::expect_match_(...)
        6.     └─testthat:::show_text(act$val, condition)
       ── Error ('test-options-reveal_solution.R:57:3'): Solutions are revealed or hidden with global option ──
       Error in `if (n_extra > 0) {     lines <- c(lines, paste0("... and ", n_extra, " more.\n")) }`: missing value where TRUE/FALSE needed
       Backtrace:
           ▆
        1. ├─testthat::expect_failure(...) at test-options-reveal_solution.R:57:3
        2. │ └─testthat:::capture_success_failure(expr)
        3. │   └─base::withCallingHandlers(...)
        4. └─testthat::expect_match(ex_show, hidden_solution, fixed = TRUE)
        5.   └─testthat:::expect_match_(...)
        6.     └─testthat:::show_text(act$val, condition)
       
       [ FAIL 3 | WARN 0 | SKIP 20 | PASS 790 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# lightr (1.9.0)

* GitHub: <https://github.com/ropensci/lightr>
* Email: <mailto:hugo.gruson+R@normalesup.org>
* GitHub mirror: <https://github.com/cran/lightr>

Run `revdepcheck::cloud_details(, "lightr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       1 files found; importing spectra:
       1 files found; importing spectra:
       1 files found; importing spectra:
       [ FAIL 1 | WARN 0 | SKIP 7 | PASS 390 ]
       
       ══ Skipped tests (7) ═══════════════════════════════════════════════════════════
       • On CRAN (6): 'test_parsers.R:3:3', 'test_parsers.R:34:1',
         'test_parsers.R:81:1', 'test_parsers.R:150:1', 'test_parsers.R:156:1',
         'test_parsers.R:200:1'
       • {photobiologyInOut} is not installed (1):
         'test_compare_photobiologyInOut.R:2:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_convert.R:18:3'): Convert all ──────────────────────────────────
       Error in `!tools::file_path_sans_ext(input_files)`: invalid argument type
       Backtrace:
           ▆
        1. └─testthat::expect_setequal(...) at test_convert.R:18:3
        2.   └─testthat:::check_vector(object)
        3.     └─testthat:::is_vector(x)
       
       [ FAIL 1 | WARN 0 | SKIP 7 | PASS 390 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# lintr (3.2.0)

* GitHub: <https://github.com/r-lib/lintr>
* Email: <mailto:michaelchirico4@gmail.com>
* GitHub mirror: <https://github.com/cran/lintr>

Run `revdepcheck::cloud_details(, "lintr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected one success.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:44:3'): multiple checks ────────────────────────
       Expected one success.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:45:3'): multiple checks ────────────────────────
       Expected one success.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:46:3'): multiple checks ────────────────────────
       Expected zero successes.
       Actually succeeded 1 times
       ── Failure ('test-expect_lint.R:48:3'): multiple checks ────────────────────────
       Expected zero failures.
       Actually failed 1 times
       ── Failure ('test-expect_lint.R:49:3'): multiple checks ────────────────────────
       Expected one failure.
       Actually failed 2 times
       ── Failure ('test-expect_lint.R:50:3'): multiple checks ────────────────────────
       Expected one success.
       Actually succeeded 3 times
       
       [ FAIL 13 | WARN 0 | SKIP 5 | PASS 6551 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking package dependencies ... NOTE
     ```
     Package which this enhances but not available for checking: ‘data.table’
     ```

# luajr (0.2.0)

* GitHub: <https://github.com/nicholasdavies/luajr>
* Email: <mailto:nicholas.davies@lshtm.ac.uk>
* GitHub mirror: <https://github.com/cran/luajr>

Run `revdepcheck::cloud_details(, "luajr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > # It is recommended that you do not modify it.
       > #
       > # Where should you do additional test configuration?
       > # Learn more about the roles of various files in:
       > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(luajr)
       > 
       > test_check("luajr")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 184 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-list.R:37:5'): list attributes work ──────────────────────────
       Expected `attributes(x)` to be equal to `list(...)`.
       Differences:
       `actual$at2` is an integer vector (1)
       `expected$at2` is a double vector (1)
       
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 184 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking for GNU extensions in Makefiles ... NOTE
     ```
     GNU make is a SystemRequirements.
     ```

# madrat (3.15.6)

* GitHub: <https://github.com/pik-piam/madrat>
* Email: <mailto:dietrich@pik-potsdam.de>
* GitHub mirror: <https://github.com/cran/madrat>

Run `revdepcheck::cloud_details(, "madrat")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        [7] "Australia"            - "Andorra"              [7]             
        [8] "Austria"              - "United Arab Emirates" [8]             
        [9] "Azerbaijan"           - "Argentina"            [9]             
       [10] "Burundi"              - "Armenia"              [10]            
        ... ...                      ...                    and 239 more ...
       
            actual | expected                 
        [1] "AFG"  - "ABW"    [1]             
        [2] "AGO"  - "AFG"    [2]             
        [3] "ALB"  - "AGO"    [3]             
        [4] "ARE"  - "AIA"    [4]             
        [5] "ARG"  - "ALA"    [5]             
        [6] "ARM"  - "ALB"    [6]             
        [7] "AUS"  - "AND"    [7]             
        [8] "AUT"  - "ARE"    [8]             
        [9] "AZE"  - "ARG"    [9]             
       [10] "BDI"  - "ARM"    [10]            
        ... ...      ...      and 239 more ...
       
       
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 657 ]
       Error:
       ! Test failures.
       Execution halted
       Ran 3/3 deferred expressions
     ```

# mailmerge (0.2.5)

* GitHub: <https://github.com/andrie/mailmerge>
* Email: <mailto:apdevries@gmail.com>
* GitHub mirror: <https://github.com/cran/mailmerge>

Run `revdepcheck::cloud_details(, "mailmerge")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Failure ('test-mail_merge.R:98:3'): yesno() messages are meaningful ─────────
       Expected `.` to be NULL.
       Differences:
       `actual` is a character vector ('Send 2 emails (draft)?')
       `expected` is NULL
       
       Backtrace:
           ▆
        1. ├─... %>% expect_null() at test-mail_merge.R:98:3
        2. └─testthat::expect_null(.)
       ── Failure ('test-mail_merge.R:104:3'): yesno() messages are meaningful ────────
       Expected `.` to be NULL.
       Differences:
       `actual` is a character vector ('Send 2 emails (immediately)?')
       `expected` is NULL
       
       Backtrace:
           ▆
        1. ├─... %>% expect_null() at test-mail_merge.R:104:3
        2. └─testthat::expect_null(.)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 19 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# MakefileR (1.0)

* GitHub: <https://github.com/krlmlr/MakefileR>
* Email: <mailto:krlmlr+r@mailbox.org>
* GitHub mirror: <https://github.com/cran/MakefileR>

Run `revdepcheck::cloud_details(, "MakefileR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-file.R:10:3'): Printing works as expected ──────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(cat = function(x, sep) x, makefile <- print(makefile())) at test-file.R:10:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-rule.R:30:3'): Printing works as expected ──────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-rule.R:30:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 31 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# manipulateWidget (0.11.1)

* GitHub: <https://github.com/rte-antares-rpackage/manipulateWidget>
* Email: <mailto:veronique.bachelier@rte-france.com>
* GitHub mirror: <https://github.com/cran/manipulateWidget>

Run `revdepcheck::cloud_details(, "manipulateWidget")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-on_done.R:5:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-on_done.R:24:23'): onDone / returns a combined widget if comparison ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. ├─base::suppressWarnings(...) at test-on_done.R:24:5
        2. │ └─base::withCallingHandlers(...)
        3. └─testthat::with_mock(...) at test-on_done.R:24:23
        4.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        5.     └─lifecycle:::deprecate_stop0(msg)
        6.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 1 | PASS 650 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) manipulateWidget.Rd:113-117: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) manipulateWidget.Rd:118-120: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) manipulateWidget.Rd:121-123: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) manipulateWidget.Rd:124-127: Lost braces in \itemize; meant \describe ?
     ```

*   checking data for non-ASCII characters ... NOTE
     ```
       Note: found 55 marked UTF-8 strings
     ```

# markmyassignment (0.8.8)

* Email: <mailto:mons.magnusson@gmail.com>
* GitHub mirror: <https://github.com/cran/markmyassignment>

Run `revdepcheck::cloud_details(, "markmyassignment")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
     Complete output:
       > library(testthat)
       > test_check("markmyassignment")
       Loading required package: markmyassignment
       [ FAIL 2 | WARN 0 | SKIP 6 | PASS 145 ]
       
       ══ Skipped tests (6) ═══════════════════════════════════════════════════════════
       • On CRAN (6): 'test-set_assignment.R:5:3', 'test-set_assignment.R:47:3',
         'test-set_assignment.R:70:3', 'test-set_assignment.R:101:3',
         'test-set_assignment.R:155:3', 'test-set_assignment.R:205:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-expectation.R:40:3'): expect_function_code() ─────────────────
       Expected failure message to match regexp "'markmyassignment' not found in the body of base::mean".
       Actual message:
       ✖ │ 'markmyassignment' not found in the body of `base::mean`
       ── Failure ('test-expectation.R:45:3'): expect_no_forbidden_function_code() ────
       Expected failure message to match regexp "Forbidden code 'UseMethod' is found in the body of base::mean".
       Actual message:
       ✖ │ Forbidden code 'UseMethod' is found in the body of `base::mean`
       
       [ FAIL 2 | WARN 0 | SKIP 6 | PASS 145 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# maybe (1.1.0)

* GitHub: <https://github.com/armcn/maybe>
* Email: <mailto:andrew.richard.mcneil@gmail.com>
* GitHub mirror: <https://github.com/cran/maybe>

Run `revdepcheck::cloud_details(, "maybe")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        11.                   └─testthat::expectation("error", msg, srcref)
        12.                     └─testthat::new_expectation(...)
        13.                       └─base::structure(...)
       ── Error ('test-perhaps.R:29:3'): allow_warning allows functions with warnings to return expected ──
       Error in `attributes(.Data) <- c(attributes(.Data), attrib)`: all attributes must have names [3 does not]
       Backtrace:
            ▆
         1. └─quickcheck::for_all(...) at test-perhaps.R:29:3
         2.   └─hedgehog::forall(...)
         3.     └─hedgehog:::run.prop(property, tree$root, curry)
         4.       └─base::tryCatch(...)
         5.         └─base (local) tryCatchList(expr, classes, parentenv, handlers)
         6.           └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         7.             └─value[[3L]](cond)
         8.               └─hedgehog (local) register_expectation(e)
         9.                 ├─hedgehog:::as.expectation(e)
        10.                 └─hedgehog:::as.expectation.error(e)
        11.                   └─testthat::expectation("error", msg, srcref)
        12.                     └─testthat::new_expectation(...)
        13.                       └─base::structure(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 133 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# mbbe (0.1.0)

* GitHub: <https://github.com/certara/mbbe>
* Email: <mailto:mark.sale@certara.com>
* GitHub mirror: <https://github.com/cran/mbbe>

Run `revdepcheck::cloud_details(, "mbbe")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(mbbe)
       > 
       > test_check("mbbe")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-check_requirements.R:39:3'): check_requirements works ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-check_requirements.R:39:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# MetaComp (1.1.2)

* GitHub: <https://github.com/seninp-bioinfo/MetaComp>
* Email: <mailto:senin@hawaii.edu>
* GitHub mirror: <https://github.com/cran/MetaComp>

Run `revdepcheck::cloud_details(, "MetaComp")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_plot_merged_assignment_m.R:80:1'): (code run outside of `test_that()`) ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test_plot_merged_assignment_m.R:80:1
       ── Error ('test_plot_merged_assignment_p.R:81:1'): (code run outside of `test_that()`) ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test_plot_merged_assignment_p.R:81:1
       ── Error ('test_plot_metaphlan_assignment.R:31:1'): (code run outside of `test_that()`) ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(file.exists(png_name), is_true()) at test_plot_metaphlan_assignment.R:31:1
       ── Error ('test_plot_pangia_assignment.R:31:1'): (code run outside of `test_that()`) ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(file.exists(png_name), is_true()) at test_plot_pangia_assignment.R:31:1
       
       [ FAIL 15 | WARN 21 | SKIP 0 | PASS 108 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# metaDigitise (1.0.1)

* GitHub: <https://github.com/daniel1noble/metaDigitise>
* Email: <mailto:daniel.wa.noble@gmail.com>
* GitHub mirror: <https://github.com/cran/metaDigitise>

Run `revdepcheck::cloud_details(, "metaDigitise")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-misc_func.R:132:9
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-point_extraction.R:9:2'): Checking point_extraction.. ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. ├─testthat::expect_equal(...) at test-point_extraction.R:17:9
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─metaDigitise (local) point_extraction_tester_func(object = list(plot_type = "mean_error"))
        5.   └─testthat::with_mock(...) at test-point_extraction.R:9:9
        6.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        7.       └─lifecycle:::deprecate_stop0(msg)
        8.         └─rlang::cnd_signal(...)
       
       [ FAIL 14 | WARN 0 | SKIP 0 | PASS 35 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# mknapsack (0.1.0)

* GitHub: <https://github.com/madedotcom/mknapsack>
* Email: <mailto:bulat.yapparov@made.com>
* GitHub mirror: <https://github.com/cran/mknapsack>

Run `revdepcheck::cloud_details(, "mknapsack")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > suppressPackageStartupMessages({
       +   library(testthat)
       +   library(data.table)
       + })
       > 
       > test_check("mknapsack")
       Loading required package: mknapsack
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-packing.R:146:5'): solver / calls correct method based on the option value ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-packing.R:146:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# mlr3pipelines (0.9.0)

* GitHub: <https://github.com/mlr-org/mlr3pipelines>
* Email: <mailto:mlr.developer@mb706.com>
* GitHub mirror: <https://github.com/cran/mlr3pipelines>

Run `revdepcheck::cloud_details(, "mlr3pipelines")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         2. │ └─testthat:::expect_condition_matching_(...)
         3. │   └─testthat:::quasi_capture(...)
         4. │     ├─testthat (local) .capture(...)
         5. │     │ └─base::withCallingHandlers(...)
         6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
         7. └─global expect_deep_clone(po, po)
         8.   └─expect_references_differ(one, two, "ROOT")
         9.     └─expect_references_differ(...)
        10.       └─expect_references_differ(...)
        11.         └─expect_references_differ(...)
        12.           └─expect_references_differ(...)
        13.             └─expect_references_differ(...)
        14.               └─expect_references_differ(...)
        15.                 └─expect_references_differ(...)
        16.                   └─testthat::expect_null(visited_b[[addr_a]], label = label)
       ── Failure ('test_Graph.R:240:3'): assert_graph test ───────────────────────────
       Expected `expect_deep_clone(po, po)` to throw a error with class <error>.
       ── Failure ('test_meta.R:12:3'): expect_deep_clone catches non-deep clones ─────
       Expected zero successes.
       Actually succeeded 16 times
       
       [ FAIL 57 | WARN 0 | SKIP 96 | PASS 12541 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  5.3Mb
       sub-directories of 1Mb or more:
         R      3.5Mb
         help   1.5Mb
     ```

# modeltests (0.1.7)

* GitHub: <https://github.com/alexpghayes/modeltests>
* Email: <mailto:alexpghayes@gmail.com>
* GitHub mirror: <https://github.com/cran/modeltests>

Run `revdepcheck::cloud_details(, "modeltests")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > 
       > test_check("modeltests")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 400 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-check_arguments.R:85:3'): strict = TRUE ──────────────────────
       `check_arguments(augment_wrong_newdata, strict = TRUE)` threw an error with unexpected message.
       Expected match: "`newdata` argument must default to `NULL`."
       Actual message: "argument \"value\" is missing, with no default"
       Backtrace:
           ▆
        1. ├─testthat::expect_error(...) at test-check_arguments.R:85:3
        2. │ └─testthat:::quasi_capture(...)
        3. │   ├─testthat (local) .capture(...)
        4. │   │ └─base::withCallingHandlers(...)
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. └─modeltests::check_arguments(augment_wrong_newdata, strict = TRUE)
        7.   └─testthat::expect_null(arglist$newdata, info = "`newdata` argument must default to `NULL`.")
        8.     └─testthat::quasi_label(enquo(object), label)
        9.       └─testthat:::labelled_value(value, label)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 400 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd cross-references ... NOTE
     ```
     Package unavailable to check Rd xrefs: ‘broom’
     ```

# moexer (0.3.0)

* GitHub: <https://github.com/x1o/moexer>
* Email: <mailto:dmitry.zotikov@ungrund.org>
* GitHub mirror: <https://github.com/cran/moexer>

Run `revdepcheck::cloud_details(, "moexer")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-candles.R:39:5'): Getting candle borders works ─────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-candles.R:39:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-iss.R:3:5'): Parsing a JSON ISS response works ─────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-iss.R:3:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 0 | SKIP 0 | PASS 0 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# MolgenisArmadillo (2.9.1)

* GitHub: <https://github.com/molgenis/molgenis-r-armadillo>
* Email: <mailto:m.k.slofstra@umcg.nl>
* GitHub mirror: <https://github.com/cran/MolgenisArmadillo>

Run `revdepcheck::cloud_details(, "MolgenisArmadillo")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         3. │   ├─testthat (local) .capture(...)
         4. │   │ ├─withr::with_output_sink(...)
         5. │   │ │ └─base::force(code)
         6. │   │ ├─base::withCallingHandlers(...)
         7. │   │ └─base::withVisible(code)
         8. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
         9. └─testthat::with_mock(...)
        10.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        11.     └─lifecycle:::deprecate_stop0(msg)
        12.       └─rlang::cnd_signal(...)
       ── Error ('test-utils.R:11:3'): .handle_request_error handles 500 ──────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       i Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:11:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 0 | SKIP 0 | PASS 237 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# multiverse (0.6.2)

* GitHub: <https://github.com/MUCollective/multiverse>
* Email: <mailto:abhraneel@u.northwestern.edu>
* GitHub mirror: <https://github.com/cran/multiverse>

Run `revdepcheck::cloud_details(, "multiverse")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       The following objects are masked from 'package:rlang':
       
           %@%, flatten, flatten_chr, flatten_dbl, flatten_int, flatten_lgl,
           flatten_raw, invoke, splice
       
       
        Error in FUN(X[[i]], ...) : object 'dat' not found
        test_check -> test_dir -> test_files -> test_files_serial -> with_reporter -> lapply -> FUN -> source_file -> test_code -> withRestarts -> withOneRestart -> withCallingHandlers -> eval -> eval -> test_that -> test_code -> withRestarts -> withOneRestart -> withCallingHandlers -> eval -> eval -> expect_warning -> expect_condition_matching_ -> quasi_capture -> .capture -> withCallingHandlers -> eval_bare -> myfun -> inside -> execute_universe -> lapply -> FUN -> tryStack -> lapply -> FUN -> FUN -> dat %>% mutate -> mutate -> FUN(X[[i]], ...) 
       
       [ FAIL 4 | WARN 3 | SKIP 0 | PASS 242 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-multiverse.R:22:3'): new multiverse object is initialised properly ──
       Expected `expect_mapequal(M.obj$parameters, list())` to throw a warning.
       ── Failure ('test-multiverse.R:23:3'): new multiverse object is initialised properly ──
       Expected `expect_mapequal(M.obj$conditions, list())` to throw a warning.
       ── Failure ('test-multiverse.R:31:3'): accessor functions work on newly initialised object ──
       Expected `expect_mapequal(parameters(M), list())` to throw a warning.
       ── Failure ('test-multiverse.R:32:3'): accessor functions work on newly initialised object ──
       Expected `expect_mapequal(conditions(M), list())` to throw a warning.
       
       [ FAIL 4 | WARN 3 | SKIP 0 | PASS 242 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# nanoarrow (0.7.0)

* GitHub: <https://github.com/apache/arrow-nanoarrow>
* Email: <mailto:dewey@dunnington.ca>
* GitHub mirror: <https://github.com/cran/nanoarrow>

Run `revdepcheck::cloud_details(, "nanoarrow")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `expected` is an S3 object of class <nanoarrow_vctr>, an integer vector
       
       ── Failure ('test-vctr.R:35:3'): print() and str() work on empty nanoarrow_vctr ──
       Expected `expect_output(str(vctr), "<nanoarrow_vctr <any>>")` to be identical to `vctr`.
       Differences:
       `actual` is a character vector ('<nanoarrow_vctr <any>>')
       `expected` is an S3 object of class <nanoarrow_vctr>, an integer vector
       
       ── Failure ('test-vctr.R:41:3'): print() and str() work on empty nanoarrow_vctr ──
       Expected `expect_output(print(vctr), "^<nanoarrow_vctr int32")` to be identical to `vctr`.
       Differences:
       `actual` is a character vector ('<nanoarrow_vctr int32[0]>\ninteger(0)')
       `expected` is an S3 object of class <nanoarrow_vctr>, an integer vector
       
       ── Failure ('test-vctr.R:46:3'): print() and str() work on empty nanoarrow_vctr ──
       Expected `expect_output(str(vctr), "^<nanoarrow_vctr int32")` to be identical to `vctr`.
       Differences:
       `actual` is a character vector ('<nanoarrow_vctr int32[0]>\n list()')
       `expected` is an S3 object of class <nanoarrow_vctr>, an integer vector
       
       
       [ FAIL 4 | WARN 0 | SKIP 8 | PASS 1602 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# NasdaqDataLink (1.0.0)

* GitHub: <https://github.com/nasdaq/data-link-r>
* Email: <mailto:jamie.couture@nasdaq.com>
* GitHub mirror: <https://github.com/cran/NasdaqDataLink>

Run `revdepcheck::cloud_details(, "NasdaqDataLink")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-pointintime.r:8:1'): (code run outside of `test_that()`) ───────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-pointintime.r:8:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-search.r:4:1'): (code run outside of `test_that()`) ────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-search.r:4:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 6 | WARN 0 | SKIP 2 | PASS 4 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# nettskjemar (1.0.3)

* GitHub: <https://github.com/capro-uio/nettskjemar>
* Email: <mailto:a.m.mowinckel@psykologi.uio.no>
* GitHub mirror: <https://github.com/cran/nettskjemar>

Run `revdepcheck::cloud_details(, "nettskjemar")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘spelling.R’
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > # Load necessary libraries
       > library(nettskjemar)
       > library(testthat)
       > 
       > test_check("nettskjemar")
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 136 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-ns-codebook.R:89:3'): returns formatted string ───────────────
       Expected `formatted` to contain all values in "# Nettskjema raw codebook for form 123".
       Actual: "[1] \"text\"            \"multiple_choice\""
       Expected: "# Nettskjema raw codebook for form 123"
       Missing: "# Nettskjema raw codebook for form 123"
       
       [ FAIL 1 | WARN 1 | SKIP 0 | PASS 136 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# nhlapi (0.1.4)

* GitHub: <https://github.com/jozefhajnala/nhlapi>
* Email: <mailto:jozef.hajnala@gmail.com>
* GitHub mirror: <https://github.com/cran/nhlapi>

Run `revdepcheck::cloud_details(, "nhlapi")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. ├─testthat::expect_equal(...) at test.nhl_teams_schedule.R:20:5
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─testthat::with_mock(nhl_teams = mock_return, nhl_teams_shedule_previous(teamIds = 1:2))
        5.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        6.     └─lifecycle:::deprecate_stop0(msg)
        7.       └─rlang::cnd_signal(...)
       ── Error ('test.nhl_teams_stats.R:5:5'): Statas for 2 teams and 2 seasons ──────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. ├─testthat::expect_equal(...) at test.nhl_teams_stats.R:5:5
        2. │ └─testthat::quasi_label(enquo(object), label)
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. └─testthat::with_mock(...)
        5.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        6.     └─lifecycle:::deprecate_stop0(msg)
        7.       └─rlang::cnd_signal(...)
       
       [ FAIL 17 | WARN 0 | SKIP 38 | PASS 147 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# nodiv (1.4.2)

* GitHub: <https://github.com/mkborregaard/nodiv>
* Email: <mailto:mkborregaard@sund.ku.dk>
* GitHub mirror: <https://github.com/cran/nodiv>

Run `revdepcheck::cloud_details(, "nodiv")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         |======================================================                |  77%
         |                                                                            
         |=========================================================             |  82%
         |                                                                            
         |============================================================          |  86%
         |                                                                            
         |================================================================      |  91%
         |                                                                            
         |===================================================================   |  95%
         |                                                                            
         |======================================================================| 100%[ FAIL 1 | WARN 0 | SKIP 0 | PASS 63 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_adding.R:4:3'): add shape to object ────────────────────────────
       Error in `expect(is.null(coquettes$shape))`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(is.null(coquettes$shape)) at test_adding.R:4:3
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 63 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# operator.tools (1.6.3)

* GitHub: <https://github.com/decisionpatterns/operator.tools>
* Email: <mailto:chris.brown@decisionpatterns.com>
* GitHub mirror: <https://github.com/cran/operator.tools>

Run `revdepcheck::cloud_details(, "operator.tools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(operator.tools)
       > 
       > test_check("operator.tools")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-operators.R:6:1'): opetators ───────────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test-operators.R:6:1
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# optigrab (0.9.2.1)

* GitHub: <https://github.com/decisionpatterns/optigrab>
* Email: <mailto:chris.brown@decisionpatterns.com>
* GitHub mirror: <https://github.com/cran/optigrab>

Run `revdepcheck::cloud_details(, "optigrab")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(optigrab)
       > 
       > test_check("optigrab")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-opt_expand.r:98:1'): (code run outside of `test_that()`) ───────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(is.character(expanded), is_true()) at test-opt_expand.r:98:1
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) gnu_style.Rd:24: Lost braces
         24 | [GNU Command Line Standards]{http://www.gnu.org/prep/standards/standards.html}
            |                             ^
     ```

# ottr (1.5.2)

* Email: <mailto:cpyles@berkeley.edu>
* GitHub mirror: <https://github.com/cran/ottr>

Run `revdepcheck::cloud_details(, "ottr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       - "          \"error\": \"length(y) (`actual`) not equal to 3 (`expected`).\\n\\n  `actual`: 2\\n`expected`: 3\","
       + "          \"error\": \"Expected `length(y)` to be equal to 3.\\nDifferences:\\n  `actual`: 2.0\\n`expected`: 3.0\\n\","
         "          \"test_case\": {"
         "            \"name\": \"q3-1\","
         "            \"code\": \"{\\n    testthat::expect_equal(length(y), 3)\\n}\","
       
       lines(actual)[78:84] vs lines(expected)[78:84]
         "        },"
         "        {"
         "          \"passed\": false,"
       - "          \"error\": \"`y` (`actual`) not equal to c(\\\"hi there, a!\\\", \\\"hi there, b!\\\", \\\"hi there, c!\\\") (`expected`).\\n\\n`actual` is a double vector (1, 2)\\n`expected` is a character vector ('hi there, a!', 'hi there, b!', 'hi there, c!')\","
       + "          \"error\": \"Expected `y` to be equal to `c(\\\"hi there, a!\\\", \\\"hi there, b!\\\", \\\"hi there, c!\\\")`.\\nDifferences:\\n`actual` is a double vector (1, 2)\\n`expected` is a character vector ('hi there, a!', 'hi there, b!', 'hi there, c!')\\n\","
         "          \"test_case\": {"
         "            \"name\": \"q3-2\","
         "            \"code\": \"{\\n    testthat::expect_equal(y, c(\\\"hi there, a!\\\", \\\"hi there, b!\\\", \\n        \\\"hi there, c!\\\"))\\n}\","
       
       Backtrace:
           ▆
        1. └─ottr (local) run_test(...) at test_integration.R:51:3
        2.   └─testthat::expect_equal(want, got) at test_integration.R:31:5
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 212 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# owmr (0.8.2)

* GitHub: <https://github.com/crazycapivara/owmr>
* Email: <mailto:crazycapivara@gmail.com>
* GitHub mirror: <https://github.com/cran/owmr>

Run `revdepcheck::cloud_details(, "owmr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_current_mocks.R:8:3'): current weather data ────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_current_mocks.R:8:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_forecast.R:8:3'): forecast data ────────────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_forecast.R:8:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 3 | SKIP 0 | PASS 28 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# oxcAAR (1.1.1)

* Email: <mailto:martin.hinz@iaw.unibe.ch>
* GitHub mirror: <https://github.com/cran/oxcAAR>

Run `revdepcheck::cloud_details(, "oxcAAR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_simulate.R:4:3'): oxcalSimulate produces error given wrong oxcal result file ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_simulate.R:4:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_simulate.R:12:1'): (code run outside of `test_that()`) ─────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_simulate.R:12:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 6 | WARN 1 | SKIP 1 | PASS 50 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
          ▆
       1. ├─oxcAAR::quickSetupOxcal()
       2. │ └─oxcAAR:::downloadOxcal(path = path)
       3. │   └─base::tryCatch(...)
       4. │     └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       5. │       └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       6. │         └─value[[3L]](cond)
       7. │           └─base::message(e)
       8. │             ├─base::withRestarts(...)
       9. │             │ └─base (local) withOneRestart(expr, restarts[[1L]])
      10. │             │   └─base (local) doWithOneRestart(return(expr), restart)
      11. │             └─base::signalCondition(cond)
      12. └─evaluate (local) `<fn>`(`<smplWrnn>`)
      13.   └─base::invokeRestart("muffleWarning")
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'basic-usage.Rmd' failed with diagnostics:
     no 'restart' 'muffleWarning' found
     --- failed re-building ‘basic-usage.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘basic-usage.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# parquetize (0.5.7)

* GitHub: <https://github.com/ddotta/parquetize>
* Email: <mailto:damien.dotta@live.fr>
* GitHub mirror: <https://github.com/cran/parquetize>

Run `revdepcheck::cloud_details(, "parquetize")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Failure ('test-testthat-helpers.R:9:3'): expect_parquet fails on file's number of line ──
       Expected `nrow(dataset)` to be equal to `with_lines`.
       Differences:
         `actual`: 150.0
       `expected`:  25.0
       
       Backtrace:
           ▆
        1. ├─testthat::expect_error(...) at test-testthat-helpers.R:9:3
        2. │ └─testthat:::expect_condition_matching_(...)
        3. │   └─testthat:::quasi_capture(...)
        4. │     ├─testthat (local) .capture(...)
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─parquetize::expect_parquet(...)
        8.   └─testthat::expect_equal(nrow(dataset), with_lines)
       ── Failure ('test-testthat-helpers.R:9:3'): expect_parquet fails on file's number of line ──
       Expected `expect_parquet(parquetize_example("iris_dataset"), with_lines = 25)` to throw a error.
       
       [ FAIL 2 | WARN 0 | SKIP 3 | PASS 192 ]
       Error:
       ! Test failures.
       Warning message:
       call dbDisconnect() when finished working with a connection 
       Execution halted
     ```

# passport (0.3.0)

* GitHub: <https://github.com/alistaire47/passport>
* Email: <mailto:edward.visel@gmail.com>
* GitHub mirror: <https://github.com/cran/passport>

Run `revdepcheck::cloud_details(, "passport")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • On CRAN (1): 'test_parse_country.R:91:5'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test_parse_country.R:43:5'): parsing country names with simulated geocoding APIs works ──
       `with_mock(...)` threw an error with unexpected message.
       Expected match: "jsonlite"
       Actual message: "`with_mock()` was deprecated in testthat 3.2.0 and is now defunct.\nℹ Please use `with_mocked_bindings()` instead."
       Backtrace:
           ▆
        1. ├─testthat::expect_error(...) at test_parse_country.R:43:5
        2. │ └─testthat:::quasi_capture(...)
        3. │   ├─testthat (local) .capture(...)
        4. │   │ └─base::withCallingHandlers(...)
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. └─testthat::with_mock(...)
        7.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        8.     └─lifecycle:::deprecate_stop0(msg)
        9.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 4 | SKIP 1 | PASS 37 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# patrick (0.3.0)

* GitHub: <https://github.com/google/patrick>
* Email: <mailto:msquinn@google.com>
* GitHub mirror: <https://github.com/cran/patrick>

Run `revdepcheck::cloud_details(, "patrick")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         | Differences:
         | `actual`:   FALSE
         | `expected`: TRUE 
         | 
       Backtrace:
           ▆
        1. ├─rlang::eval_tidy(code, args)
        2. └─testthat::expect_failure(testthat::expect_true(case), failure_message) at test-with_parameters.R:22:7
       ── Failure ('test-with_parameters.R:22:7'): Running tests: null ────────────────
       Expected failure message to match regexp "`case` (isn't true|is not TRUE)".
       Actual message:
       x | Expected `case` to be TRUE.
         | Differences:
         | `actual` is NULL
         | `expected` is a logical vector (TRUE)
         | 
       Backtrace:
           ▆
        1. ├─rlang::eval_tidy(code, args)
        2. └─testthat::expect_failure(testthat::expect_true(case), failure_message) at test-with_parameters.R:22:7
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 24 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# PCRedux (1.2-0)

* GitHub: <https://github.com/PCRuniversum/PCRedux>
* Email: <mailto:draspiess@gmail.com>
* GitHub mirror: <https://github.com/cran/PCRedux>

Run `revdepcheck::cloud_details(, "PCRedux")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_mblrr.R:10:3'): mblrr gives the correct dimensions and properties ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(length(res) == 6, is_true()) at test_mblrr.R:10:3
       ── Error ('test_pcrfit_single.R:9:3'): pcrfit_single gives the correct dimensions and properties ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test_pcrfit_single.R:9:3
       ── Error ('test_performeR.R:11:3'): performeR gives the correct dimensions and properties ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test_performeR.R:11:3
       ── Error ('test_qPCR2fdata.R:11:3'): qPCR2fdata gives the correct dimensions and properties ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test_qPCR2fdata.R:11:3
       
       [ FAIL 8 | WARN 0 | SKIP 0 | PASS 23 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# photon (0.3.5)

* GitHub: <https://github.com/jslth/photon>
* Email: <mailto:jonas.lieth@gesis.org>
* GitHub mirror: <https://github.com/cran/photon>

Run `revdepcheck::cloud_details(, "photon")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(photon)
       > 
       > test_check("photon")
       [ FAIL 1 | WARN 0 | SKIP 3 | PASS 49 ]
       
       ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
       • On CRAN (3): 'test-geocode.R:1:1', 'test-setup.R:23:3', 'test-setup.R:49:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-utils.R:59:3'): tibble dependency is soft ────────────────────
       Expected zero successes.
       Actually succeeded 1 times
       Backtrace:
           ▆
        1. ├─testthat::with_mocked_bindings(...) at test-utils.R:59:3
        2. └─testthat::expect_failure(expect_in("tbl", class(as_data_frame(data.frame()))))
       
       [ FAIL 1 | WARN 0 | SKIP 3 | PASS 49 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# pocketapi (0.1)

* GitHub: <https://github.com/CorrelAid/pocketapi>
* Email: <mailto:fr1e@pm.me>
* GitHub mirror: <https://github.com/cran/pocketapi>

Run `revdepcheck::cloud_details(, "pocketapi")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_pocket_tag.R:107:5'): pocket_tag tag_delete - success ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_pocket_tag.R:107:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_pocket_unfavorite.R:22:5'): pocket_unfavorite - success generates message ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_pocket_unfavorite.R:22:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 13 | WARN 0 | SKIP 0 | PASS 45 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘dplyr’
       All declared Imports should be used.
     ```

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# pointblank (0.12.2)

* GitHub: <https://github.com/rstudio/pointblank>
* Email: <mailto:rich@posit.co>
* GitHub mirror: <https://github.com/cran/pointblank>

Run `revdepcheck::cloud_details(, "pointblank")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(pointblank)
       > library(dittodb)
       Loading required package: DBI
       > test_check("pointblank")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1824 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-tidyselect_integration.R:73:3'): Full range of tidyselect features available in column selection ──
       Expected one success.
       Actually succeeded 2 times
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1824 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking data for non-ASCII characters ... NOTE
     ```
       Note: found 1 marked UTF-8 string
     ```

# pollen (0.82.0)

* GitHub: <https://github.com/Nowosad/pollen>
* Email: <mailto:nowosad.jakub@gmail.com>
* GitHub mirror: <https://github.com/cran/pollen>

Run `revdepcheck::cloud_details(, "pollen")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library("testthat")
       > library("pollen")
       > 
       > test_check("pollen")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 7 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-zeros.R:4:3'): zero is zero ────────────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(is_zero(0), is_true()) at test-zeros.R:4:3
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 7 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# prism (0.2.3)

* GitHub: <https://github.com/ropensci/prism>
* Email: <mailto:rabutler@usbr.gov>
* GitHub mirror: <https://github.com/cran/prism>

Run `revdepcheck::cloud_details(, "prism")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       make sure you run this 2x or less in any given day!!!!
       ****************************************
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 186 ]
       
       ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
       • On CRAN (7): 'test-files_download.R:22:3', 'test-files_download.R:125:3',
         'test-files_download.R:189:3', 'test-files_download.R:263:3',
         'test-files_download.R:329:3', 'test-files_download.R:354:3',
         'test-prism_archive_ls.R:5:3'
       • On Linux (1): 'test-prism_set_dl_dir.R:19:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-prism_archive_clean.R:51:3'): prism_archive_clean() works ──────
       Error in `expect_setequal(prism_archive_clean("ppt", "daily", years = 2020), day_delete)`: `object` must be a vector, not `NULL`.
       Backtrace:
           ▆
        1. └─testthat::expect_setequal(object = prism_archive_clean("ppt", "daily", years = 2020)) at test-prism_archive_clean.R:51:3
        2.   └─testthat:::check_vector(object)
        3.     └─testthat:::stop_input_type(x, "a vector", arg = error_arg, call = error_call)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 186 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# productplots (0.1.1)

* GitHub: <https://github.com/hadley/productplots>
* Email: <mailto:hadley@rstudio.com>
* GitHub mirror: <https://github.com/cran/productplots>

Run `revdepcheck::cloud_details(, "productplots")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(productplots)
       > 
       > test_check("productplots")
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 43 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-labels.r:10:3'): hbar, hspine, and fluct all have columns ──────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(div_has_cols(c("hspine", "hbar")), is_true()) at test-labels.r:10:3
       ── Error ('test-labels.r:35:3'): vbar, vspine and fluct all have rows ──────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(div_has_rows(c("hspine", "vbar")), is_true()) at test-labels.r:35:3
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 43 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# projmgr (0.1.1)

* GitHub: <https://github.com/emilyriederer/projmgr>
* Email: <mailto:emilyriederer@gmail.com>
* GitHub mirror: <https://github.com/cran/projmgr>

Run `revdepcheck::cloud_details(, "projmgr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-get-engine.R:33:1'): Repo metadata is added for non-empty results ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...)
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-get-engine.R:41:1'): Repo metadata is not added for non-empty results ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...)
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 1 | SKIP 3 | PASS 106 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# pyinit (1.1.3)

* GitHub: <https://github.com/dakep/pyinit>
* Email: <mailto:david.kepplinger@gmail.com>
* GitHub mirror: <https://github.com/cran/pyinit>

Run `revdepcheck::cloud_details(, "pyinit")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > if (require(testthat)) {
       +   library(pyinit)
       +   test_check("pyinit")
       + } else {
       +   warning("'pyinit' requires 'testthat' for tests.")
       + }
       Loading required package: testthat
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-exact_fit.R:41:5'): Rank-deficient problems ────────────────────
       <rlib_error_package_not_found/rlang_error/error/condition>
       Error in `expect_known_hash(round(res$coefficients[, obj_order], 4), "30f3b173bb32999ace3f3072ed")`: The package "digest" is required.
       Backtrace:
           ▆
        1. └─testthat::expect_known_hash(...) at test-exact_fit.R:41:5
        2.   └─rlang::check_installed("digest")
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# quadmesh (0.5.5)

* GitHub: <https://github.com/hypertidy/quadmesh>
* Email: <mailto:mdsumner@gmail.com>
* GitHub mirror: <https://github.com/cran/quadmesh>

Run `revdepcheck::cloud_details(, "quadmesh")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(quadmesh)
       > 
       > test_check("quadmesh")
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 27 ]
       
       ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
       • On CRAN (1): 'test-texture.R:16:3'
       • empty test (1): 'test-mesh_plot.R:1:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-barycentric.R:17:3'): barycentric index works ──────────────────
       Error in `bi$tri`: $ operator is invalid for atomic vectors
       Backtrace:
           ▆
        1. └─testthat::expect_equal(bi$tri, tri) at test-barycentric.R:17:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─rlang::eval_bare(expr, quo_get_env(quo))
       
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 27 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# Quandl (2.11.0)

* GitHub: <https://github.com/quandl/quandl-r>
* Email: <mailto:dave@quandl.com>
* GitHub mirror: <https://github.com/cran/Quandl>

Run `revdepcheck::cloud_details(, "Quandl")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-pointintime.r:8:1'): (code run outside of `test_that()`) ───────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-pointintime.r:8:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-search.r:4:1'): (code run outside of `test_that()`) ────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-search.r:4:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 6 | WARN 0 | SKIP 2 | PASS 4 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# r2dii.analysis (0.5.2)

* GitHub: <https://github.com/RMI-PACTA/r2dii.analysis>
* Email: <mailto:jacob.kastl@gmail.com>
* GitHub mirror: <https://github.com/cran/r2dii.analysis>

Run `revdepcheck::cloud_details(, "r2dii.analysis")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        [3] "double"    | "double"    [3] 
        [4] "character" | "character" [4] 
        [5] "character" | "character" [5] 
        [6] "character" | "character" [6] 
        [7] "double"    - "character" [7] 
        [8] "double"    - "character" [8] 
        [9] "character" - "double"    [9] 
       [10] "double"    | "double"    [10]
       
       ── Failure ('test-target_sda.R:1034:3'): columns in output match what is documented in `data_dictionary` ──
       Expected `sapply(out, typeof)` to be equal to `setNames(data_dict[["typeof"]], data_dict[["column"]])`.
       Differences:
           names(actual)            | names(expected)             
       [1] "sector"                 - "emission_factor_metric" [1]
       [2] "year"                   - "emission_factor_value"  [2]
       [3] "region"                 | "region"                 [3]
       [4] "scenario_source"        | "scenario_source"        [4]
       [5] "emission_factor_metric" - "sector"                 [5]
       [6] "emission_factor_value"  - "year"                   [6]
       
       
       [ FAIL 5 | WARN 0 | SKIP 4 | PASS 270 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# r2dii.match (0.4.1)

* GitHub: <https://github.com/RMI-PACTA/r2dii.match>
* Email: <mailto:jacob.kastl@gmail.com>
* GitHub mirror: <https://github.com/cran/r2dii.match>

Run `revdepcheck::cloud_details(, "r2dii.match")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       + "name_direct_loantaker"
       - "borderline"
       + "name_ultimate_parent"
       and 6 more ...
       
       `actual[1:4]`:   "character"           "character" "character" "character"
       `expected[1:5]`: "character" "logical" "character" "character" "character"
       
            actual      | expected        
        [7] "character" | "character" [8] 
        [8] "character" | "character" [9] 
        [9] "character" | "character" [10]
       [10] "logical"   - "double"    [11]
       [11] "character" | "character" [12]
       [12] "character" | "character" [13]
       [13] "double"    -                 
       [14] "character" | "character" [14]
       [15] "character" | "character" [15]
       [16] "character" | "character" [16]
       
       
       [ FAIL 3 | WARN 0 | SKIP 1 | PASS 191 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# r2dii.plot (0.5.2)

* GitHub: <https://github.com/RMI-PACTA/r2dii.plot>
* Email: <mailto:monika.furdyna@gmail.com>
* GitHub mirror: <https://github.com/cran/r2dii.plot>

Run `revdepcheck::cloud_details(, "r2dii.plot")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       + "sector"
       - "scope"
       + "technology"
       - "percentage_of_initial_production_by_scope"
       + "technology_share"
       and 2 more ...
       
            actual      | expected                  
        [1] "character" | "character" [1]           
        [2] "character" | "character" [2]           
        [3] "integer"   - "double"    [3]           
        [4] "character" - "double"    [4]           
        [5] "character" | "character" [5]           
        [6] "character" | "character" [6]           
        [7] "double"    - "character" [7]           
        [8] "double"    - "character" [8]           
        [9] "character" | "character" [9]           
       [10] "double"    | "double"    [10]          
        ... ...           ...         and 2 more ...
       
       
       [ FAIL 3 | WARN 0 | SKIP 41 | PASS 133 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# rags2ridges (2.2.8)

* GitHub: <https://github.com/CFWP/rags2ridges>
* Email: <mailto:carel.peeters@wur.nl>
* GitHub mirror: <https://github.com/cran/rags2ridges>

Run `revdepcheck::cloud_details(, "rags2ridges")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-armaRidgeP.R:97:7'): proper values for very small lambda, type = Null ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(all(abs(aa) <= abs(bb)), is_true()) at test-armaRidgeP.R:97:7
       ── Error ('test-armaRidgeP.R:120:3'): Test armaRidgeP in various special cases (by reference) ──
       Error in `is_false()`: could not find function "is_false"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test-armaRidgeP.R:120:3
       ── Error ('test-isSymmetricPD.R:29:3'): isSymmetricPD works as intended ────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(isSymmetricPD(pdS), is_true()) at test-isSymmetricPD.R:29:3
       ── Error ('test-xfcvl.R:26:3'): .xfcl functions works properly on degenerated data ──
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(TRUE, is_true()) at test-xfcvl.R:26:3
       
       [ FAIL 830 | WARN 320 | SKIP 0 | PASS 984 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  6.3Mb
       sub-directories of 1Mb or more:
         libs   5.1Mb
     ```

# rbedrock (0.4.1)

* GitHub: <https://github.com/reedacartwright/rbedrock>
* Email: <mailto:racartwright@gmail.com>
* GitHub mirror: <https://github.com/cran/rbedrock>

Run `revdepcheck::cloud_details(, "rbedrock")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected `dat[["chunk:37:15:0:59"]]` to be equal to `original_dat[["chunk:37:15:0:59"]]`.
       Differences:
           names(actual)        | names(expected)         
       [1] "chunk:37:15:0:45"   | "chunk:37:15:0:45"   [1]
       [2] "chunk:37:15:0:47:0" - "chunk:37:15:0:47:4" [2]
       [3] "chunk:37:15:0:47:1" - "chunk:37:15:0:47:3" [3]
       [4] "chunk:37:15:0:47:2" - "chunk:37:15:0:49"   [4]
       [5] "chunk:37:15:0:47:3" - "chunk:37:15:0:47:2" [5]
       [6] "chunk:37:15:0:47:4" - "chunk:37:15:0:47:1" [6]
       [7] "chunk:37:15:0:49"   - "chunk:37:15:0:47:0" [7]
       
           actual             | expected              
       [1] "968fbe5eac1df189" | "968fbe5eac1df189" [1]
       [2] "c2ef515c775cfbc3" - "f824fbf1a4758e68" [2]
       [3] "87d69f8d9fa15478" - "f9a08eb7b8b46589" [3]
       [4] "0330135a1b88f2de" - "53a23166a81fcbe3" [4]
       [5] "f9a08eb7b8b46589" - "0330135a1b88f2de" [5]
       [6] "f824fbf1a4758e68" - "87d69f8d9fa15478" [6]
       [7] "53a23166a81fcbe3" - "c2ef515c775cfbc3" [7]
       
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 670 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  7.4Mb
       sub-directories of 1Mb or more:
         extdata   1.1Mb
         libs      5.7Mb
     ```

*   checking for GNU extensions in Makefiles ... NOTE
     ```
     GNU make is a SystemRequirements.
     ```

# regmedint (1.0.1)

* GitHub: <https://github.com/kaz-yos/regmedint>
* Email: <mailto:yi.li10@mail.mcgill.ca>
* GitHub mirror: <https://github.com/cran/regmedint>

Run `revdepcheck::cloud_details(, "regmedint")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-05_calc_myreg.R:194:9'): calc_myreg / calls calc_myreg_mreg_logistic_yreg_linear when mreg logistic / yreg linear ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-05_calc_myreg.R:194:9
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-05_calc_myreg.R:235:9'): calc_myreg / calls calc_myreg_mreg_logistic_yreg_logistic when mreg logistic / yreg logistic ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-05_calc_myreg.R:235:9
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 0 | SKIP 2 | PASS 4128 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘Deriv’
       All declared Imports should be used.
     ```

# Rexperigen (0.2.1)

* GitHub: <https://github.com/aquincum/Rexperigen>
* Email: <mailto:daniel@szeredi.hu>
* GitHub mirror: <https://github.com/cran/Rexperigen>

Run `revdepcheck::cloud_details(, "Rexperigen")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-utils.R:108:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Failure ('test-zzz.R:7:3'): initialization is okay ──────────────────────────
       Expected `getOption("Rexperigen.experimenter")` to equal "".
       Differences:
       1/1 mismatches
       x[1]: "alma"
       y[1]: ""
       ── Failure ('test-zzz.R:8:3'): initialization is okay ──────────────────────────
       Expected `getOption("Rexperigen.password")` to equal "".
       Differences:
       1/1 mismatches
       x[1]: "korte"
       y[1]: ""
       
       [ FAIL 17 | WARN 0 | SKIP 0 | PASS 23 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# rjstat (0.4.3)

* GitHub: <https://github.com/ajschumacher/rjstat>
* Email: <mailto:ajschumacher@gmail.com>
* GitHub mirror: <https://github.com/cran/rjstat>

Run `revdepcheck::cloud_details(, "rjstat")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-classes.R:4:5'): dataset responses work ────────────────────────
       <subscriptOutOfBoundsError/error/condition>
       Error in `object[[name, exact = TRUE]]`: subscript out of bounds
       Backtrace:
           ▆
        1. ├─... %>% expect_equal(1) at test-classes.R:4:5
        2. ├─testthat::expect_equal(., 1)
        3. │ └─testthat::quasi_label(enquo(object), label)
        4. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        5. └─base::getElement(., "value")
       ── Error ('test-classes.R:12:5'): collection responses work ────────────────────
       <subscriptOutOfBoundsError/error/condition>
       Error in `object[[name, exact = TRUE]]`: subscript out of bounds
       Backtrace:
           ▆
        1. ├─... %>% expect_equal(1) at test-classes.R:12:5
        2. ├─testthat::expect_equal(., 1)
        3. │ └─testthat::quasi_label(enquo(object), label)
        4. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        5. └─base::getElement(., "value")
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 141 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# rlang (1.1.6)

* GitHub: <https://github.com/r-lib/rlang>
* Email: <mailto:lionel@posit.co>
* GitHub mirror: <https://github.com/cran/rlang>

Run `revdepcheck::cloud_details(, "rlang")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error in `quasi_label(enquo(object), label)`: argument "value" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect_equal(quo_squash(missing_arg()), missing_arg()) at test-quo.R:311:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─testthat:::labelled_value(value, label)
       ── Error ('test-s3.R:99:3'): done() can be empty ───────────────────────────────
       Error in `quasi_label(enquo(object), label)`: argument "value" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect_identical(unbox(empty), missing_arg()) at test-s3.R:99:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─testthat:::labelled_value(value, label)
       ── Error ('test-sym.R:17:3'): empty string is treated as the missing argument ──
       Error in `quasi_label(enquo(object), label)`: argument "value" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect_identical(sym(""), missing_arg()) at test-sym.R:17:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─testthat:::labelled_value(value, label)
       
       [ FAIL 8 | WARN 1 | SKIP 251 | PASS 3797 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking package dependencies ... NOTE
     ```
     Package which this enhances but not available for checking: ‘winch’
     ```

# rosetteApi (1.14.4)

* Email: <mailto:seth@basistech.com>
* GitHub mirror: <https://github.com/cran/rosetteApi>

Run `revdepcheck::cloud_details(, "rosetteApi")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_api.R:3:3'): httr::GET function mocks correctly ────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_api.R:3:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_api.R:14:3'): httr::POST functions mock correctly ──────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_api.R:14:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 13 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# Rpolyhedra (0.5.6)

* GitHub: <https://github.com/ropensci/Rpolyhedra>
* Email: <mailto:abaranek@dc.uba.ar>
* GitHub mirror: <https://github.com/cran/Rpolyhedra>

Run `revdepcheck::cloud_details(, "Rpolyhedra")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       appenders:
         console: <AppenderConsole> [all] -> console
       > #' getDataDirMockedTest mocked function for a temp dest folder for testing proposes
       > 
       > 
       > 
       > testthat::test_check("Rpolyhedra")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 646 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_package_lib.R:22:3'): test on package lib functions ────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_package_lib.R:22:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 646 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# RPresto (1.4.7)

* GitHub: <https://github.com/prestodb/RPresto>
* Email: <mailto:jarodm@fb.com>
* GitHub mirror: <https://github.com/cran/RPresto>

Run `revdepcheck::cloud_details(, "RPresto")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─RPresto:::setup_mock_dplyr_connection() at test-db_query_fields.R:39:3
        2.   └─testthat::with_mock(...) at ./helper-mock_connection.R:38:3
        3.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        4.       └─lifecycle:::deprecate_stop0(msg)
        5.         └─rlang::cnd_signal(...)
       ── Error ('test-fetch.R:26:3'): fetch works with mock ──────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─RPresto:::setup_mock_connection() at test-fetch.R:26:3
        2.   └─testthat::with_mock(...) at ./helper-mock_connection.R:8:3
        3.     └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        4.       └─lifecycle:::deprecate_stop0(msg)
        5.         └─rlang::cnd_signal(...)
       
       [ FAIL 30 | WARN 0 | SKIP 83 | PASS 36 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# RTD (0.4.1)

* GitHub: <https://github.com/treasure-data/RTD>
* Email: <mailto:ariga@treasure-data.com>
* GitHub mirror: <https://github.com/cran/RTD>

Run `revdepcheck::cloud_details(, "RTD")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-td.R:12:3'): td_upload works with mock ─────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-td.R:12:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-td.R:32:3'): td_upload works with mock when the table already exists ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-td.R:32:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# saeSim (0.11.0)

* GitHub: <https://github.com/wahani/saeSim>
* Email: <mailto:wahani@gmail.com>
* GitHub mirror: <https://github.com/cran/saeSim>

Run `revdepcheck::cloud_details(, "saeSim")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       
       [ FAIL 3 | WARN 249 | SKIP 0 | PASS 128 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-sim.R:38:3'): Method for sim_setup ─────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test-sim.R:38:3
       ── Error ('test-sim_comp.R:27:3'): sim_comp and comp_var ───────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test-sim_comp.R:27:3
       ── Error ('test-sim_setup.R:8:3'): sim_setup ───────────────────────────────────
       Error in `is_true()`: could not find function "is_true"
       Backtrace:
           ▆
        1. └─testthat::expect_that(...) at test-sim_setup.R:8:3
       
       [ FAIL 3 | WARN 249 | SKIP 0 | PASS 128 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) sim_setup_preconfigured.Rd:24: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:25: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:26: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:27: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:28: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:29: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:30: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) sim_setup_preconfigured.Rd:31: Lost braces in \itemize; meant \describe ?
     ```

# scorematchingad (0.1.4)

* GitHub: <https://github.com/kasselhingee/scorematchingad>
* Email: <mailto:kassel.hingee@anu.edu.au>
* GitHub mirror: <https://github.com/cran/scorematchingad>

Run `revdepcheck::cloud_details(, "scorematchingad")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       • Only for research. (1): 'test-FB.R:97:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-vMF.R:102:3'): vMF matches for simulated weights, ignoring SE, which shouldn't match ──
       Expected `dir3_m` to be equal to `vMF_m(Y)`.
       Differences:
         `actual`: -0.579 0.722 -0.380
       `expected`: -0.384 0.824 -0.417
       
       Backtrace:
           ▆
        1. ├─testthat::expect_error(expect_equal(dir3_m, vMF_m(Y)), "not equal to") at test-vMF.R:102:3
        2. │ └─testthat:::expect_condition_matching_(...)
        3. │   └─testthat:::quasi_capture(...)
        4. │     ├─testthat (local) .capture(...)
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─testthat::expect_equal(dir3_m, vMF_m(Y))
       ── Failure ('test-vMF.R:102:3'): vMF matches for simulated weights, ignoring SE, which shouldn't match ──
       Expected `expect_equal(dir3_m, vMF_m(Y))` to throw a error.
       
       [ FAIL 2 | WARN 0 | SKIP 18 | PASS 427 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is 42.2Mb
       sub-directories of 1Mb or more:
         cppad    10.2Mb
         include   4.9Mb
         libs     26.3Mb
     ```

# seqminer (9.7)

* GitHub: <https://github.com/zhanxw/seqminer>
* Email: <mailto:zhanxw@gmail.com>
* GitHub mirror: <https://github.com/cran/seqminer>

Run `revdepcheck::cloud_details(, "seqminer")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       last character is s[after_chrom_size-1] = 0
       Indexing finished with 3 samples and 166 markers
       created index file [ /tmp/Rtmp3MTzV6/file17a05f7ac0fd ]
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 72 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-vcf.R:167:5'): createSingleChromosomeVCFIndex ──────────────────
       Error in `expect(nchar(cfh) > 0)`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(nchar(cfh) > 0) at test-vcf.R:167:5
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       ── Error ('test-vcf.R:181:5'): createSingleChromosomeBCFIndex ──────────────────
       Error in `expect(nchar(cfh) > 0)`: argument "failure_message" is missing, with no default
       Backtrace:
           ▆
        1. └─testthat::expect(nchar(cfh) > 0) at test-vcf.R:181:5
        2.   └─testthat::succeed(failure_message)
        3.     └─base::paste(c(message, info), collapse = "\n")
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 72 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is 14.9Mb
       sub-directories of 1Mb or more:
         libs  13.3Mb
     ```

*   checking for GNU extensions in Makefiles ... NOTE
     ```
     GNU make is a SystemRequirements.
     ```

# seriation (1.5.8)

* GitHub: <https://github.com/mhahsler/seriation>
* Email: <mailto:mhahsler@lyle.smu.edu>
* GitHub mirror: <https://github.com/cran/seriation>

Run `revdepcheck::cloud_details(, "seriation")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `expected` is a double vector (1, 2, 3, 4)
       
       ── Failure ('test-seriate.R:140:5'): test if seriate.dist returns expected results ──
       Expected `o` to be equal to `c(a = 1, b = 2, c = 3, d = 4)`.
       Differences:
       `actual` is an integer vector (1, 2, 4, 3)
       `expected` is a double vector (1, 2, 3, 4)
       
       ── Failure ('test-seriate.R:140:5'): test if seriate.dist returns expected results ──
       Expected `o` to be equal to `c(a = 1, b = 2, c = 3, d = 4)`.
       Differences:
       `actual` is an integer vector (1, 4, 2, 3)
       `expected` is a double vector (1, 2, 3, 4)
       
       ── Failure ('test-seriate.R:140:5'): test if seriate.dist returns expected results ──
       Expected `o` to be equal to `c(a = 1, b = 2, c = 3, d = 4)`.
       Differences:
       `actual` is an integer vector (3, 4, 2, 1)
       `expected` is a double vector (1, 2, 3, 4)
       
       
       [ FAIL 47 | WARN 0 | SKIP 1 | PASS 391 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     Error(s) in re-building vignettes:
       ...
     --- re-building ‘seriation.Rnw’ using Sweave
     Error: processing vignette 'seriation.Rnw' failed with diagnostics:
     Running 'texi2dvi' on 'seriation.tex' failed.
     LaTeX errors:
     ! Package babel Error: Unknown option 'english'. Either you misspelled it
     (babel)                or the language definition file english.ldf
     (babel)                was not found.
     (babel)                There is a locale ini file for this language.
     (babel)                If it’s the main language, try adding `provide=*'
     ! Emergency stop.
      ...                                              
                                                       
     l.4208 \ProcessOptions*
                            
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘seriation.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘seriation.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# shiny (1.11.1)

* GitHub: <https://github.com/rstudio/shiny>
* Email: <mailto:winston@posit.co>
* GitHub mirror: <https://github.com/cran/shiny>

Run `revdepcheck::cloud_details(, "shiny")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `actual` is a character vector ('Shiny App Test Results\nv Success\n  - app1-standard/tests/runner1.R\n  - app1-standard/tests/runner2.R')
       `expected` is an S3 object of class <data.frame>, a list
       
       ── Failure ('test-test-runTests.R:134:3'): runTests runs as expected without rewiring ──
       Expected `df` to be an S3 object.
       Actual OO type: none.
       ── Error ('test-test-server-app.R:46:3'): runTests works with a dir app that calls modules and uses testServer ──
       Error in `run$pass`: $ operator is invalid for atomic vectors
       Backtrace:
           ▆
        1. └─testthat::expect_true(all(run$pass)) at test-test-server-app.R:46:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─rlang::eval_bare(expr, quo_get_env(quo))
       ── Error ('test-test-server-app.R:55:3'): runTests works with a dir app that calls modules that return reactives and use brushing ──
       Error in `run$pass`: $ operator is invalid for atomic vectors
       Backtrace:
           ▆
        1. └─testthat::expect_true(all(run$pass)) at test-test-server-app.R:55:3
        2.   └─testthat::quasi_label(enquo(object), label)
        3.     └─rlang::eval_bare(expr, quo_get_env(quo))
       
       [ FAIL 4 | WARN 0 | SKIP 19 | PASS 1642 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is 13.0Mb
       sub-directories of 1Mb or more:
         R      3.5Mb
         help   1.7Mb
         www    6.8Mb
     ```

# shiny.benchmark (0.1.1)

* GitHub: <https://github.com/Appsilon/shiny.benchmark>
* Email: <mailto:opensource+douglas@appsilon.com>
* GitHub mirror: <https://github.com/cran/shiny.benchmark>

Run `revdepcheck::cloud_details(, "shiny.benchmark")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Backtrace:
           ▆
        1. └─base::eval(...)
        2.   └─base::eval(...)
        3.     └─testthat::local_mock(menu = function(...) stop("Opps, shouldn't reach this")) at test-load_example.R:52:5
        4.       └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
        5.         └─lifecycle:::deprecate_stop0(msg)
        6.           └─rlang::cnd_signal(...)
       ── Error ('test-load_example.R:74:5'): Does not create load_examples if there is a file in directory ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `local_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `local_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─base::eval(...)
        2.   └─base::eval(...)
        3.     └─testthat::local_mock(menu = function(...) 2) at test-load_example.R:74:5
        4.       └─lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
        5.         └─lifecycle:::deprecate_stop0(msg)
        6.           └─rlang::cnd_signal(...)
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 7 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# shinyShortcut (0.1.0)

* Email: <mailto:ewan.keith100@gmail.com>
* GitHub mirror: <https://github.com/cran/shinyShortcut>

Run `revdepcheck::cloud_details(, "shinyShortcut")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(shinyShortcut)
       > 
       > test_check("shinyShortcut")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-shinyShortcut.R:5:3'): ShinyShorcut returns the correct files ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-shinyShortcut.R:5:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# SIAtools (0.1.3)

* Email: <mailto:netik@cs.cas.cz>
* GitHub mirror: <https://github.com/cran/SIAtools>

Run `revdepcheck::cloud_details(, "SIAtools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • On CRAN (4): 'test-add_module.R:33:1', 'test-add_module.R:66:1',
         'test-add_module.R:73:1', 'test-add_module.R:92:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-get_modules.R:76:3'): manifest prints out correctly ────────────
       Error in `parse(text = x)`: <text>:5:19: unexpected symbol
       4:   sm_test:
       5:     title: CHANGE THIS
                            ^
       Backtrace:
           ▆
        1. ├─get_modules() %>% print(as_tibble = TRUE) %>% ... at test-get_modules.R:76:3
        2. └─testthat::expect_snapshot_value(., style = "deparse", cran = TRUE)
        3.   └─testthat:::expect_snapshot_helper(...)
        4.     └─snapshotter$take_snapshot(...)
        5.       └─testthat (local) load(old_raw)
        6.         └─testthat:::reparse(x)
        7.           ├─base::eval(parse(text = x), env)
        8.           └─base::parse(text = x)
       
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 65 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# SpaDES.tools (2.0.7)

* GitHub: <https://github.com/PredictiveEcology/SpaDES.tools>
* Email: <mailto:achubaty@for-cast.ca>
* GitHub mirror: <https://github.com/cran/SpaDES.tools>

Run `revdepcheck::cloud_details(, "SpaDES.tools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       `expected`: 100.0
       
       ── Failure ('test-spread.R:64:5'): spread produces legal RasterLayer ───────────
       Expected `length(spreadState[["indices"]])` to be equal to `maxSize1`.
       Differences:
         `actual`:   4.0
       `expected`: 100.0
       
       ── Failure ('test-spread.R:63:5'): spread produces legal RasterLayer ───────────
       Expected `length(unique(spreadState[["indices"]]))` to be equal to `maxSize1`.
       Differences:
         `actual`:   4.0
       `expected`: 100.0
       
       ── Failure ('test-spread.R:64:5'): spread produces legal RasterLayer ───────────
       Expected `length(spreadState[["indices"]])` to be equal to `maxSize1`.
       Differences:
         `actual`:   4.0
       `expected`: 100.0
       
       
       [ FAIL 4 | WARN 0 | SKIP 3 | PASS 2256 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# spaero (0.6.0)

* GitHub: <https://github.com/e3bo/spaero>
* Email: <mailto:odea35@gmail.com>
* GitHub mirror: <https://github.com/cran/spaero>

Run `revdepcheck::cloud_details(, "spaero")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > test_check("spaero")
       [ FAIL 1 | WARN 4 | SKIP 7 | PASS 47 ]
       
       ══ Skipped tests (7) ═══════════════════════════════════════════════════════════
       • On CRAN (6): 'test-simulator.R:60:3', 'test-simulator.R:82:3',
         'test-simulator.R:157:3', 'test-simulator.R:190:3', 'test-stats.R:118:3',
         'test-stats.R:237:3'
       • {earlywarnings} is not installed (1): 'test-stats.R:303:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-simulator.R:6:3'): Argument checking works ─────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-simulator.R:6:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 4 | SKIP 7 | PASS 47 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking package dependencies ... NOTE
     ```
     Package suggested but not available for checking: ‘earlywarnings’
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘utils’
       All declared Imports should be used.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘earlywarnings’ in Rd xrefs
     ```

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# spatialsample (0.6.0)

* GitHub: <https://github.com/tidymodels/spatialsample>
* Email: <mailto:mike.mahoney.218@gmail.com>
* GitHub mirror: <https://github.com/cran/spatialsample>

Run `revdepcheck::cloud_details(, "spatialsample")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-spatial_vfold_cv.R:200:3'): bad args ───────────────────────────
       Error in `rsample::vfold_cv(data = data, v = v, repeats = repeats, strata = {     {         strata     } }, breaks = breaks, pool = pool, ...)`: Leave-one-out cross-validation is not supported by this function.
       x You set `v` to `nrow(data)`, which would result in a leave-one-out cross-validation.
       i Use `loo_cv()` in this case.
       Backtrace:
           ▆
        1. └─spatialsample::spatial_buffer_vfold_cv(...)
        2.   └─rsample::vfold_cv(...)
        3.     └─rsample:::vfold_splits(...)
        4.       └─rsample:::check_v(v, n, prevent_loo = prevent_loo, call = rlang::caller_env())
        5.         └─cli::cli_abort(...)
        6.           └─rlang::abort(...)
       
       [ FAIL 1 | WARN 0 | SKIP 26 | PASS 535 ]
       Deleting unused snapshots: 'autoplot/buffered-llo-set-plot.svg',
       'autoplot/buffered-llo-split-plot.svg', 'autoplot/buffered-rsample-plot.svg',
       'autoplot/buffered-rset-plot.svg', 'autoplot/buffered-vfold-plot.svg',
       'autoplot/buffered-vfold-split.svg', 'autoplot/repeated-block-cv.svg',
       'autoplot/repeated-llo.svg', 'autoplot/repeated-vfold.svg', and
       'autoplot/snake-flips-rows-the-right-way.svg'
       Error:
       ! Test failures.
       Execution halted
     ```

# spex (0.7.1)

* GitHub: <https://github.com/mdsumner/spex>
* Email: <mailto:mdsumner@gmail.com>
* GitHub mirror: <https://github.com/cran/spex>

Run `revdepcheck::cloud_details(, "spex")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > library(spex)
       > 
       > test_check("spex")
       [ FAIL 2 | WARN 0 | SKIP 1 | PASS 33 ]
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • empty test (1): 'test-sf-buf.R:1:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-sf-from-raster.R:25:3'): we can also qm_raster here ──────────
       Expected `.` to be an S3 object.
       Actual OO type: none.
       Backtrace:
           ▆
        1. ├─... %>% expect_s3_class("sf") at test-sf-from-raster.R:25:3
        2. └─testthat::expect_s3_class(., "sf")
       ── Failure ('test-sf-from-raster.R:28:3'): we can also qm_raster here ──────────
       Expected `nrow(pd)` to equal 5694.
       Differences:
       target is NULL, current is numeric
       
       [ FAIL 2 | WARN 0 | SKIP 1 | PASS 33 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# tabularaster (0.7.2)

* GitHub: <https://github.com/hypertidy/tabularaster>
* Email: <mailto:mdsumner@gmail.com>
* GitHub mirror: <https://github.com/cran/tabularaster>

Run `revdepcheck::cloud_details(, "tabularaster")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected `.` to be an S3 object.
       Actual OO type: none.
       Backtrace:
           ▆
        1. ├─testthat::expect_message(...) at test-all-major-funs.R:11:3
        2. │ └─testthat:::quasi_capture(enquo(object), label, capture_messages)
        3. │   ├─testthat (local) .capture(...)
        4. │   │ └─base::withCallingHandlers(...)
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. ├─... %>% expect_s3_class("tbl_df")
        7. └─testthat::expect_s3_class(., "tbl_df")
       ── Failure ('test-all-major-funs.R:12:3'): cellnumber extraction is available ──
       Expected `x` to equal `expected`.
       Differences:
       target is NULL, current is numeric
       Backtrace:
           ▆
        1. └─testthat::expect_that(nrow(tib), equals(917L)) at test-all-major-funs.R:12:3
        2.   └─testthat (local) condition(object)
        3.     └─testthat::expect_equal(x, expected, ..., expected.label = label)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 23 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# testdat (0.4.3)

* GitHub: <https://github.com/socialresearchcentre/testdat>
* Email: <mailto:danny@gorcha.org>
* GitHub mirror: <https://github.com/cran/testdat>

Run `revdepcheck::cloud_details(, "testdat")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected `x_xl_summary` to equal `xl_summary`.
       Differences:
       Component "tests": Mean relative difference: 0.5
       Component "failed": Mean relative difference: 0.5
       ── Failure ('test-reporter_excel.R:47:3'): excel_results ───────────────────────
       Expected `x_xl_failing` to equal `xl_failing`.
       Differences:
       Attributes: < Component "row.names": Numeric: lengths (4, 2) differ >
       Component "context": Lengths (4, 2) differ (string compare on first 2)
       Component "test": Lengths (4, 2) differ (string compare on first 2)
       Component "status": Lengths (4, 2) differ (string compare on first 2)
       Component "variable": Lengths (4, 2) differ (string compare on first 2)
       Component "variable": 'is.NA' value mismatch: 0 in current 1 in target
       Component "description": Lengths (4, 2) differ (string compare on first 2)
       Component "description": 1 string mismatch
       Component "failed_records": Numeric: lengths (4, 2) differ
       ...
       ── Failure ('test-testdata.R:9:3'): set_testdata/get_testdata work correctly ───
       Expected one failure.
       Actually failed 2 times
       
       [ FAIL 95 | WARN 0 | SKIP 0 | PASS 111 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# texreg (1.39.4)

* GitHub: <https://github.com/leifeld/texreg>
* Email: <mailto:philip.leifeld@manchester.ac.uk>
* GitHub mirror: <https://github.com/cran/texreg>

Run `revdepcheck::cloud_details(, "texreg")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-huxtablereg.R:13:3'): huxtablereg gives useful error message if huxtable not installed ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-huxtablereg.R:13:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-texreg.R:319:3'): knitreg function works ───────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-texreg.R:319:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 2 | WARN 1 | SKIP 33 | PASS 201 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     Error(s) in re-building vignettes:
       ...
     --- re-building ‘texreg.Rnw’ using Sweave
     Error: processing vignette 'texreg.Rnw' failed with diagnostics:
     Running 'texi2dvi' on 'texreg.tex' failed.
     LaTeX errors:
     ! LaTeX Error: File `thumbpdf.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.8 ^^M
            
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘texreg.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘texreg.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking package dependencies ... NOTE
     ```
     Packages which this enhances but not available for checking:
       'AER', 'alpaca', 'betareg', 'Bergm', 'bife', 'biglm', 'brglm',
       'brms', 'btergm', 'dynlm', 'eha', 'ergm', 'feisr', 'fGarch',
       'fixest', 'forecast', 'gamlss', 'gamlss.inf', 'gee', 'glmmTMB',
       'gmm', 'gnm', 'h2o', 'latentnet', 'lfe', 'logitr', 'lqmm', 'maxLik',
       'metaSEM', 'mfx', 'mhurdle', 'miceadds', 'mlogit', 'MuMIn', 'oglmx',
       'ordinal', 'pglm', 'plm', 'relevent', 'remify', 'remstats',
       'remstimate', 'rms', 'robust', 'simex', 'spatialreg', 'spdep',
       'speedglm', 'truncreg', 'VGAM'
     ```

*   checking Rd cross-references ... NOTE
     ```
     Packages unavailable to check Rd xrefs: ‘h2o’, ‘spatialreg’, ‘eha’, ‘MuMIn’, ‘Bergm’, ‘mfx’, ‘betareg’, ‘bife’, ‘biglm’, ‘brglm’, ‘brms’, ‘btergm’, ‘ordinal’, ‘dynlm’, ‘ergm’, ‘latentnet’, ‘forecast’, ‘fGarch’, ‘alpaca’, ‘feisr’, ‘lfe’, ‘fixest’, ‘gamlss’, ‘gamlss.inf’, ‘gee’, ‘gmm’, ‘miceadds’, ‘glmmTMB’, ‘gnm’, ‘AER’, ‘robust’, ‘lqmm’, ‘rms’, ‘maxLik’, ‘mhurdle’, ‘mlogit’, ‘plm’, ‘pglm’, ‘relevent’, ‘remstimate’, ‘simex’, ‘speedglm’, ‘truncreg’, ‘VGAM’, ‘metaSEM’
     Unknown package ‘oglmx’ in Rd xrefs
     ```

# ThankYouStars (0.2.0)

* GitHub: <https://github.com/ksmzn/ThankYouStars>
* Email: <mailto:orehacks@gmail.com>
* GitHub mirror: <https://github.com/cran/ThankYouStars>

Run `revdepcheck::cloud_details(, "ThankYouStars")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(ThankYouStars)
       > 
       > test_check("ThankYouStars")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-starring.R:3:1'): (code run outside of `test_that()`) ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-starring.R:3:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking LazyData ... NOTE
     ```
       'LazyData' is specified without a 'data' directory
     ```

# tibblify (0.3.1)

* GitHub: <https://github.com/mgirlich/tibblify>
* Email: <mailto:maximilian.girlich@outlook.com>
* GitHub mirror: <https://github.com/cran/tibblify>

Run `revdepcheck::cloud_details(, "tibblify")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         'test-tibblify.R:573:1', 'test-tibblify.R:852:3', 'test-tibblify.R:1138:1',
         'test-tibblify.R:1158:1', 'test-tibblify.R:1223:1', 'test-tibblify.R:1308:1',
         'test-tibblify.R:1397:1', 'test-tibblify.R:1405:1', 'test-tibblify.R:1467:1',
         'test-tibblify.R:1473:1', 'test-tibblify.R:1484:1',
         'test-unnest-tree.R:39:1', 'test-unnest-tree.R:190:1',
         'test-unnest-tree.R:257:1', 'test-unpack-tspec.R:75:1',
         'test-unpack-tspec.R:122:1', 'test-untibblify.R:185:1'
       • improve guessing logic (1): 'test-spec_guess_object_list.R:128:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-unnest-tree.R:34:3'): checks arguments ─────────────────────────
       Error in `UseMethod("parse_all")`: no applicable method for 'parse_all' applied to an object of class "NULL"
       Backtrace:
           ▆
        1. └─testthat::expect_snapshot(...) at test-unnest-tree.R:34:3
        2.   └─testthat:::expect_snapshot_(...)
        3.     ├─testthat:::with_is_snapshotting(...)
        4.     └─testthat:::verify_exec(quo_get_expr(x), quo_get_env(x), replay)
        5.       └─evaluate::evaluate(source, envir = env, new_device = FALSE, output_handler = handler)
        6.         └─evaluate::parse_all(input, filename = filename)
       
       [ FAIL 1 | WARN 0 | SKIP 85 | PASS 541 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘lifecycle’
       All declared Imports should be used.
     ```

# tinyProject (0.6.1)

* Email: <mailto:guillem.francois@gmail.com>
* GitHub mirror: <https://github.com/cran/tinyProject>

Run `revdepcheck::cloud_details(, "tinyProject")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(tinyProject)
       > 
       > test_check("tinyProject")
       [ FAIL 1 | WARN 5 | SKIP 0 | PASS 73 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-commandArgs.R:3:1'): (code run outside of `test_that()`) ───────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-commandArgs.R:3:1
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 5 | SKIP 0 | PASS 73 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# trip (1.10.0)

* GitHub: <https://github.com/Trackage/trip>
* Email: <mailto:mdsumner@gmail.com>
* GitHub mirror: <https://github.com/cran/trip>

Run `revdepcheck::cloud_details(, "trip")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 110 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-summary.R:8:3'): summary of trip works ───────────────────────
       Expected `lengths(ss[snames[-1]])` to equal `c(...)`.
       Differences:
       names for current but not for target
       ── Failure ('test-summary.R:13:3'): summary of trip works ──────────────────────
       Expected names(`as.data.frame(ss)`) to be equal to `c(...)`.
       Differences:
           actual | expected          
       [1] "ss"   - "tripID"       [1]
                  - "No.Records"   [2]
                  - "startTime"    [3]
                  - "endTime"      [4]
                  - "tripDuration" [5]
                  - "tripDistance" [6]
                  - "meanSpeed"    [7]
                  - "maxSpeed"     [8]
       
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 110 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# tryCatchLog (1.3.1)

* GitHub: <https://github.com/aryoda/tryCatchLog>
* Email: <mailto:jaltfeld@altfeld-im.de>
* GitHub mirror: <https://github.com/cran/tryCatchLog>

Run `revdepcheck::cloud_details(, "tryCatchLog")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test_namespace_hooks.R:36:3'): internal package state is initialized ─────────────────────────────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_namespace_hooks.R:36:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test_platform_functions.R:37:3'): OS-specific newlines work ──────────────────────────────────────────────────────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test_platform_functions.R:37:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 0 | SKIP 0 | PASS 436 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking dependencies in R code ... NOTE
     ```
     There are ::: calls to the package's namespace in its code. A package
       almost never needs to use ::: for its own objects:
       ‘log2console’
     ```

# vein (1.3.0)

* GitHub: <https://github.com/atmoschem/vein>
* Email: <mailto:zergioibarra@gmail.com>
* GitHub mirror: <https://github.com/cran/vein>

Run `revdepcheck::cloud_details(, "vein")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Number of lon points: 12
       Number of lat points: 11
       
       Total Emissions 2095.073  kg 
       Intersecting
       Total Emissions 2095.073  kg 
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 640 ]
       
       ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
       • empty test (2): ,
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-make_grid.R:26:3'): emis_grid warning ──────────────────────────
       Error in `expect_warning(make_grid(b, 1/102.47/2, crs = "+init=epsg:31983")$id[1], 1)`: `regexp` must be a single string, `NA`, or `NULL`, not the number 1.
       Backtrace:
           ▆
        1. └─testthat::expect_warning(regexp = 1) at test-make_grid.R:26:3
        2.   └─testthat:::check_string(regexp, allow_null = TRUE, allow_na = TRUE)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 640 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking data for non-ASCII characters ... NOTE
     ```
       Note: found 49 marked UTF-8 strings
     ```

# WhatIf (1.5-10)

* GitHub: <https://github.com/IQSS/WhatIf>
* Email: <mailto:soubhikbarari@gmail.com>
* GitHub mirror: <https://github.com/cran/WhatIf>

Run `revdepcheck::cloud_details(, "WhatIf")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         |===================================================================== |  99%
         |                                                                            
         |======================================================================| 100%
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 2 ]
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • On CRAN (4): 'test-whatif.R:9:5', 'test-whatif.R:32:5', 'test-whatif.R:55:5',
         'test-whatif_convexhull.R:2:5'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-whatif_convexhull.R:16:5'): REQUIRE TEST multitreaded ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-whatif_convexhull.R:16:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 2 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# whirl (0.3.1)

* GitHub: <https://github.com/NovoNordisk-OpenSource/whirl>
* Email: <mailto:oath@novonordisk.com>
* GitHub mirror: <https://github.com/cran/whirl>

Run `revdepcheck::cloud_details(, "whirl")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         'test-run.R:151:3', 'test-strace.R:42:3', 'test-whirl_queue.R:1:1'
       • On Linux (1): 'test-strace.R:82:3'
       • Quarto is not available (10): 'test-biocompute.R:2:3', 'test-errors.R:2:3',
         'test-examples.R:2:3', 'test-internal_run.R:2:3', 'test-mdformats.R:2:3',
         'test-mdformats.R:39:3', 'test-run.R:13:3', 'test-run.R:67:3',
         'test-util_queue_summary.R:9:3', 'test-whirl_r_session.R:2:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-enrich_input.R:34:3'): Enrich input works as expected ────────
       Expected `unlist(...)` to be equal to `c(name = "Step 1", paths = test_script("success.R"))`.
       Differences:
       `names(actual)` is absent
       `names(expected)` is a character vector ('name', 'paths')
       
       actual vs expected
       - "name"
       + name"Step 1"
       - "paths"
       + paths"/tmp/workdir/whirl/new/whirl.Rcheck/tests/testthat/scripts/success.R"
       
       
       [ FAIL 1 | WARN 0 | SKIP 23 | PASS 125 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# wk (0.9.4)

* GitHub: <https://github.com/paleolimbot/wk>
* Email: <mailto:dewey@fishandwhistle.net>
* GitHub mirror: <https://github.com/cran/wk>

Run `revdepcheck::cloud_details(, "wk")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
     Complete output:
       > library(testthat)
       > library(wk)
       > 
       > test_check("wk")
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1679 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-debug.R:87:3'): wk_debug() runs the debug handler ────────────
       Expected `expect_output(...)` to be identical to `as_wkb("POINT (1 2)")`.
       Differences:
       `actual` is a character vector ('initialize (dirty = 0  -> 1)\nvector_start: <Unknown type / 0>[1] <0x7ffd31aaadf0> => WK_CONTINUE\n  feature_start (1): <0x7ffd31aaadf0>  => WK_CONTINUE\n    geometry_start (<none>): POINT[UNKNOWN] <0x7ffd31aaac80> => WK_CONTINUE\n      coord (1): <0x7ffd31aaac80> (1.000000 2.000000)  => WK_CONTINUE\n    geometry_end (<none>)  => WK_CONTINUE\n  feature_end (1): <0x7ffd31aaadf0>  => WK_CONTINUE\nvector_end: <0x7ffd31aaadf0>\ndeinitialize')
       `expected` is an S3 object of class <wk_wkb/wk_vctr>, a list
       
       ── Failure ('test-wk-rcrd.R:17:3'): wk_rcrd works ──────────────────────────────
       Expected `expect_output(print(xy_rcrd), "wk_rcrd")` to be identical to `xy_rcrd`.
       Differences:
       `actual` is a character vector ('<wk_rcrd[3]>\n   x    y \n1\\n2 2\\n2 ')
       `expected` is an S3 object of class <wk_rcrd>, a list
       
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1679 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking installed package size ... NOTE
     ```
       installed size is  5.5Mb
       sub-directories of 1Mb or more:
         data   3.5Mb
         libs   1.3Mb
     ```

*   checking data for non-ASCII characters ... NOTE
     ```
       Note: found 3881 marked UTF-8 strings
     ```

# xpose (0.4.20)

* GitHub: <https://github.com/UUPharmacometrics/xpose>
* Email: <mailto:guiastrennec@gmail.com>
* GitHub mirror: <https://github.com/cran/xpose>

Run `revdepcheck::cloud_details(, "xpose")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-plots.R:33:1'): (code run outside of `test_that()`) ────────────
       <purrr_error_indexed/rlang_error/error/condition>
       Error in `purrr::map(X, function(x) {     code_x <- substitute_q(code, list(.fun = as.symbol(x)) %>% purrr::set_names(paste0(".", name_x)))     attr(code_x, "srcref") <- attr(code, "srcref")     do.call(get("test_code", envir = asNamespace("testthat")), list(test = paste(desc, "for", name_x, x), code = code_x, env = envir, reporter = testthat::get_reporter()), envir = envir) })`: ℹ In index: 1.
       Caused by error:
       ! unused argument (test = "errors are returned when xpdb_ex_pk is missing for plot_function dv_vs_pred")
       Backtrace:
            ▆
         1. ├─xpose:::test_that_for_all(...) at test-plots.R:33:1
         2. │ └─purrr::map(...) at ./helper-test_that_for_all.R:13:3
         3. │   └─purrr:::map_("list", .x, .f, ..., .progress = .progress)
         4. │     ├─purrr:::with_indexed_errors(...)
         5. │     │ └─base::withCallingHandlers(...)
         6. │     ├─purrr:::call_with_cleanup(...)
         7. │     └─xpose (local) .f(.x[[i]], ...)
         8. │       └─base::do.call(...) at ./helper-test_that_for_all.R:20:7
         9. └─base::.handleSimpleError(...)
        10.   └─purrr (local) h(simpleError(msg, call))
        11.     └─cli::cli_abort(...)
        12.       └─rlang::abort(...)
       
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 379 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# zephyr (0.1.3)

* GitHub: <https://github.com/novonordisk-opensource/zephyr>
* Email: <mailto:oath@novonordisk.com>
* GitHub mirror: <https://github.com/cran/zephyr>

Run `revdepcheck::cloud_details(, "zephyr")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Skipped tests (6) ═══════════════════════════════════════════════════════════
       • On CRAN (6): 'test-integration.R:28:3', 'test-integration.R:95:3',
         'test-options.R:1:1', 'test-options.R:108:1', 'test-options.R:116:1',
         'test-use_zephyr.R:1:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-verbosity_level.R:127:5'): get_all_verbosity_levels ──────────
       Expected `get_all_verbosity_levels()` to be equal to `c(zephyr = "quiet", cli = "minimal", glue = "debug")`.
       Differences:
       `names(actual)`:   "glue"   "cli" "zephyr"
       `names(expected)`: "zephyr" "cli" "glue"  
       
       `actual`:   "debug" "minimal" "quiet"
       `expected`: "quiet" "minimal" "debug"
       
       Backtrace:
           ▆
        1. ├─withr::with_namespace(...) at test-verbosity_level.R:121:3
        2. │ └─base::force(code)
        3. └─testthat::expect_mapequal(...) at test-verbosity_level.R:127:5
       
       [ FAIL 1 | WARN 0 | SKIP 6 | PASS 96 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# ZillowR (1.0.0)

* Email: <mailto:fascinatingfingers@icloud.com>
* GitHub mirror: <https://github.com/cran/ZillowR>

Run `revdepcheck::cloud_details(, "ZillowR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-GetUpdatedPropertyDetails.R:7:5'): 'getURL' errors are handled gracefully ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-GetUpdatedPropertyDetails.R:7:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-GetZestimate.R:7:5'): 'getURL' errors are handled gracefully ───
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-GetZestimate.R:7:5
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 9 | WARN 0 | SKIP 0 | PASS 125 ]
       Error:
       ! Test failures.
       Execution halted
     ```

