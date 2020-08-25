#' Manage test reporting
#'
#' The job of a reporter is to aggregate the results from files, tests, and
#' expectations and display them in an informative way. Every testtthat function
#' that runs multiple tests provides a `reporter` argument which you can
#' use to override the default (which is selected by [default_reporter()]).
#'
#' You only need to use this `Reporter` object directly if you are creating
#' a new reporter. Currently, creating new Reporters is undocumented,
#' so if you want to create your own, you'll need to make sure that you're
#' familiar with [R6](https://adv-r.hadley.nz/R6.html) and then need read the
#' source code for a few.
#'
#' @keywords internal
#' @export
#' @export Reporter
#' @aliases Reporter
#' @importFrom R6 R6Class
#' @family reporters
#' @examples
#' path <- testthat_example("success")
#'
#' test_file(path)
#' # Override the default by supplying the name of a reporter
#' test_file(path, reporter = "minimal")
Reporter <- R6::R6Class("Reporter",
  public = list(
    capabilities = list(parallel_support = FALSE, parallel_updates = FALSE),
    start_reporter = function() {},
    start_context =  function(context) {},
    start_test =     function(context, test) {},
    start_file =     function(filename) {},
    add_result =     function(context, test, result) {},
    end_test =       function(context, test) {},
    end_context =    function(context) {},
    end_reporter =   function() {},
    end_file =       function() {},
    is_full =        function() FALSE,
    update =         function() {},

    width = 80,
    unicode = TRUE,
    crayon = TRUE,

    out = NULL,

    initialize = function(file = getOption("testthat.output_file", stdout())) {
      self$out <- file
      if (is.character(self$out) && file.exists(self$out)) {
        # If writing to a file, overwrite it if it exists
        file.remove(self$out)
      }

      # Capture at init so not affected by test settings
      self$width <- cli::console_width()
      self$unicode <- cli::is_utf8_output()
      self$crayon <- crayon::has_color()
    },

    # To be used when the reporter needs to produce output inside of an active
    # test, which is almost always from $add_result()
    local_user_output = function(.env = parent.frame()) {
      local_reproducible_output(
        width = self$width,
        crayon = self$crayon,
        unicode = self$unicode,
        .env = .env
      )
    },

    cat_tight = function(...) {
      cat(..., sep = "", file = self$out, append = TRUE)
    },

    cat_line = function(...) {
      cli::cat_line(..., file = self$out)
    },

    rule = function(...) {
      cli::cat_rule(..., file = self$out)
    },

    # The hierarchy of contexts are implied - a context starts with a
    # call to context(), and ends either with the end of the file, or
    # with the next call to context() in the same file. These private
    # methods paper over the details so that context appear to work
    # in the same way as tests and expectations.
    .context = NULL,
    .start_context = function(context) {
      if (!is.null(self$.context)) {
        self$end_context(self$.context)
      }
      self$.context <- context
      self$start_context(context)

      invisible()
    },
    end_context_if_started = function(context) {
      if (!is.null(self$.context)) {
        self$end_context(self$.context)
        self$.context <- NULL
      }
      invisible()
    }
  )
)

#' Retrieve the default reporter
#'
#' The defaults are:
#' * [ProgressReporter] for interactive, non-parallel; override with
#'   `testthat.default_reporter`
#' * [ParallelProgressReporter] for interactive, parallel packages;
#'   override with `testthat.default_parallel_reporter`
#' * [CompactProgressReporter] for single-file interactive; override with
#'   `testthat.default_compact_reporter`
#' * [CheckReporter] for R CMD check; override with `testthat.default_check_reporter`
#'
#' @export
#' @keywords internal
default_reporter <- function() {
  getOption("testthat.default_reporter", "Progress")
}

#' @export
#' @rdname default_reporter
default_parallel_reporter <- function() {
  getOption("testthat.default_parallel_reporter", "ParallelProgress")
}

#' @export
#' @rdname default_reporter
default_compact_reporter <- function() {
  getOption("testthat.default_compact_reporter", "CompactProgress")
}

#' @export
#' @rdname default_reporter
check_reporter <- function() {
  getOption("testthat.default_check_reporter", "Check")
}
