#' @include reporter.r
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
#' @export SummaryReporter
#' @aliases SummaryReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
SummaryReporter <- setRefClass("SummaryReporter", contains = "Reporter",
  fields = list(
    "failures" = "list",
    "skips" = "list",
    "n" = "integer",
    "has_tests" = "logical",
    "max_reports" = "numeric",
    "show_praise" = "logical"),

  methods = list(
    initialize = function(max_reports = getOption("testthat.summary.max_reports", 15L), ...) {
      max_reports <<- max_reports
      show_praise <<- TRUE
      callSuper(...)
    },

    start_context = function(desc) {
      cat(desc, ": ")
    },

    end_context = function() {
      cat("\n")
    },

    start_reporter = function() {
      failures <<- list()
      skips <<- list()
      has_tests <<- FALSE
      n <<- 0L
    },

    add_result = function(result) {
      callSuper(result)
      has_tests <<- TRUE
      if (expectation_skip(result)) {
        result$test <- if (is.null(test)) "(unknown)" else test
        skips <<- c(skips, list(result))
        cat(colourise("S", "skip"))
        return()
      }
      if (expectation_success(result)) {
        cat(colourise(".", "success"))
        return()
      }

      if (n + 1 > length(labels) || n + 1 > max_reports) {
        cat(colourise("F", "error"))
      } else {
        n <<- n + 1L
        result$test <- if (is.null(test)) "(unknown)" else test
        failures[[n]] <<- result
        cat(colourise(labels[n], "error"))
      }
    },

    end_reporter = function() {
      if (n == 0) {
        if (!has_tests)
          return()

        if (length(skips) > 0L) {
          cat(colourise("\nSkip:", "skip"), "\n\n")
          cat_reports(skips, skip_summary, "\n")
        }

        cat("\n")
        if (show_praise && runif(1) < 0.1) {
          cat(colourise(praise(), "success"), "\n")
        } else {
          cat(colourise("DONE", "success"), "\n")
        }
      } else {
        cat("\n")
        cat_reports(failures, failure_summary, "\n\n")

        if (show_praise && runif(1) < 0.25) {
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
