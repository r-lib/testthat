#' @include reporter.R
NULL


setOldClass('proc_time')

#' List reporter: gather all test results along with elapsed time and
#' file information.
#'
#' This reporter gathers all results, adding additional information such as
#' test elapsed time, and test filename if available. Very useful for reporting.
#'
#' @export
ListReporter <- R6::R6Class("ListReporter", inherit = Reporter,
  public = list(
    start_test_time = NA,
    file = "",
    results = list(),
    current_test_results = list(),

    start_test = function(context, test) {
      self$current_test_results <- list()
      self$start_test_time <- proc.time()
    },

    end_test = function(context, test) {
      el <- as.double(proc.time() - self$start_test_time)
      fname <- if (length(self$file)) self$file else ''
      test_info <- list(file = fname, context = context, test = test,
        user = el[1], system = el[2], real = el[3],
        results = self$current_test_results)
      self$results <- c(self$results, list(test_info))
      self$current_test_results <- list()
    },

    add_result = function(context, test, result) {
      self$current_test_results <<- c(self$current_test_results, list(result))
    },

    ### new methods
    start_file = function(name) {
      self$file <- name
    },

    get_summary = function() {
      summarize_results(self$results)
    }

  )
)
