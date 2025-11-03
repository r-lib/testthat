#' Error if any test fails
#'
#' @description
#' The default reporter used when [expect_that()] is run interactively.
#' It responds by displaying a summary of the number of successes and failures
#' and [stop()]ping on if there are any failures.
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
    depth = 0,

    initialize = function(praise = TRUE) {
      super$initialize()
      self$issues <- Stack$new()
      self$praise <- praise
    },

    start_test = function(context, test) {
      if (self$depth == 0) {
        self$n_fail <- 0L
        self$n_success <- 0L
        self$issues <- Stack$new()
      }
      self$depth <- self$depth + 1
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
      self$depth <- self$depth - 1
      if (self$depth > 0) {
        return()
      }

      self$local_user_output()

      for (issue in self$issues$as_list()) {
        self$cat_line(issue_summary(issue, rule = TRUE, location = FALSE))
      }

      if (self$praise && self$n_fail == 0 && self$n_success > 0) {
        emoji <- praise_emoji()
        self$cat_line(cli::format_inline(
          "{.strong Test passed with {self$n_success} success{?es}{emoji}}."
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
