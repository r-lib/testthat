#' @include reporter.R stack.R
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
    failures = NULL,
    skips = NULL,
    warnings = NULL,
    max_reports = getOption("testthat.summary.max_reports", 15L),
    show_praise = TRUE,

    initialize = function(show_praise = TRUE) {
      super$initialize()
      self$show_praise <- show_praise
      self$failures <- Stack$new()
      self$skips <- Stack$new()
      self$warnings <- Stack$new()
    },

    start_context = function(context) {
      self$cat_tight(context, ": ")
    },

    end_context = function(context) {
      self$cat_line()
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        if (self$failures$size() + 1 > self$max_reports) {
          self$cat_tight(single_letter_summary(result))
        } else {
          self$failures$push(result)
          self$cat_tight(colourise(labels[self$failures$size()], "error"))
        }
      } else if (expectation_skip(result)) {
        self$skips$push(result)
        self$cat_tight(single_letter_summary(result))
      } else if (expectation_warning(result)) {
        self$warnings$push(result)
        self$cat_tight(single_letter_summary(result))
      } else {
        self$cat_tight(single_letter_summary(result))
      }
    },

    end_reporter = function() {
      skips <- self$skips$as_list()
      failures <- self$failures$as_list()
      warnings <- self$warnings$as_list()

      self$cat_line()
      private$cat_reports("Skipped", skips, Inf, skip_summary)
      private$cat_reports("Warnings", warnings, Inf, skip_summary)
      private$cat_reports("Failed", failures, self$max_reports, failure_summary)

      rule("DONE", pad = "=")
    }
  ),

  private = list(
    cat_reports = function(header, expectations, max_n, summary_fun,
                           collapse = "\n\n") {
      n <- length(expectations)
      if (n == 0L)
        return()

      rule(header)

      if (n > max_n) {
        expectations <- expectations[seq_len(max_n)]
      }

      labels <- seq_along(expectations)
      exp_summary <- function(i) {
        summary_fun(expectations[[i]], labels[i])
      }
      report_summary <- vapply(seq_along(expectations), exp_summary, character(1))

      self$cat_tight(paste(report_summary, collapse = collapse))
      if (n > max_n) {
        self$cat_line("  ... and ", n - max_n, " more")
      }

      self$cat_paragraph()
    }
  )
)

labels <- c(1:9, letters, LETTERS)
