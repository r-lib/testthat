#' Report test progress for LLMs
#'
#' `LlmReporter` is designed for use with Large Language Models (LLMs).
#' It reports problems (warnings, skips, errors, and failures) as they
#' occur and the total number of successes at the end.
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
      self$width <- 20
    },

    # No header
    show_header = function() {},

    # No status updates
    show_status = function(complete = FALSE, time = 0, pad = FALSE) {},

    add_result = function(context, test, result) {
      if (self$is_full()) {
        return()
      }

      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1
        self$report_issue(result)
      } else if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1
        self$report_issue(result)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1
        self$report_issue(result)
      } else {
        self$n_ok <- self$n_ok + 1
        # Do nothing for passing tests
      }
    },

    report_issue = function(result) {
      self$local_user_output()

      type <- toupper(expectation_type(result))
      header <- paste0(type, ": ", expectation_location(result))
      rule <- strrep("-", max(50 - nchar(header), 10))

      self$cat_line(header, " ", rule)
      self$cat_line(format(result))
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

      self$cat_line(paste_c(
        "[ ",
        c("FAIL ", self$n_fail, " | "),
        c("WARN ", self$n_warn, " | "),
        c("SKIP ", self$n_skip, " | "),
        c("PASS ", self$n_ok),
        " ]"
      ))
    }
  )
)
