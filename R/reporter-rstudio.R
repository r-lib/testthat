#' @include reporter.R
NULL

#' Test reporter: RStudio
#'
#' This reporter is designed for output to RStudio. It produces results in
#' any easily parsed form.
#'
#' @export
#' @export RstudioReporter
#' @aliases RstudioReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
RstudioReporter <- setRefClass("RstudioReporter", contains = "Reporter",
  fields = list(),
  methods = list(
    add_result = function(context, test, result) {
      if (expectation_success(result))
        return()

      ref <- result$srcref
      if (is.null(ref)) {
        location <- "?#?:?"
      } else {
        location <- paste0(attr(ref, "srcfile")$filename, "#", ref[1], ":1")
      }

      status <- expectation_type(result)
      first_line <- strsplit(result$message, "\n")[[1]][1]

      cat(location, " [", status, "] ", test, ". ", first_line, "\n", sep = "")
    }
  )
)
