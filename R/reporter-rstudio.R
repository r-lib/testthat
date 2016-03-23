#' @include reporter.R
NULL

#' Test reporter: RStudio
#'
#' This reporter is designed for output to RStudio. It produces results in
#' any easily parsed form.
#'
#' @export
RstudioReporter <- R6::R6Class("RstudioReporter", inherit = Reporter,
  public = list(
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

      self$cat_line(location, " [", status, "] ", test, ". ", first_line)
    }
  )
)
