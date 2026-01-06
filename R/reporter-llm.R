#' Report test progress for LLMs
#'
#' `LlmReporter` is designed for use with Large Language Models (LLMs).
#' It only reports problems (warnings, skips, errors, and failures) as they
#' occur, only reporting passing tests at the end.
#'
#' @export
#' @family reporters
LlmReporter <- R6::R6Class(
  "LlmReporter",
  inherit = ProgressReporter,
  public = list(
    initialize = function(max_failures = testthat_max_fails(), ...) {
      super$initialize(
        show_praise = FALSE,
        max_failures = max_failures,
        ...
      )
    },

    # No header
    show_header = function() {},

    # No status updates
    show_status = function(complete = FALSE, time = 0, pad = FALSE) {},

    add_result = function(context, test, result) {
      # Stop immediately if we've hit max failures
      if (self$is_full()) {
        return()
      }

      self$ctxt_n <- self$ctxt_n + 1L

      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1
        self$ctxt_n_fail <- self$ctxt_n_fail + 1
        self$ctxt_issues$push(result)
        self$problems$push(result)
        self$report_issue(result)
      } else if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1
        self$ctxt_n_skip <- self$ctxt_n_skip + 1
        self$skips$push(result)
        self$report_issue(result)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1
        self$ctxt_n_warn <- self$ctxt_n_warn + 1
        self$ctxt_issues$push(result)
        self$report_issue(result)
      } else {
        self$n_ok <- self$n_ok + 1
        self$ctxt_n_ok <- self$ctxt_n_ok + 1
        # Do nothing for passing tests
      }
    },

    report_issue = function(result) {
      self$local_user_output()
      withr::local_options(testthat.use_colours = FALSE)

      self$cat_line(issue_summary(result, uppercase = TRUE))
      self$cat_line()
    },

    end_context = function(context) {
      if (self$is_full()) {
        self$report_full()
      }
    },

    end_reporter = function() {
      if (self$is_full()) {
        return()
      }

      self$cat_line(paste0(
        "[ ",
        "FAIL ",
        self$n_fail,
        " | WARN ",
        self$n_warn,
        " | SKIP ",
        self$n_skip,
        " | PASS ",
        self$n_ok,
        " ]"
      ))
    }
  )
)
