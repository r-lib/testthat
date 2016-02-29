#' @include reporter.R
NULL

#' Test reporter: summary of errors.
#'
#' This is the most useful reporting reporter as it lets you know both which
#' tests have run successfully, as well as fully reporting information about
#' failures and errors.  It is the default reporting reporter used by
#' \code{\link{test_dir}} and \code{\link{test_file}}.
#'
#' You can use the \code{max_reports} field to control the maximum number
#' of detailed reports produced by this reporter. This is useful when running
#' with \code{\link{auto_test}}
#'
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
#'
#' @export
SummaryReporter <- R6::R6Class("SummaryReporter", inherit = Reporter,
  public = list(
    failures = list(),
    skips = list(),
    n = 0L,
    has_tests = FALSE,
    max_reports = getOption("testthat.summary.max_reports", 15L),
    show_praise = TRUE,

    initialize = function(show_praise = TRUE) {
      self$show_praise <- show_praise
    },

    start_context = function(context) {
      cat(context, ": ", sep = "")
    },

    end_context = function(context) {
      cat("\n")
    },

    add_result = function(context, test, result) {
      self$has_tests <- TRUE

      if (expectation_broken(result)) {
        if (self$n + 1 > self$max_reports) {
          cat(single_letter_summary(result))
        } else {
          self$n <- self$n + 1L
          self$failures[[self$n]] <- result
          cat(colourise(labels[self$n], "error"))
        }
      } else if (expectation_skip(result)) {
        self$skips <- c(self$skips, list(result))

        cat(single_letter_summary(result))
      } else {
        cat(single_letter_summary(result))
      }

    },

    end_reporter = function() {
      if (self$n == 0) {
        if (!self$has_tests)
          return()

        if (length(self$skips) > 0L) {
          cat(colourise("\nSkip:", "skip"), "\n\n")
          cat_reports(self$skips, skip_summary, "\n")
        }

        cat("\n")
        if (self$show_praise && runif(1) < 0.1) {
          cat(colourise(praise(), "success"), "\n")
        } else {
          cat(colourise("DONE", "success"), "\n")
        }
      } else {
        cat("\n")
        cat_reports(self$failures, failure_summary, "\n\n")

        if (self$show_praise && runif(1) < 0.25) {
          cat("\n", colourise(encourage(), "error"), "\n", sep = "")
        }
      }
    }
  )
)

labels <- c(1:9, letters, LETTERS)

cat_reports <- function(reports, summary_fun, collapse) {
  report_summary <- vapply(
    seq_len(min(length(reports), length(labels))),
    function(i) {
      summary_fun(reports[[i]], labels[i])
    }, character(1L))
  cat(paste(report_summary, collapse = collapse), "\n", sep = "")

  extra_reports <- length(reports) - length(labels)
  if (extra_reports > 0L) {
    cat("  ... and ", extra_reports, " more\n", sep = "")
  }
}
