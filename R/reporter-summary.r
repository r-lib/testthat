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
    "n" = "integer",
    "has_tests" = "logical",
    "max_reports" = "numeric",
    "show_praise" = "logical"),

  methods = list(
    initialize = function(max_reports = Inf, ...) {
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
      has_tests <<- FALSE
      n <<- 0L
    },

    add_result = function(result) {
      callSuper(result)
      has_tests <<- TRUE
      if (result$skipped) {
        cat(colourise("S", "skipped"))
        return()
      }
      if (result$passed) {
        cat(colourise(".", "passed"))
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
        cat("\n")
        if (show_praise && runif(1) < 0.1) {
          cat(colourise(praise(), "passed"), "\n")
        } else {
          cat(colourise("DONE", "passed"), "\n")
        }
      } else {
        cat("\n")

        reports <- vapply(seq_len(n), function(i) {
          failure_summary(failures[[i]], labels[i])
        }, character(1))
        cat(paste(reports, collapse = "\n\n"), "\n", sep = "")

        if (show_praise && runif(1) < 0.25) {
          cat("\n", colourise(encourage(), "error"), "\n", sep = "")
        }
      }
    }
  )
)

labels <- c(1:9, letters, LETTERS)
