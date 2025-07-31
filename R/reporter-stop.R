#' Test reporter: stop on error
#'
#' The default reporter used when [expect_that()] is run interactively.
#' It responds by [stop()]ping on failures and doing nothing otherwise. This
#' will ensure that a failing test will raise an error.
#'
#' This should be used when doing a quick and dirty test, or during the final
#' automated testing of R CMD check.  Otherwise, use a reporter that runs all
#' tests and gives you more context about the problem.
#'
#' @export
#' @family reporters
StopReporter <- R6::R6Class(
  "StopReporter",
  inherit = Reporter,
  public = list(
    # All expectations that need to be reported (error, failure, warning, skip)
    issues = NULL,
    # Expectations that should cause the test to fail (error, failure)
    n_fail = 0L,
    # Successful expectations
    n_success = 0L,
    stop_reporter = TRUE,
    praise = TRUE,

    initialize = function(stop_reporter = TRUE, praise = TRUE) {
      super$initialize()
      self$issues <- Stack$new()
      self$praise <- praise
      self$stop_reporter <- stop_reporter
    },

    start_test = function(context, test) {
      self$issues <- Stack$new()
    },

    add_result = function(context, test, result) {
      if (expectation_success(result)) {
        self$n_success <- self$n_success + 1
        return()
      }

      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1
      }
      self$issues$push(result)
    },

    end_test = function(context, test) {
      self$local_user_output()

      if (self$issues$size() == 0) {
        if (self$praise && self$n_success > 0) {
          emoji <- praise_emoji()
          self$cat_line(colourise("Test passed", "success"), " ", emoji)
        }
      } else {
        issues <- self$issues$as_list()
        messages <- vapply(issues, issue_summary, rule = TRUE, character(1))
        self$cat_line(messages, "\n")
      }
    },

    stop_if_needed = function() {
      if (self$stop_reporter && self$n_fail > 0) {
        abort("Test failed", call = NULL)
      }
    }
  )
)
