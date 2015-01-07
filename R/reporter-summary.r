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
      charrep <- function(char, times) {
        sapply(times, function(i) paste0(rep.int(char, i), collapse = ""))
      }

      if (n == 0) {
        cat("\n")
        if (has_tests && sample(10, 1) == 1 && show_praise) {
          cat(colourise(sample(.praise, 1), "passed"), "\n")
        } else {
          cat(colourise("DONE", "passed"), "\n")
        }
      } else {
        cat("\n")
        reports <- vapply(seq_len(n), function(i) {
          failure_summary(failures[[i]], labels[i])
        }, character(1))
        cat(paste(reports, collapse = "\n\n"), "\n", sep = "")
      }
    }
  )
)

.praise <- c(
  "You rock!",
  "You are a coding rockstar!",
  "Keep up the good work.",
  ":)",
  "Woot!",
  "Way to go!",
  "Nice code."
)
labels <- c(1:9, letters, LETTERS)
