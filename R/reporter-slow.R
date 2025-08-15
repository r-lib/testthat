#' Find slow tests
#'
#' @description
#' `SlowReporter` is designed to identify slow tests. It reports the
#' execution time for each test and can optionally filter out tests that
#' run faster than a specified threshold (default: 1 second). This reporter
#' is useful for performance optimization and identifying tests that may
#' benefit from optimization or parallelization.
#'
#' @export
#' @family reporters
SlowReporter <- R6::R6Class(
  "SlowReporter",
  inherit = Reporter,
  public = list(
    min_time = 0.5,
    test_timings = NULL,
    current_test_start = NULL,
    current_file = NULL,

    initialize = function(min_time = 0.5, ...) {
      super$initialize(...)
      self$min_time <- min_time
      self$test_timings <- list()
    },

    start_reporter = function(context) {
      self$cat_line(
        cli::style_bold("Slow tests"),
        " (showing tests >= ",
        self$min_time,
        "s)"
      )
      self$cat_line()
    },

    start_file = function(file) {
      self$current_file <- file
    },

    start_test = function(context, test, srcref=NULL) {
      self$current_test_start <- proc.time()[[3]]
    },

    end_test = function(context, test) {
      if (is.null(self$current_test_start)) {
        return()
      }

      time_taken <- proc.time()[[3]] - self$current_test_start

      # Store timing information
      timing <- list(
        file = self$current_file,
        test = test,
        time = time_taken
      )
      self$test_timings[[length(self$test_timings) + 1]] <- timing

      if (time_taken >= self$min_time) {
        self$show_timing(timing)
      }

      self$current_test_start <- NULL
    },

    end_reporter = function() {
      if (length(self$test_timings) == 0) {
        return()
      }

      all_times <- map_dbl(self$test_timings, \(x) x$time)
      is_slow <- all_times >= self$min_time

      self$cat_line()
      self$rule(cli::style_bold("Summary"), line = 2)
      self$cat_line("All tests:  ", sprintf("%.2fs", sum(all_times)))
      self$cat_line("Slow tests: ", sprintf("%.2fs", sum(all_times[is_slow])))

      if (sum(is_slow) <= 10) {
        return()
      }

      # Sort by time descending for summary
      slowest <- self$test_timings[order(all_times, decreasing = TRUE)]

      self$cat_line()
      self$rule(cli::style_bold("Slowest tests:"), line = 1)

      # Show top 10 slowest tests
      for (i in 1:10) {
        self$show_timing(slowest[[i]])
      }

      if (length(slowest) > 10) {
        self$cat_line("... and ", length(slowest) - 10, " more slow tests")
      }

      self$cat_line()
    },
    show_timing = function(timing) {
      time <- sprintf("%.2fs", timing$time)
      self$cat_line("[", time, "] ", time, " ", timing$file, ": ", timing$test)
    }
  )
)
