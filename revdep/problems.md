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
       [ FAIL 1 | WARN 1 | SKIP 3 | PASS 171 ]
       
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
       
       [ FAIL 1 | WARN 1 | SKIP 3 | PASS 171 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# arulesCBA (1.2.8)

* GitHub: <https://github.com/mhahsler/arulesCBA>
* Email: <mailto:mhahsler@lyle.smu.edu>
* GitHub mirror: <https://github.com/cran/arulesCBA>

Run `revdepcheck::cloud_details(, "arulesCBA")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       The following objects are masked from 'package:base':
       
           abbreviate, write
       
       > 
       > testthat::test_check("arulesCBA")
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 55 ]
       
       ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
       • empty test (2): ,
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-CBA_helpers.R:18:1'): (code run outside of `test_that()`) ──────
       Error in `expect(length(r), length(cls))`: `ok` must be `TRUE` or `FALSE`, not the number 2.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = length(r)) at test-CBA_helpers.R:18:1
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 55 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# autodb (3.1.0)

* GitHub: <https://github.com/CharnelMouse/autodb>
* Email: <mailto:markwebster204@yahoo.co.uk>
* GitHub mirror: <https://github.com/cran/autodb>

Run `revdepcheck::cloud_details(, "autodb")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • empty test (1): 'test-decompose.r:130:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-database.r:982:5'): database / concatenates without losing attribute orderings, if consistent ──
       Expected exactly one failure and no successes.
       Actually failed 2 times
       ── Failure ('test-database_schema.r:744:5'): database_schema / concatenates without losing attribute orderings, if consistent ──
       Expected exactly one failure and no successes.
       Actually failed 2 times
       ── Failure ('test-functional_dependency.r:276:5'): functional_dependency / concatenates without losing attribute orderings, if consistent ──
       Expected exactly one failure and no successes.
       Actually failed 2 times
       ── Failure ('test-relation.r:726:5'): relation / concatenates without losing attribute orderings, if consistent ──
       Expected exactly one failure and no successes.
       Actually failed 2 times
       ── Failure ('test-relation_schema.r:620:5'): relation_schema / concatenates without losing attribute orderings, if consistent ──
       Expected exactly one failure and no successes.
       Actually failed 2 times
       
       [ FAIL 5 | WARN 0 | SKIP 1 | PASS 725 ]
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

# BayesChange (2.1.2)

* GitHub: <https://github.com/lucadanese/BayesChange>
* Email: <mailto:l.danese1@campus.unimib.it>
* GitHub mirror: <https://github.com/cran/BayesChange>

Run `revdepcheck::cloud_details(, "BayesChange")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > #
       > # Where should you do additional test configuration?
       > # Learn more about the roles of various files in:
       > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(BayesChange)
       > 
       > test_check("BayesChange")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-test-clust_cp.R:11:3'): clust_cp works ─────────────────────────
       <std::logic_error/C++Error/error/condition>
       Error: max(): object has no elements
       Backtrace:
           ▆
        1. └─BayesChange::clust_cp(...) at test-test-clust_cp.R:11:3
        2.   └─BayesChange::clust_cp_uni(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
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

# clinUtils (0.2.1)

* GitHub: <https://github.com/openanalytics/clinUtils>
* Email: <mailto:laure.cougnaud@openanalytics.eu>
* GitHub mirror: <https://github.com/cran/clinUtils>

Run `revdepcheck::cloud_details(, "clinUtils")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
       • On CRAN (2): 'test_getClinDT.R:838:7', 'test_getClinDT.R:855:7'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_getClinDT.R:139:7'): Invisible columns are not shown in the DataTables output ──
       Error in `expect(cDefs[[which(cDefsNonVisible)]]$targets, 1)`: `ok` must be `TRUE` or `FALSE`, not the number 1.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = cDefs[[which(cDefsNonVisible)]]$targets) at test_getClinDT.R:139:7
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test_getClinDT.R:176:7'): Percentages are correctly formatted ───────
       Error in `expect(cDefs[[which(cDefsFmtPercentage)]]$targets, 1)`: `ok` must be `TRUE` or `FALSE`, not the number 1.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = cDefs[[which(cDefsFmtPercentage)]]$targets) at test_getClinDT.R:176:7
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 1 | SKIP 2 | PASS 305 ]
       Error:
       ! Test failures.
       Execution halted
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
       Expected exactly one failure and no successes.
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

# covdepGE (1.0.1)

* GitHub: <https://github.com/JacobHelwig/covdepGE>
* Email: <mailto:jacob.a.helwig@tamu.edu>
* GitHub mirror: <https://github.com/cran/covdepGE>

Run `revdepcheck::cloud_details(, "covdepGE")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:461:3'): Font size ────────────────────────────────
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:467:3'): Font color 1 ─────────────────────────────
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:473:3'): Font color 2 ─────────────────────────────
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:479:3'): Font threshold ───────────────────────────
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:506:3'): Different graph_colors ───────────────────
       Expected exactly one failure and no successes.
       Actually failed 0 times
       ── Failure ('test-covdepGE.R:511:3'): No title summary ─────────────────────────
       Expected exactly one failure and no successes.
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

# difNLR (1.5.1-4)

* GitHub: <https://github.com/adelahladka/difNLR>
* Email: <mailto:hladka@cs.cas.cz>
* GitHub mirror: <https://github.com/cran/difNLR>

Run `revdepcheck::cloud_details(, "difNLR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       - attr(environment(actual$m$resid)$rhs, 'gradient')[6, ]      -0.17426731 -0.16579797 0.78936339  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[6, ]    -0.17426730 -0.16579795 0.78936344  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[7, ]      -0.04316778 -0.23243708 0.55164768 -0.04316774 -0.23243708
       + attr(environment(expected$m$resid)$rhs, 'gradient')[7, ]    -0.04316780 -0.23243709 0.55164768 -0.04316789 -0.23243709
       - attr(environment(actual$m$resid)$rhs, 'gradient')[8, ]      -0.10877868 -0.22819248 0.64546286  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[8, ]    -0.10877869 -0.22819249 0.64546285  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[9, ]       0.16964471 -0.17684837 0.23046457  0.00000000  0.00000000
       + attr(environment(expected$m$resid)$rhs, 'gradient')[9, ]     0.16964469 -0.17684838 0.23046462  0.00000000  0.00000000
       - attr(environment(actual$m$resid)$rhs, 'gradient')[10, ]      0.17703719 -0.17134705 0.23986082  0.17703708 -0.17134706
       + attr(environment(expected$m$resid)$rhs, 'gradient')[10, ]    0.17703716 -0.17134706 0.23986080  0.17703712 -0.17134706
       and 1990 more ...
       
       ── Failure ('test-estimNLR.R:81:3'): estimNLR - examples at help page ──────────
       Expected `fit_plf` to equal `fit_plf_expected`.
       Differences:
         `actual$se`: 0.234433093 0.132523018 0.160377865 0.145217350 0.123570547
       `expected$se`: 0.234433200 0.132523009 0.160377916 0.145217456 0.123570609
       
       
       [ FAIL 25 | WARN 1 | SKIP 16 | PASS 317 ]
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

# dmlalg (1.0.2)

* Email: <mailto:emmenegger@stat.math.ethz.ch>
* GitHub mirror: <https://github.com/cran/dmlalg>

Run `revdepcheck::cloud_details(, "dmlalg")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(dmlalg)
       > 
       > test_check("dmlalg")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1113 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-data_formats_regsdml.R:1332:5'): return_results outputs right data formats ──
       Error in `expect(nrow(results$beta_test), d)`: `ok` must be `TRUE` or `FALSE`, not the number 3.
       Backtrace:
           ▆
        1. └─dmlalg (local) check_return_results_format(beta = beta, var = var, xx_colnames = xx_colnames) at test-data_formats_regsdml.R:1356:3
        2.   └─testthat::expect(ok = nrow(results$beta_test)) at test-data_formats_regsdml.R:1332:5
        3.     └─testthat:::check_bool(ok)
        4.       └─testthat:::stop_input_type(...)
        5.         └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1113 ]
       Error:
       ! Test failures.
       Execution halted
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
       > test-valued-terms.R: 'ergm.count' 4.1.3 (2025-09-10), part of the Statnet Project
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

# ggdist (3.3.3)

* GitHub: <https://github.com/mjskay/ggdist>
* Email: <mailto:mjskay@northwestern.edu>
* GitHub mirror: <https://github.com/cran/ggdist>

Run `revdepcheck::cloud_details(, "ggdist")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       [ FAIL 1 | WARN 0 | SKIP 109 | PASS 721 ]
       Deleting unused snapshots:
       'test.scale_/dots-slab-color-plus-slab-shape-mapping.svg',
       'test.scale_/interval-alpha-continuous-mapping.svg',
       'test.scale_/interval-alpha-discrete-mapping.svg',
       'test.scale_/interval-color-continuous-mapping.svg',
       'test.scale_/interval-color-discrete-mapping.svg',
       'test.scale_/interval-linetype-discrete-mapping.svg',
       'test.scale_/interval-size-continuous-mapping.svg',
       'test.scale_/interval-size-discrete-mapping.svg',
       'test.scale_/point-alpha-continuous-mapping.svg',
       'test.scale_/point-alpha-discrete-mapping.svg',
       'test.scale_/point-fill-continuous-mapping.svg',
       'test.scale_/point-fill-discrete-mapping.svg',
       'test.scale_/point-size-continuous-mapping.svg',
       'test.scale_/point-size-discrete-mapping.svg',
       'test.scale_/slab-alpha-continuous-mapping.svg',
       'test.scale_/slab-alpha-discrete-mapping.svg',
       'test.scale_/slab-color-continuous-mapping.svg',
       'test.scale_/slab-color-discrete-mapping.svg', …,
       'test.scale_/slab-size-continuous-mapping.svg', and
       'test.scale_/slab-size-discrete-mapping.svg'
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

# greeks (1.4.4)

* GitHub: <https://github.com/ahudde/greeks>
* Email: <mailto:anselmhudde@gmx.de>
* GitHub mirror: <https://github.com/cran/greeks>

Run `revdepcheck::cloud_details(, "greeks")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. └─testthat::expect(failure_message = <empty>) at test-BS_European_Greeks.R:107:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-BS_Geometric_Asian_Greeks.R:81:3'): BS_Geometric_Asian_Greeks is correct ──
       Error in `expect(max(error) < sqrt(epsilon))`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-BS_Geometric_Asian_Greeks.R:81:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-Implied_Volatility.R:90:3'): implied volatility is correct ─────
       Error in `expect(max(abs(option_price_test - option_price)) < 1e-06)`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-Implied_Volatility.R:90:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
       Error:
       ! Test failures.
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
        1. └─testthat::expect(failure_message = <empty>) at test-formula.R:11:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-logLik.R:11:3'): logLik function works correctly ───────────────
       Error in `expect(round(logLik(fit), 5), -9.22893)`: `ok` must be `TRUE` or `FALSE`, not a <logLik> object.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = round(logLik(fit), 5)) at test-logLik.R:11:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-nobs.R:11:3'): nobs function works correctly ───────────────────
       Error in `expect(nobs(fit), 60)`: `ok` must be `TRUE` or `FALSE`, not the number 60.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = nobs(fit)) at test-nobs.R:11:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 3 | WARN 0 | SKIP 0 | PASS 552 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# howzatR (1.0.1)

* GitHub: <https://github.com/lukelockley/howzatR>
* Email: <mailto:luke.lockley@btinternet.com>
* GitHub mirror: <https://github.com/cran/howzatR>

Run `revdepcheck::cloud_details(, "howzatR")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       > test_check("howzatR")
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 16 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-batting_basics.R:7:3'): bat_avg works ──────────────────────────
       Error in `expect(bat_avg(runs_scored = 50, no_dismissals = 2), 25)`: `ok` must be `TRUE` or `FALSE`, not the number 25.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = bat_avg(runs_scored = 50, no_dismissals = 2)) at test-batting_basics.R:7:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-batting_basics.R:22:3'): bat_sr works ──────────────────────────
       Error in `expect(bat_sr(runs_scored = 250, balls_faced = 200), 125)`: `ok` must be `TRUE` or `FALSE`, not the number 125.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = bat_sr(runs_scored = 250, balls_faced = 200)) at test-batting_basics.R:22:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 16 ]
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

*   checking compiled code ... NOTE
     ```
     File ‘htmltools/libs/htmltools.so’:
       Found non-API calls to R: ‘SETLENGTH’, ‘SET_TRUELENGTH’
     
     Compiled code should not call non-API entry points in R.
     
     See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual,
     and section ‘Moving into C API compliance’ for issues with the use of
     non-API entry points.
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
       Expected exactly one failure and no successes.
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
       025 ms
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

# hySpc.testthat (0.2.1)

* Email: <mailto:Claudia.Beleites@chemometrix.gmbh>
* GitHub mirror: <https://github.com/cran/hySpc.testthat>

Run `revdepcheck::cloud_details(, "hySpc.testthat")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         7.   └─hySpc.testthat (local) test()
         8.     └─testthat::test_that(...)
         9.       └─testthat:::test_code(code, parent.frame())
        10.         └─reporter$start_test(context = reporter$.context, test = test)
        11.           └─base::identical(self$running[[self$current_file]]$context, context)
       ── Error ('test_attached.R:3:1'): standalone ───────────────────────────────────
       Error in `identical(self$running[[self$current_file]]$context, context)`: attempt to use zero-length variable name
       Backtrace:
            ▆
         1. └─hySpc.testthat::unittest(ns = test_env, reporter = "list")
         2.   ├─testthat::with_reporter(...)
         3.   │ └─base::tryCatch(...)
         4.   │   └─base (local) tryCatchList(expr, classes, parentenv, handlers)
         5.   │     └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         6.   │       └─base (local) doTryCatch(return(expr), name, parentenv, handler)
         7.   └─hySpc.testthat (local) t()
         8.     └─testthat::test_that(...)
         9.       └─testthat:::test_code(code, parent.frame())
        10.         └─reporter$start_test(context = reporter$.context, test = test)
        11.           └─base::identical(self$running[[self$current_file]]$context, context)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 2 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# idiolect (1.0.1)

* GitHub: <https://github.com/andreanini/idiolect>
* Email: <mailto:andrea.nini@manchester.ac.uk>
* GitHub mirror: <https://github.com/cran/idiolect>

Run `revdepcheck::cloud_details(, "idiolect")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. └─testthat::expect(ok = results.corpus[1, 4]) at test-impostors.R:35:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-impostors.R:84:3'): KGI works ──────────────────────────────────
       Error in `testthat::expect(results.corpus[1, 4], 0.75)`: `ok` must be `TRUE` or `FALSE`, not the number 0.75.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = results.corpus[1, 4]) at test-impostors.R:84:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-impostors.R:123:3'): IM works ──────────────────────────────────
       Error in `testthat::expect(results.corpus[4, 4], 0.57)`: `ok` must be `TRUE` or `FALSE`, not the number 0.57.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = results.corpus[4, 4]) at test-impostors.R:123:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 3 | WARN 1 | SKIP 11 | PASS 14 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘calibrate_LLR.R’ ‘concordance.R’ ‘contentmask.R’ ‘create_corpus.R’
         ‘delta.R’ ‘density_plot.R’ ‘impostors.R’ ‘lambdaG.R’ ‘lambdaG.Rd’
         ‘lambdaG_visualize.R’ ‘lambdaG_visualize.Rd’ ‘most_similar.Rd’
         ‘ngram_tracing.R’ ‘performance.R’ ‘posterior.R’ ‘tokenize_sents.R’
         ‘utils.R’ ‘vectorize.R’
     ```

# imager (1.0.5)

* GitHub: <https://github.com/asgr/imager>
* Email: <mailto:aaron.robotham@uwa.edu.au>
* GitHub mirror: <https://github.com/cran/imager>

Run `revdepcheck::cloud_details(, "imager")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
           frame
       
       The following object is masked from 'package:base':
       
           save.image
       
       > 
       > test_check("imager")
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_load_save_videos.R:15:13'): load_and_save_videos ───────────────
       Error in `expect(file_test("-f", ff), TRUE)`: `failure_message` must be a character vector, not `TRUE`.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = TRUE) at test_load_save_videos.R:15:13
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 19 ]
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
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • On CRAN (1): 'test-0-basictests.R:105:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-0-basictests.R:29:3'): analytic way of calculating coherence works ──
       Error in `expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]]))`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-0-basictests.R:29:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-0-basictests.R:60:3'): analytic way of calculating coherence works for 1 theory ──
       Error in `expect(0 < mean(IMEC$ExplanatoryCoherenceT1[[2]]))`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-0-basictests.R:60:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 2 | SKIP 1 | PASS 2 ]
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
         'test-evaluators.R:179:3', 'test-evaluators.R:212:3',
         'test-evaluators.R:244:3', 'test-evaluators.R:279:3',
         'test-evaluators.R:363:3', 'test-exercise.R:356:1', 'test-exercise.R:1237:3',
         'test-exercise.R:1345:1', 'test-exercise.R:1393:1', 'test-exercise.R:1444:3',
         'test-exercise.R:1472:3', 'test-exercise.R:1524:1',
         'test-shinytest2-aaa.R:2:1', 'test-shinytest2-hints.R:2:1'
       • Skipping test because LANG is C.UTF-8 (2): 'test-i18n.R:208:3',
         'test-i18n.R:238:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-exercise.R:246:3'): evaluate_exercise() returns an internal error when `render_exercise()` fails ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-exercise.R:246:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 20 | PASS 812 ]
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
       Expected exactly one success and no failures.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:44:3'): multiple checks ────────────────────────
       Expected exactly one success and no failures.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:45:3'): multiple checks ────────────────────────
       Expected exactly one success and no failures.
       Actually succeeded 2 times
       ── Failure ('test-expect_lint.R:46:3'): multiple checks ────────────────────────
       Expected exactly one failure and no successes.
       Actually succeeded 1 times
       ── Failure ('test-expect_lint.R:48:3'): multiple checks ────────────────────────
       Expected exactly one success and no failures.
       Actually failed 1 times
       ── Failure ('test-expect_lint.R:49:3'): multiple checks ────────────────────────
       Expected exactly one failure and no successes.
       Actually failed 2 times
       ── Failure ('test-expect_lint.R:50:3'): multiple checks ────────────────────────
       Expected exactly one success and no failures.
       Actually succeeded 3 times
       
       [ FAIL 13 | WARN 0 | SKIP 5 | PASS 6551 ]
       Error:
       ! Test failures.
       Execution halted
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

# nhdplusTools (1.3.2)

* GitHub: <https://github.com/doi-usgs/nhdplusTools>
* Email: <mailto:dblodgett@usgs.gov>
* GitHub mirror: <https://github.com/cran/nhdplusTools>

Run `revdepcheck::cloud_details(, "nhdplusTools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
         'test_get_nhdplus.R:49:3', 'test_get_nhdplushr.R:3:3',
         'test_get_nhdplushr.R:23:3', 'test_get_nhdplushr.R:53:3',
         'test_get_nhdplushr.R:80:3', 'test_get_nhdplushr.R:101:3',
         'test_get_nhdplushr.R:147:3', 'test_get_nhdplushr.R:174:3',
         'test_get_nhdplushr.R:196:3', 'test_get_codes.R:4:3', 'test_get_vaa.R:4:3',
         'test_get_vaa.R:38:3', 'test_index.R:13:5', 'test_index.R:61:3',
         'test_map_nhdplus.R:4:3', 'test_navigate.R:4:3', 'test_navigate.R:71:3',
         'test_nhdplusTools.R:41:3', 'test_nhdplusTools.R:50:3',
         'test_rescale_catchments.R:3:3', 'test_get_path.R:69:3',
         'test_run_plus_attributes.R:20:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_02_subset_extras.R:75:3'): by rpu ──────────────────────────────
       Error in `expect(nrow(out), 267)`: `ok` must be `TRUE` or `FALSE`, not the number 267.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = nrow(out)) at test_02_subset_extras.R:75:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 58 | PASS 315 ]
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

# nodiv (1.4.3)

* GitHub: <https://github.com/mkborregaard/nodiv>
* Email: <mailto:mkborregaard@sund.ku.dk>
* GitHub mirror: <https://github.com/cran/nodiv>

Run `revdepcheck::cloud_details(, "nodiv")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
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
       Error in `expect(is.null(coquettes$shape))`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test_adding.R:4:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
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
       
       [ FAIL 6 | WARN 2 | SKIP 1 | PASS 50 ]
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
      12. └─evaluate (local) `<fn>`(`<S3: simpleWarning>`)
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

# phyloraster (2.2.0)

* GitHub: <https://github.com/gabferreira/phyloraster>
* Email: <mailto:gabriela-alves77@hotmail.com>
* GitHub mirror: <https://github.com/cran/phyloraster>

Run `revdepcheck::cloud_details(, "phyloraster")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. └─testthat::expect(failure_message = rast.pe.ses(...)) at test-rast.pe.ses.R:96:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-shp2rast.R:77:3'): function runs ok when a mask is applied ─────
       Error in `expect(phyloraster::shp2rast(shp, y = coun.rast, sps.col = "BINOMIAL", ymask = TRUE, background = 0), ok = T)`: `failure_message` must be a character vector, not a <SpatRaster> object.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = phyloraster::shp2rast(...)) at test-shp2rast.R:77:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-shp2rast.R:100:3'): Raster is saved when filename is provided ──
       Error in `expect(shp2rast(shp, y = coun.rast, sps.col = "BINOMIAL", background = 0, filename = temp), ok = T)`: `failure_message` must be a character vector, not a <SpatRaster> object.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = shp2rast(...)) at test-shp2rast.R:100:3
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 8 | WARN 0 | SKIP 0 | PASS 84 ]
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
       Expected exactly one success and no failures.
       Actually succeeded 2 times
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1824 ]
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

# rmdl (0.1.0)

* GitHub: <https://github.com/shah-in-boots/rmdl>
* Email: <mailto:ashah282@uic.edu>
* GitHub mirror: <https://github.com/cran/rmdl>

Run `revdepcheck::cloud_details(, "rmdl")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       Using `fundamental` decomposition pattern: 
       - Mediation term: NA
       - Stratifying term: NA
       Interaction term `green` was applied to exposure term `witch`
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 206 ]
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • Skipping (1): 'test-formulas.R:57:2'
       • empty test (3): 'test-interaction.R:41:1', 'test-model-table.R:272:1',
         'test-patterns.R:36:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-terms.R:213:2'): interaction terms are appropriately made ──────
       Error in `expect(length(t), 5)`: `ok` must be `TRUE` or `FALSE`, not the number 5.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = length(t)) at test-terms.R:213:9
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 206 ]
       Error:
       ! Test failures.
       Execution halted
     ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.2.0 because package code uses the pipe
       placeholder syntax added in R 4.2.0.
       File(s) using such syntax:
         ‘model-table.R’
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

# rtables (0.6.13)

* GitHub: <https://github.com/insightsengineering/rtables>
* Email: <mailto:joe.zhu@roche.com>
* GitHub mirror: <https://github.com/cran/rtables>

Run `revdepcheck::cloud_details(, "rtables")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       The following objects are masked from 'package:stats':
       
           filter, lag
       
       The following objects are masked from 'package:base':
       
           intersect, setdiff, setequal, union
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1746 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-make-afun.R:135:3'): make_afun works for df functions ──────────
       Error in `expect(unlist(ares2$b), 6)`: `ok` must be `TRUE` or `FALSE`, not the number 6.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = unlist(ares2$b)) at test-make-afun.R:135:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1746 ]
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
       Expected `dir3_m` to equal `vMF_m(Y)`.
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

# scrutiny (0.6.0)

* GitHub: <https://github.com/lhdjung/scrutiny>
* Email: <mailto:jung-lukas@gmx.net>
* GitHub mirror: <https://github.com/cran/scrutiny>

Run `revdepcheck::cloud_details(, "scrutiny")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       ── Error ('test-decimal-places.R:130:3'): `decimal_places_scalar()` conditions work as expected ──
       Error in `testthat::expect(act$is_na, msg_error)`: `failure_message` must be a character vector, not `NULL`.
       Backtrace:
           ▆
        1. ├─NA %>% decimal_places_scalar() %>% expect_na() at test-decimal-places.R:130:3
        2. └─scrutiny:::expect_na(.)
        3.   └─testthat::expect(failure_message = msg_error) at ./helper-expectations.R:18:3
        4.     └─testthat:::check_character(failure_message)
        5.       └─testthat:::stop_input_type(...)
        6.         └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-seq-predicates.R:141:3'): `is_seq_dispersed()` passes its special tests, returning `NA` ──
       Error in `testthat::expect(act$is_na, msg_error)`: `failure_message` must be a character vector, not `NULL`.
       Backtrace:
           ▆
        1. ├─... %>% expect_na() at test-seq-predicates.R:141:3
        2. └─scrutiny:::expect_na(.)
        3.   └─testthat::expect(failure_message = msg_error) at ./helper-expectations.R:18:3
        4.     └─testthat:::check_character(failure_message)
        5.       └─testthat:::stop_input_type(...)
        6.         └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 525 ]
       Error:
       ! Test failures.
       Execution halted
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
       created index file [ /tmp/RtmpKLRY4B/file13bb36959e6f ]
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 72 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-vcf.R:167:5'): createSingleChromosomeVCFIndex ──────────────────
       Error in `expect(nchar(cfh) > 0)`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-vcf.R:167:5
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-vcf.R:181:5'): createSingleChromosomeBCFIndex ──────────────────
       Error in `expect(nchar(cfh) > 0)`: `failure_message` must be a character vector, not absent.
       Backtrace:
           ▆
        1. └─testthat::expect(failure_message = <empty>) at test-vcf.R:181:5
        2.   └─testthat:::check_character(failure_message)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 0 | SKIP 0 | PASS 72 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# serocalculator (1.3.0)

* GitHub: <https://github.com/UCD-SERG/serocalculator>
* Email: <mailto:kwlai@ucdavis.edu>
* GitHub mirror: <https://github.com/cran/serocalculator>

Run `revdepcheck::cloud_details(, "serocalculator")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       [ FAIL 1 | WARN 0 | SKIP 15 | PASS 33 ]
       
       ══ Skipped tests (15) ══════════════════════════════════════════════════════════
       • On CRAN (15): 'test-ab0.R:1:1', 'test-as_noise_params.R:13:1',
         'test-autoplot.pop_data.R:19:1', 'test-autoplot.pop_data.R:28:1',
         'test-autoplot.pop_data.R:37:1', 'test-class_attributes.R:9:1',
         'test-df_to_array.R:1:1', 'test-est.incidence.R:1:1',
         'test-est.incidence.by.R:35:1', 'test-f_dev.R:1:1',
         'test-log_likelihood.R:1:1', 'test-plot_curve_params_one_ab.R:1:1',
         'test-stratify_data.R:1:1', 'test-summary.pop_data.R:12:1',
         'test-summary.pop_data.R:16:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-as_curve_params.R:33:3'): `as_curve_params()` produces expected results ──
       Error in `test_data %>% ssdtools:::expect_snapshot_data(name = "curve-data")`: object 'expect_snapshot_data' not found
       Backtrace:
           ▆
        1. └─test_data %>% ssdtools:::expect_snapshot_data(name = "curve-data") at test-as_curve_params.R:33:3
       
       [ FAIL 1 | WARN 0 | SKIP 15 | PASS 33 ]
       Deleting unused snapshots: 'as_curve_params/curve-data.csv'
       Error:
       ! Test failures.
       Execution halted
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

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘utils’
       All declared Imports should be used.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘earlywarnings’ in Rd xrefs
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

# ssdtools (2.4.0)

* GitHub: <https://github.com/bcgov/ssdtools>
* Email: <mailto:joe@poissonconsulting.ca>
* GitHub mirror: <https://github.com/cran/ssdtools>

Run `revdepcheck::cloud_details(, "ssdtools")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        5.     └─testthat:::stop_input_type(...)
        6.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-hc.R:653:3'): ssd_hc save_to lnorm 1 ───────────────────────────
       Error in `expect_snapshot_value(hc$lcl, est, style = "deparse")`: `cran` must be `TRUE` or `FALSE`, not the number 1.29.
       Backtrace:
           ▆
        1. └─testthat::expect_snapshot_value(cran = est) at test-hc.R:653:3
        2.   └─testthat:::check_bool(cran)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 2 | WARN 0 | SKIP 214 | PASS 989 ]
       Deleting unused snapshots: 'autoplot/autoplot.png',
       'autoplot/autoplot_bigmark.png', 'autoplot/autoplot_new.png',
       'autoplot/autoplot_rescale.png', 'autoplot/suffix.png',
       'ggplot/geom_hcintersect.png', 'ggplot/geom_hcintersect_aes.png',
       'ggplot/geom_ssdpoint.png', 'ggplot/geom_ssdpoint_identity.png',
       'ggplot/geom_ssdsegment.png', 'ggplot/geom_ssdsegment_arrow.png',
       'ggplot/geom_ssdsegment_identity.png', 'ggplot/geom_ssdsegment_nodata.png',
       'ggplot/geom_xribbon.png', 'match-moments/cdf.png', 'plot-cdf/fits.png',
       'plot-cdf/fits_average.png', 'plot-cdf/fits_average_na.png', …,
       'ssd-plot/ribbon.png', and 'ssd-plot/suffix.png'
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
       Expected exactly one failure and no successes.
       Actually failed 2 times
       
       [ FAIL 95 | WARN 0 | SKIP 0 | PASS 111 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# testex (0.2.0)

* GitHub: <https://github.com/dgkf/testex>
* Email: <mailto:doug.kelkhoff@gmail.com>
* GitHub mirror: <https://github.com/cran/testex>

Run `revdepcheck::cloud_details(, "testex")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-pkgexample.R:15:5'): test_examples_as_testthat converts examples to tests and executes test suite ──
       <callr_status_error/callr_error/rlib_error_3_0/rlib_error/error/condition>
       Error: ! in callr subprocess.
       Caused by error in `reporter$add_result(context = reporter$.context, test = test, …`:
       ! attempt to use zero-length variable name
       Backtrace:
            ▆
         1. ├─testthat::expect_silent(...) at test-pkgexample.R:14:3
         2. │ └─testthat:::quasi_capture(enquo(object), NULL, evaluate_promise)
         3. │   ├─testthat (local) .capture(...)
         4. │   │ ├─withr::with_output_sink(...)
         5. │   │ │ └─base::force(code)
         6. │   │ ├─base::withCallingHandlers(...)
         7. │   │ └─base::withVisible(code)
         8. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
         9. └─callr::r(...) at test-pkgexample.R:15:5
        10.   └─callr:::get_result(output = out, options)
        11.     └─throw(callr_remote_error(remerr, output), parent = fix_msg(remerr[[3]]))
       
       [ FAIL 1 | WARN 0 | SKIP 2 | PASS 80 ]
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

*   checking compiled code ... NOTE
     ```
     File ‘tibblify/libs/tibblify.so’:
       Found non-API calls to R: ‘BODY’, ‘CLOENV’, ‘ENCLOS’, ‘EXTPTR_PROT’,
         ‘EXTPTR_TAG’, ‘FORMALS’, ‘FRAME’, ‘HASHTAB’, ‘OBJECT’, ‘PRENV’,
         ‘PRVALUE’, ‘R_PromiseExpr’, ‘Rf_allocSExp’, ‘Rf_findVarInFrame3’,
         ‘SETLENGTH’, ‘SET_BODY’, ‘SET_CLOENV’, ‘SET_FORMALS’,
         ‘SET_GROWABLE_BIT’, ‘SET_TRUELENGTH’, ‘STRING_PTR’
     
     Compiled code should not call non-API entry points in R.
     
     See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual,
     and section ‘Moving into C API compliance’ for issues with the use of
     non-API entry points.
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

# TrialEmulation (0.0.4.5)

* GitHub: <https://github.com/Causal-LDA/TrialEmulation>
* Email: <mailto:isaac.gravestock@roche.com>
* GitHub mirror: <https://github.com/cran/TrialEmulation>

Run `revdepcheck::cloud_details(, "TrialEmulation")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
     ...
        1. └─testthat::expect(ok = nrow(result$data)) at test-data_preparation.R:126:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-data_preparation.R:149:3'): data_preparation works with As-Treated estimand type ──
       Error in `expect(nrow(result$data), result$N)`: `ok` must be `TRUE` or `FALSE`, not the number 1939053.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = nrow(result$data)) at test-data_preparation.R:149:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       ── Error ('test-data_preparation.R:175:3'): data_preparation works with ITT and censor weights ──
       Error in `expect(nrow(result$data), result$N)`: `ok` must be `TRUE` or `FALSE`, not the number 8795.
       Backtrace:
           ▆
        1. └─testthat::expect(ok = nrow(result$data)) at test-data_preparation.R:175:3
        2.   └─testthat:::check_bool(ok)
        3.     └─testthat:::stop_input_type(...)
        4.       └─rlang::abort(message, ..., call = call, arg = arg)
       
       [ FAIL 4 | WARN 0 | SKIP 33 | PASS 458 ]
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

# vein (1.5.0)

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

