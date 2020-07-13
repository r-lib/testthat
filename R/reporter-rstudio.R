#' Test reporter: RStudio
#'
#' This reporter is designed for output to RStudio. It produces results in
#' any easily parsed form.
#'
#' @export
#' @family reporters
RstudioReporter <- R6::R6Class("RstudioReporter",
  inherit = Reporter,
  public = list(
    add_result = function(context, test, result) {
      if (expectation_success(result)) {
        return()
      }

      loc <- expectation_location(result)
      status <- expectation_type(result)
      first_line <- strsplit(result$message, "\n")[[1]][1]

      self$cat_line(loc, " [", status, "] ", test, ". ", first_line)
    }
  )
)
