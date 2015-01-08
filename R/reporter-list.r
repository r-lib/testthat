#' @include reporter.r
NULL


setOldClass('proc_time')

#' List reporter: gather all test results along with elapsed time and
#' file information.
#'
#' This reporter gathers all results, adding additional information such as
#' test elapsed time, and test filename if available. Very useful for reporting.
#'
#' @export
#' @export ListReporter
#' @aliases ListReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
ListReporter <- setRefClass("ListReporter", contains = "Reporter",
  fields = list(
    start_test_time = 'proc_time',
    file = 'character',
    results = 'list',
    current_test_results = 'list'),

  methods = list(
    ### overriden methods from Reporter
    start_reporter = function(...) {
      callSuper(...)
      results <<- list()
      current_test_results <<- list()
    },

    start_test = function(desc) {
      callSuper(desc)
      current_test_results <<- list()
      start_test_time <<- proc.time()
    },

    end_test = function() {
      el <- as.double(proc.time() - start_test_time)
      fname <- if (length(file)) file else ''
      test_info <- list(file = fname, context = context, test = test,
        user = el[1], system = el[2], real = el[3],
        results = current_test_results)
      results <<- c(results, list(test_info))
      current_test_results <<- list()

      callSuper() # at the end because it resets the test name
    },

    add_result = function(result) {
      callSuper(result)
      current_test_results <<- c(current_test_results, list(result))
    },

    ### new methods
    start_file = function(name) {
      file <<- name
    },

    get_summary = function() {
      summarize_results(results)
    }

  )
)




