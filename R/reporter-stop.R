#' Error if any test fails
#'
#' @description
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
    praise = TRUE,

    initialize = function(praise = TRUE) {
      super$initialize()
      self$issues <- Stack$new()
      self$praise <- praise
    },

    start_test = function(context, test) {
      self$issues <- Stack$new()
      self$n_fail <- 0L
      self$n_success <- 0L
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

      for (issue in self$issues$as_list()) {
        self$cat_line(issue_summary(issue, rule = TRUE), "\n")
      }

      if (self$praise && self$n_fail == 0 && self$n_success > 0) {
        emoji <- praise_emoji()
        self$cat_line(cli::format_inline(
          "Test passed with {self$n_success} success{?es} {emoji}."
        ))
      }

      if (self$n_fail > 0) {
        cli::cli_abort(
          "Test failed with {self$n_fail} failure{?s} and {self$n_success} success{?es}.",
          call = NULL
        )
      }
    }
  )
)
