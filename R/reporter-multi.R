#' @include reporter.R
NULL

#' Multi reporter: combine several reporters in one.
#'
#' This reporter is useful to use several reporters at the same time, e.g.
#' adding a custom reporter without removing the current one.
#'
#' @export
#' @export MultiReporter
#' @aliases MultiReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
MultiReporter <- setRefClass("MultiReporter", contains = "Reporter",
  fields = list(reporters = 'list'),

  methods = list(
    start_reporter = function() {
      .oapply(reporters, 'start_reporter')
    },
    start_context = function(context) {
      .oapply(reporters, 'start_context', context)
    },
    start_test = function(context, test) {
      .oapply(reporters, 'start_test', context, test)
    },
    add_result = function(context, test, result) {
      .oapply(reporters, 'add_result', context = context, test = test, result = result)
    },
    end_test = function(context, test) {
      .oapply(reporters, 'end_test', context, test)
    },
    end_context = function(context) {
      .oapply(reporters, 'end_context', context)
    },
    end_reporter = function() {
      .oapply(reporters, 'end_reporter')
    }
  )
)

.oapply <- function(objects, method, ...) {
  for (o in objects)
    eval(substitute(o$FUN(...), list(FUN = method, ...)))
}

