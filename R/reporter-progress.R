#' Test reporter: interactive progress bar of errors.
#'
#' @description
#' `ProgressReporter` is designed for interactively use. It's goal is to
#' give you actionable insights to help you understand the status of your
#' code. This reporter also praises you from time-to-time if all your tests
#' pass. It's the default reporter for [test_dir()].
#'
#' `ParallelProgressReporter` is very similar to `ProgressReporter`, but
#' works better for packages that want parallel tests.
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
    verbose_skips = NULL,
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
                          verbose_skips = getOption("testthat.progress.verbose_skips", TRUE),
                          ...) {
      super$initialize(...)
      self$capabilities$parallel_support <- TRUE
      self$show_praise <- show_praise
      self$max_fail <- max_failures
      self$verbose_skips <- !rlang::is_false(verbose_skips)
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

    status_data = function() {
      list(
        n = self$ctxt_n,
        n_ok = self$ctxt_n_ok,
        n_fail = self$ctxt_n_fail,
        n_warn = self$ctxt_n_warn,
        n_skip = self$ctxt_n_skip,
        name = self$ctxt_name
      )
    },

    show_status = function(complete = FALSE, time = 0, pad = FALSE) {
      data <- self$status_data()
      if (complete) {
        if (data$n_fail > 0) {
          status <- crayon::red(cli::symbol$cross)
        } else {
          status <- crayon::green(cli::symbol$tick)
        }
      } else {
        # Do not print if not enough time has passed since we last printed.
        if (!self$should_update()) {
          return()
        }
        status <- spinner(self$frames, data$n)
        if (data$n_fail > 0) {
          status <- colourise(status, "failure")
        } else if (data$n_warn > 0) {
          status <- colourise(status, "warning")
        }
      }

      col_format <- function(n, type) {
        if (n == 0) {
          " "
        } else {
          n
        }
      }

      message <- paste0(
        status, " | ", sprintf("%3d", data$n_ok), " ",
        col_format(data$n_fail, "fail"), " ",
        col_format(data$n_warn, "warn"), " ",
        col_format(data$n_skip, "skip"), " | ",
        data$name
      )

      if (complete && time > self$min_time) {
        message <- paste0(
          message,
          cli::col_cyan(sprintf(" [%.1f s]", time))
        )
      }

      if (pad) {
        message <- strpad(message, self$width)
        message <- crayon::col_substr(message, 1, self$width)
      }

      if (!complete) {
        message <- strpad(message, self$width)
        self$cat_tight("\r", message)
      } else {
        self$cat_line("\r", message)
      }
    },

    end_context = function(context) {
      time <- proc.time() - self$ctxt_start_time
      self$last_update <- NULL

      # context with no expectation = automatic file context in file
      # that also has manual contexts
      if (self$ctxt_n == 0) {
        return()
      }

      self$show_status(complete = TRUE, time = time[[3]])

      self$report_issues(self$ctxt_issues)
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
        if (self$verbose_skips) {
          self$ctxt_issues$push(result)
        }
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

      status <- summary_line(self$n_fail, self$n_warn, self$n_skip, self$n_ok)
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

    report_issues = function(issues) {
      if (issues$size() > 0) {
        self$rule()

        issues <- issues$as_list()
        summary <- vapply(issues, issue_summary, FUN.VALUE = character(1))
        self$cat_tight(paste(summary, collapse = "\n\n"))

        self$cat_line()
        self$rule()
      }
    },

    should_update = function() {
      if (self$update_interval == 0) {
        return(TRUE)
      }
      if (identical(self$update_interval, Inf)) {
        return(FALSE)
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
    # Is this being run by RStudio's test file button?
    rstudio = FALSE,

    initialize = function(rstudio = FALSE, min_time = Inf, ...) {
      self$rstudio <- rstudio
      super$initialize(min_time = min_time, ...)
    },

    start_file = function(name) {
      if (!self$rstudio) {
        self$cat_line()
        self$rule(cli::style_bold(paste0("Testing ", name)), line = 2)
      }
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
      } else if (!self$rstudio) {
        self$cat_line(crayon::bold(" Done!"))
      }
    },

    show_status = function(complete = NULL) {
      self$local_user_output()
      status <- summary_line(self$n_fail, self$n_warn, self$n_skip, self$n_ok)
      self$cat_tight("\r", status)
    }

  )
)

# parallel progres reporter -----------------------------------------------

#' @export
#' @rdname ProgressReporter

ParallelProgressReporter <- R6::R6Class("ParallelProgressReporter",
  inherit = ProgressReporter,
  public = list(

    files = list(),
    spin_frame = 0L,
    is_rstudio = FALSE,

    initialize = function(...) {
      super$initialize(...)
      self$capabilities$parallel_support <- TRUE
      self$capabilities$parallel_updates <- TRUE
      self$update_interval <- 0.05
      self$is_rstudio <- Sys.getenv("RSTUDIO", "") == "1"
    },

    start_file = function(file)  {
      if (! file %in% names(self$files)) {
        self$files[[file]] <- list(
          issues = Stack$new(),
          n_fail = 0L,
          n_skip_ = 0L,
          n_warn = 0L,
          n_ok = 0L,
          name = context_name(file),
          start_time = proc.time()
        )
      }
      self$file_name <- file
    },

    start_context = function(context) {
      # we'll just silently ignore this
    },

    end_context = function(context) {
      # we'll just silently ignore this
    },

    end_file = function() {
      fsts <- self$files[[self$file_name]]
      time <- proc.time() - fsts$start_time

      # Workaround for https://github.com/rstudio/rstudio/issues/7649
      if (self$is_rstudio) {
        self$cat_tight(strpad("\r", self$width + 1)) # +1 for \r
      }
      self$show_status(complete = TRUE, time = time[[3]], pad = TRUE)
      self$report_issues(fsts$issues)

      self$files[[self$file_name]] <- NULL
      if (length(self$files)) self$update(force = TRUE)
    },

    end_reporter = function() {
      self$cat_tight("\r", strpad("", self$width))
      super$end_reporter()
    },

    show_header = function() {
      super$show_header()
      self$update(force = TRUE)
    },

    status_data = function() {
      self$files[[self$file_name]]
    },

    add_result = function(context, test, result) {
      self$ctxt_n <- self$ctxt_n + 1L
      file <- self$file_name
      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1
        self$files[[file]]$n_fail <- self$files[[file]]$n_fail + 1L
        self$files[[file]]$issues$push(result)
      } else if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1
        self$files[[file]]$n_skip_ <- self$files[[file]]$n_skip_ + 1L
        if (self$verbose_skips) {
          self$files[[file]]$issues$push(result)
        }
        self$skips$push(result$message)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1
        self$files[[file]]$n_warn <- self$files[[file]]$n_warn + 1L
        self$files[[file]]$issues$push(result)
      } else {
        self$n_ok <- self$n_ok + 1
        self$files[[file]]$n_ok <- self$files[[file]]$n_ok + 1
      }
    },

    update = function(force = FALSE) {
      if (!force && !self$should_update()) return()
      self$spin_frame <- self$spin_frame + 1L
      status <- spinner(self$frames, self$spin_frame)

      message <- paste(
        status,
        summary_line(self$n_fail, self$n_warn, self$n_skip, self$n_ok),
        if (length(self$files) > 0) "@" else "Starting up...",
        paste(context_name(names(self$files)), collapse = ", ")
      )
      message <- strpad(message, self$width)
      message <- crayon::col_substr(message, 1, self$width)
      self$cat_tight("\r", message)
    }
  )
)

# helpers -----------------------------------------------------------------

spinner <- function(frames, i) {
  frames[((i - 1) %% length(frames)) + 1]
}

issue_header <- function(x, pad = FALSE) {
  type <- expectation_type(x)
  if (has_colour()) {
    type <- colourise(first_upper(type), type)
  } else {
    type <- first_upper(type)
  }
  if (pad) {
   type <- strpad(type, 7)
  }

  loc <- expectation_location(x)
  paste0(type, " (", loc, "): ", x$test)
}

issue_summary <- function(x, rule = FALSE, simplify = "branch") {
  header <- crayon::bold(issue_header(x))
  if (rule) {
    header <- cli::rule(header, width = max(nchar(header) + 6, 80))
  }

  paste0(header, "\n", format(x, simplify = simplify))
}

strpad <- function(x, width = cli::console_width()) {
  n <- pmax(0, width - crayon::col_nchar(x))
  paste0(x, strrep(" ", n))
}

skip_bullets <- function(skips) {
  skips <- gsub("Reason: ", "", unlist(skips))
  tbl <- table(skips)
  paste0(cli::symbol$bullet, " ", names(tbl), " (", tbl, ")")
}
