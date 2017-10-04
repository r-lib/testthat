#' @include reporter.R stack.R
NULL

#' Test reporter: interactive progress bar of errors.
#'
#' This reporter is a reimagining of [SummaryReporter] desgined to make the
#' most information available up front, while taking up less space overall. It
#' is the default reporting reporter used by [test_dir()] and [test_file()].
#'
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
#'
#' @export
#' @family reporters
ProgressReporter <- R6::R6Class("ProgressReporter", inherit = Reporter,
  public = list(
    failures = NULL,
    skips = NULL,
    warnings = NULL,
    show_praise = TRUE,

    max_failures = NULL,
    n_ok = 0,
    n_skip = 0,
    n_warn = 0,
    n_fail = 0,

    ctxt_start_time = NULL,
    ctxt_issues = NULL,
    ctxt_n = 0,
    ctxt_n_ok = 0,
    ctxt_n_skip = 0,
    ctxt_n_warn = 0,
    ctxt_n_fail = 0,
    ctxt_name = 0,

    initialize = function(show_praise = TRUE,
                          max_failures = getOption("testthat.progress.max_fails", 10L)
                          ) {
      super$initialize()
      self$max_failures <- max_failures
      self$show_praise <- show_praise
    },

    start_reporter = function(context) {
      self$show_header()
    },

    start_context = function(context) {
      self$ctxt_name <- context
      self$ctxt_issues <- Stack$new()

      self$ctxt_n <- 0L
      self$ctxt_n_ok <- 0L
      self$ctxt_n_fail <- 0L
      self$ctxt_n_warn <- 0L
      self$ctxt_n_skip <- 0L

      self$ctxt_start_time <- proc.time()
      self$show_status()
    },

    show_header = function() {
      self$cat_line(
        clisymbols::symbol$tick, " | OK ",
        colourise("F", "failure"), " ",
        colourise("W", "warning"), " ",
        colourise("S", "skip"), " | ",
        "Context"
      )
    },

    show_status = function(complete = FALSE) {

      if (complete) {
        if (self$ctxt_n_fail > 0) {
          status <- crayon::red(clisymbols::symbol$cross)
        } else {
          status <- crayon::green(clisymbols::symbol$tick)
        }
      } else {
        status <- spinner(self$ctxt_n)
      }

      col_format <- function(n, type) {
        if (n == 0) {
          " "
        } else {
          n
        }
      }

      self$cat_tight(
        "\r",
        status, " | ", sprintf("%2d", self$ctxt_n_ok), " ",
        col_format(self$ctxt_n_fail), " ",
        col_format(self$ctxt_n_warn), " ",
        col_format(self$ctxt_n_skip), " | ",
        self$ctxt_name
      )
    },

    end_context = function(context) {
      time <- proc.time() - self$ctxt_start_time

      self$show_status(complete = TRUE)

      if (time[[3]] > 0.1) {
        self$cat(crayon::white(sprintf(" [%.1f s]", time[[3]])))
      }
      self$cat_line()

      if (self$ctxt_issues$size() > 0) {
        self$rule()

        issues <- self$ctxt_issues$as_list()
        summary <- vapply(issues, issue_summary, FUN.VALUE = character(1))
        self$cat_tight(paste(summary, collapse = "\n\n"))

        self$cat_line()
        self$rule()
      }
    },

    add_result = function(context, test, result) {
      self$ctxt_n <- self$ctxt_n + 1L

      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1
        self$ctxt_n_fail <- self$ctxt_n_fail + 1
        self$ctxt_issues$push(result)
      } else if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1
        self$ctxt_n_skip <- self$ctxt_n_skip + 1
        self$ctxt_issues$push(result)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1
        self$ctxt_n_warn <- self$ctxt_n_warn + 1
        self$ctxt_issues$push(result)
      } else {
        self$n_ok <- self$n_ok + 1
        self$ctxt_n_ok <- self$ctxt_n_ok + 1
      }

      self$show_status()
    },

    end_reporter = function() {
      self$cat_line()

      self$cat_line("OK:       ", self$n_ok)
      self$cat_line("Failed:   ", self$n_fail)
      self$cat_line("Warnings: ", self$n_warn)
      self$cat_line("Skipped:  ", self$n_skip)

      if (!self$show_praise || runif(1) > 0.1)
        return()

      if (self$n_fail == 0) {
        self$cat_line(colourise(praise(), "success"))
      } else {
        self$cat_line(colourise(encourage(), "error"))
      }
    }
  ),

  private = list(
  )
)


spinner <- function(i) {
  frames <- c(
    "\u280b", "\u2819", "\u2839", "\u2838", "\u283c", "\u2834",
    "\u2826", "\u2827", "\u2807", "\u280f"
  )
  # c("⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" )

  frames[((i - 1) %% length(frames)) + 1]
}


issue_summary <- function(x) {
  type <- switch(expectation_type(x),
    error = "Error",
    failure = "Failure",
    skip = "Skip",
    warning = "Warning"
  )

  paste0(
    colourise(type, expectation_type(x)), ": ",
    x$test, crayon::blue(src_loc(x$srcref)), "\n",
    format(x)
  )
}
