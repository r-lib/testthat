#' @include reporter.R
NULL

#' Test reporter: TAP format.
#'
#' This reporter will output results in the Test Anything Protocol (TAP),
#' a simple text-based interface between testing modules in a test harness.
#' For more information about TAP, see http://testanything.org
#'
#' @export
#' @export TapReporter
#' @aliases TapReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
TapReporter <- setRefClass("TapReporter", contains = "Reporter",
  fields = list(
    "results" = "list",
    "n" = "integer",
    "has_tests" = "logical",
    "contexts" = "character"),

  methods = list(

    start_context = function(context) {
      contexts[n+1] <<- context;
    },

    start_reporter = function() {
      results <<- list()
      n <<- 0L
      has_tests <<- FALSE
      contexts <<- NA_character_
    },

    add_result = function(context, test, result) {
      has_tests <<- TRUE
      n <<- n + 1L

      result$test <- if (is.null(test)) "(unknown)" else test
      results[[n]] <<- result
    },

    end_reporter = function() {
        if(has_tests) {
            cat("1..", n, '\n', sep='');
            for(i in 1:n) {
                if (! is.na(contexts[i])) {
                    cat("# Context", contexts[i], "\n")
                }
                result <- results[[i]];
                if (expectation_success(result)) {
                    cat('ok', i, result$test, '\n')
                } else if (expectation_broken(result)) {
                    cat('not ok', i, result$test, '\n')
                    msg <- gsub('\n', '\n  ', result$message)
                    cat(' ', msg, '\n')
                } else {
                  cat('ok', i, '#', toupper(expectation_type(result)),
                      result$message, '\n')
                }
            }
        }
    }
  )
)
