#' @include reporter.R stack.R
NULL

#' Test reporter: interactive progress bar of errors.
#'
#' This reporter is a reimagining of [SummaryReporter] designed to make the
#' most information available up front, while taking up less space overall. It
#' is the default reporting reporter used by [test_dir()] and [test_file()].
#'
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
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
    frames = NULL,

    skips = NULL,

    max_fail = NULL,
    n_ok = 0,
    n_skip = 0,
    n_warn = 0,
    n_fail = 0,
    width = 0,

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
      self$width <- cli::console_width()
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

      name <- context_name(self$file_name)
      get_reporter()$.start_context(name)
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

      self$show_status()
    },

    end_reporter = function() {
      self$cat_line()

      if (self$is_full()) {
        self$rule("Terminating early", line = 2)
        self$cat_line("Too many failures")
        return()
      }

      colour_if <- function(n, type) {
        colourise(n, if (n == 0) "success" else type)
      }

      self$rule(crayon::bold("Results"), line = 2)
      time <- proc.time() - self$start_time
      if (time[[3]] > self$min_time) {
        self$cat_line("Duration: ", sprintf("%.1f s", time[[3]]), col = "cyan")
        self$cat_line()
      }

      self$cat_line("OK:       ", colourise(self$n_ok, "success"))
      self$cat_line("Failed:   ", colour_if(self$n_fail, "fail"))
      self$cat_line("Warnings: ", colour_if(self$n_warn, "warn"))
      self$cat_line("Skipped:  ", colour_if(self$n_skip, "skip"))

      if (self$n_skip > 0) {
        self$cat_line(skip_bullets(self$skips$as_list()))
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


spinner <- function(frames, i) {
  frames[((i - 1) %% length(frames)) + 1]
}

issue_summary <- function(x) {
  type <- expectation_type(x)

  if (is.null(x$srcref)) {
    loc <- "???"
  } else {
    filename <- attr(x$srcref, "srcfile")$filename
    loc <- paste0(basename(filename), ":", x$srcref[1])
  }

  header <- paste0(loc, ": ", colourise(type, type), ": ", x$test)

  paste0(
    crayon::bold(header), "\n",
    format(x)
  )
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
