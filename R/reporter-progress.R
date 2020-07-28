#' Test reporter: interactive progress bar of errors.
#'
#' @description
#' `ProgressReporter` is designed for interactively use. It's goal is to
#' give you actionable insights to help you understand the status of your
#' code. This reporter also praises you from time-to-time if all your tests
#' pass. It's the default reporter for [test_dir()].
#'
#' `CompactProgressReporter` is a minimal version of `ProgressReporter`
#' designed for use with single files. It's the default reporter for
#' [test_file()].
#'
#' @export
#' @family reporters
ProgressReporter <- R6::R6Class("ProgressReporter",
  inherit = Reporter,
  public = list(
    show_praise = TRUE,
    min_time = 0.1,
    start_time = NULL,
    last_update = NULL,
    update_interval = NULL,

    skips = NULL,

    max_fail = NULL,
    n_ok = 0,
    n_skip = 0,
    n_warn = 0,
    n_fail = 0,

    frames = NULL,

    ctxt_start_time = NULL,
    ctxt_issues = NULL,
    ctxt_n = 0,
    ctxt_n_ok = 0,
    ctxt_n_skip = 0,
    ctxt_n_warn = 0,
    ctxt_n_fail = 0,
    ctxt_name = "",
    file_name = "",

    initialize = function(show_praise = TRUE,
                          max_failures = getOption("testthat.progress.max_fails", 10L),
                          min_time = 0.1,
                          update_interval = 0.1,
                          ...) {
      super$initialize(...)
      self$max_fail <- max_failures
      self$show_praise <- show_praise
      self$min_time <- min_time
      self$update_interval <- update_interval

      self$skips <- Stack$new()

      # Capture at init so not affected by test settings
      self$frames <- cli::get_spinner()$frames
    },

    is_full = function() {
      self$n_fail >= self$max_fail
    },

    start_reporter = function(context) {
      self$start_time <- proc.time()
      self$show_header()
    },

    start_file = function(file) {
      self$file_name <- file
      self$ctxt_issues <- Stack$new()
      self$ctxt_start_time <- proc.time()

      context_start_file(self$file_name)
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
        cli::symbol$tick, " |  OK ",
        colourise("F", "failure"), " ",
        colourise("W", "warning"), " ",
        colourise("S", "skip"), " | ",
        "Context"
      )
    },

    show_status = function(complete = FALSE) {
      if (complete) {
        if (self$ctxt_n_fail > 0) {
          status <- crayon::red(cli::symbol$cross)
        } else {
          status <- crayon::green(cli::symbol$tick)
        }
      } else {
        # Do not print if not enough time has passed since we last printed.
        if (!self$should_update()) {
          return()
        }
        status <- spinner(self$frames, self$ctxt_n)
      }

      col_format <- function(n, type) {
        if (n == 0) {
          " "
        } else {
          n
        }
      }

      message <- paste0(
        status, " | ", sprintf("%3d", self$ctxt_n_ok), " ",
        col_format(self$ctxt_n_fail, "fail"), " ",
        col_format(self$ctxt_n_warn, "warn"), " ",
        col_format(self$ctxt_n_skip, "skip"), " | ",
        self$ctxt_name
      )
      if (!complete) {
        message <- strpad(message, self$width)
      }
      self$cat_tight("\r", message)
    },

    end_context = function(context) {
      time <- proc.time() - self$ctxt_start_time
      self$last_update <- NULL

      # context with no expectation = automatic file context in file
      # that also has manual contexts
      if (self$ctxt_n == 0) {
        return()
      }

      self$show_status(complete = TRUE)
      if (time[[3]] > self$min_time) {
        self$cat_line(sprintf(" [%.1f s]", time[[3]]), col = "cyan")
      } else {
        self$cat_line()
      }

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
        self$skips$push(result$message)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1
        self$ctxt_n_warn <- self$ctxt_n_warn + 1
        self$ctxt_issues$push(result)
      } else {
        self$n_ok <- self$n_ok + 1
        self$ctxt_n_ok <- self$ctxt_n_ok + 1
      }

      if (self$is_full()) {
        self$local_user_output()
        self$end_context()
        stop_reporter(paste0(
          "Maximum number of failures exceeded; quitting early.\n",
          "You can increase this number by setting `options(testthat.progress.max_fails)`"
        ))
      }

      self$show_status()
    },

    end_reporter = function() {
      self$cat_line()

      colour_if <- function(n, type) {
        colourise(n, if (n == 0) "success" else type)
      }

      self$rule(crayon::bold("Results"), line = 2)
      time <- proc.time() - self$start_time
      if (time[[3]] > self$min_time) {
        self$cat_line("Duration: ", sprintf("%.1f s", time[[3]]), col = "cyan")
        self$cat_line()
      }

      if (self$n_skip > 0) {
        self$rule("Skipped tests ", line = 1)
        self$cat_line(skip_bullets(self$skips$as_list()))
        self$cat_line()
      }

      status <- summary_line(self$n_ok, self$n_fail, self$n_warn, self$n_skip)
      self$cat_line(status)

      if (self$is_full()) {
        self$rule("Terminated early", line = 2)
      }

      if (!self$show_praise || runif(1) > 0.1) {
        return()
      }

      self$cat_line()
      if (self$n_fail == 0) {
        self$cat_line(colourise(praise(), "success"))
      } else {
        self$cat_line(colourise(encourage(), "error"))
      }
    },

    should_update = function() {
      if (self$update_interval == 0) {
        return(TRUE)
      }

      time <- proc.time()[[3]]
      if (!is.null(self$last_update) &&
        (time - self$last_update) < self$update_interval) {
        return(FALSE)
      }
      self$last_update <- time
      TRUE
    }
  )
)

#' @export
#' @rdname ProgressReporter
CompactProgressReporter <- R6::R6Class("CompactProgressReporter",
  inherit = ProgressReporter,
  public = list(
    initialize = function(min_time = Inf, ...) {
      super$initialize(min_time = min_time, ...)
    },

    start_file = function(name) {
      self$cat_line()
      self$rule(cli::style_bold(paste0("Testing ", name)), line = 2)
      super$start_file(name)
    },

    start_reporter = function(context) {
    },

    end_context = function(context) {
      if (self$ctxt_issues$size() == 0) {
        return()
      }

      self$cat_line()
      self$cat_line()

      issues <- self$ctxt_issues$as_list()
      summary <- vapply(issues, issue_summary, rule = TRUE,
        FUN.VALUE = character(1)
      )
      self$cat_tight(paste(summary, collapse = "\n\n"))

      self$cat_line()
      self$cat_line()
    },

    end_reporter = function() {
      if (self$n_fail > 0 || self$n_warn > 0 || self$n_skip > 0) {
        self$show_status()
        self$cat_line()
      } else if (self$is_full()) {
        self$cat_line(" Terminated early")
      } else {
        self$cat_line(crayon::bold(" Done!"))
      }
    },

    show_status = function(complete = NULL) {
      self$local_user_output()
      status <- summary_line(self$n_ok, self$n_fail, self$n_warn, self$n_skip)
      self$cat_tight("\r", status)
    }

  )
)

# helpers -----------------------------------------------------------------

spinner <- function(frames, i) {
  frames[((i - 1) %% length(frames)) + 1]
}

issue_summary <- function(x, rule = FALSE) {
  type <- expectation_type(x)
  loc <- expectation_location(x)

  header <- paste0(loc, ": ", colourise(type, type), ": ", x$test)
  header <- crayon::bold(header)
  if (rule) {
    header <- cli::rule(header)
  }

  paste0(header, "\n", format(x))
}

strpad <- function(x, width = cli::console_width()) {
  n <- pmax(0, width - nchar(x))
  paste0(x, strrep(" ", n))
}

skip_bullets <- function(skips) {
  skips <- gsub("Reason: ", "", unlist(skips))
  tbl <- table(skips)
  paste0(cli::symbol$bullet, " ", names(tbl), " (", tbl, ")")
}
