#' @include reporter.R
NULL

#' Test reporter: TAP format.
#'
#' This reporter will output results in the Test Anything Protocol (TAP),
#' a simple text-based interface between testing modules in a test harness.
#' For more information about TAP, see http://testanything.org
#'
#' @export
TapReporter <- R6::R6Class("TapReporter", inherit = Reporter,
  public = list(
    results = list(),
    n = 0L,
    has_tests = FALSE,
    contexts = NA_character_,

    start_context = function(context) {
      self$contexts[self$n + 1] <- context
    },

    add_result = function(context, test, result) {
      self$has_tests <- TRUE
      self$n <- self$n + 1L
      self$results[[self$n]] <- result
    },

    end_reporter = function() {
      if (!self$has_tests)
        return()

      cat("1..", self$n, '\n', sep = '')
      for (i in 1:self$n) {
        if (!is.na(self$contexts[i])) {
          cat("# Context", self$contexts[i], "\n")
        }
        result <- self$results[[i]]
        if (expectation_success(result)) {
          cat('ok', i, result$test, '\n')
        } else if (expectation_broken(result)) {
          cat('not ok', i, result$test, '\n')
          msg <- gsub('\n', '\n  ', format(result))
          cat(' ', msg, '\n')
        } else {
          cat('ok', i, '#', toupper(expectation_type(result)), format(result), '\n')
        }
      }
    }
  )
)
