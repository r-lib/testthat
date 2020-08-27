#' Test reporter: summary of errors.
#'
#' This is a reporter designed for interactive usage: it lets you know which
#' tests have run successfully and as well as fully reporting information about
#' failures and errors.
#'
#' You can use the `max_reports` field to control the maximum number
#' of detailed reports produced by this reporter. This is useful when running
#' with [auto_test()]
#'
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
#'
#' @export
#' @family reporters
SummaryReporter <- R6::R6Class("SummaryReporter",
  inherit = Reporter,
  public = list(
    failures = NULL,
    skips = NULL,
    warnings = NULL,
    max_reports = NULL,
    show_praise = TRUE,
    omit_dots = FALSE,

    initialize = function(show_praise = TRUE,
                          omit_dots = getOption("testthat.summary.omit_dots"),
                          max_reports = getOption("testthat.summary.max_reports", 10L),
                          ...) {
      super$initialize(...)
      self$capabilities$parallel_support <- TRUE
      self$failures <- Stack$new()
      self$skips <- Stack$new()
      self$warnings <- Stack$new()
      self$max_reports <- max_reports
      self$show_praise <- show_praise
      self$omit_dots <- omit_dots
    },

    is_full = function() {
      self$failures$size() >= self$max_reports
    },

    start_file = function(file) {
      context_start_file(file)
    },

    start_context = function(context) {
      self$cat_tight(context, ": ")
    },

    end_context = function(context) {
      self$cat_line()
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$failures$push(result)
      } else if (expectation_skip(result)) {
        self$skips$push(result)
      } else if (expectation_warning(result)) {
        self$warnings$push(result)
      } else {
        if (isTRUE(self$omit_dots)) {
          return()
        }
      }

      self$cat_tight(private$get_summary(result))
    },

    end_reporter = function() {
      skips <- self$skips$as_list()
      failures <- self$failures$as_list()
      warnings <- self$warnings$as_list()

      self$cat_line()
      private$cat_reports("Skipped", skips, Inf, skip_summary)
      private$cat_reports("Warnings", warnings, Inf, skip_summary)
      private$cat_reports("Failed", failures, self$max_reports, failure_summary)

      if (self$failures$size() >= self$max_reports) {
        self$cat_line(
          "Maximum number of ", self$max_reports, " failures reached, ",
          "some test results may be missing."
        )
        self$cat_line()
      }

      self$rule("DONE", line = 2)
      if (self$show_praise) {
        if (length(failures) == 0 && runif(1) < 0.1) {
          self$cat_line(colourise(praise(), "success"))
        }
        if (length(failures) > 0 && runif(1) < 0.25) {
          self$cat_line(colourise(encourage(), "error"))
        }
      }
    }
  ),

  private = list(
    get_summary = function(result) {
      if (expectation_broken(result)) {
        if (self$failures$size() <= length(labels)) {
          return(colourise(labels[self$failures$size()], "error"))
        }
      }

      single_letter_summary(result)
    },

    cat_reports = function(header, expectations, max_n, summary_fun,
                           collapse = "\n\n") {
      n <- length(expectations)
      if (n == 0L) {
        return()
      }

      self$rule(header, line = 2)

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
        self$cat_line()
        self$cat_line("  ... and ", n - max_n, " more")
      }

      self$cat_line()
      self$cat_line()
    }
  )
)

labels <- c(1:9, letters, LETTERS)

skip_summary <- function(x, label) {
  header <- paste0(label, ". ", x$test)

  paste0(
    colourise(header, "skip"), " (", expectation_location(x), ") - ", x$message
  )
}

failure_summary <- function(x, label, width = cli::console_width()) {
  header <- paste0(label, ". ", issue_header(x))

  paste0(
    cli::rule(header, col = testthat_style("error")), "\n",
    format(x)
  )
}
