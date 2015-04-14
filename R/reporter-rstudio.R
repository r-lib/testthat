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
      if (result$passed)
        return()

      if (result$skipped) {
        status <- "info"
        prefix <- "Skipped"
      } else if (result$error) {
        status <- "error"
        prefix <- "Failed"
      } else {
        status <- "error"
        prefix <- "Errored"
      }

      ref <- result$srcref
      if (is.null(ref)) {
        location <- "?#?:?"
      } else {
        location <- paste0(attr(ref, "srcfile")$filename, "#", ref[1], ":1")
      }

      cat(location, " [", status, "] ", test, ". ", strsplit(result$failure_msg, "\n")[[1]][1], "\n",
        sep = "")
    }
  )
)
