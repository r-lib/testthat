#' @include reporter.r
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
    add_result = function(result) {
      callSuper(result)
      if (expectation_success(result))
        return()

      if (expectation_skip(result)) {
        status <- "info"
        prefix <- "Skipped"
      } else if (expectation_failure(result)) {
        status <- "error"
        prefix <- "Failed"
      } else if (expectation_error(result)) {
        status <- "error"
        prefix <- "Errored"
      } else {
        status <- expectation_type(result)
        prefix <- "Other"
      }

      ref <- result$srcref
      if (is.null(ref)) {
        location <- "?#?:?"
      } else {
        location <- paste0(attr(ref, "srcfile")$filename, "#", ref[1], ":1")
      }

      cat(location, " [", status, "] ", test, ". ", strsplit(result$message, "\n")[[1]][1], "\n",
        sep = "")
    }
  )
)
