#' @include reporter.R
NULL

#' Check reporter: 13 line summary of problems
#'
#' \code{R CMD check} displays only the last 13 lines of the result, so this
#' report is design to ensure that you see something useful there.
#'
#' @export
CheckReporter <- R6::R6Class("CheckReporter", inherit = Reporter,
  public = list(
    failures = list(),
    n_ok = 0L,
    n_skip = 0L,
    n_fail = 0L,

    add_result = function(context, test, result) {
      if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1L
        return()
      }
      if (expectation_ok(result)) {
        self$n_ok <- self$n_ok + 1L
        return()
      }

      self$n_fail <- self$n_fail + 1L
      self$failures[[self$n_fail]] <- result

      self$cat_paragraph(failure_summary(result, self$n_fail))
    },

    end_reporter = function() {
      rule <- paste0(rep("=", getOption("width") - 16), collapse = "")
      self$cat_line("testthat results ", rule)
      self$cat_line(
        "OK: ", self$n_ok, " ",
        "SKIPPED: ", self$n_skip, " ",
        "FAILED: ", self$n_fail
      )

      if (self$n_fail == 0) return()

      if (self$n_fail > 10) {
        show <- self$failures[1:9]
      } else {
        show <- self$failures
      }

      fails <- vapply(show, failure_header, character(1))
      if (self$n_fail > 10) {
        fails <- c(fails, "...")
      }
      labels <- format(paste0(1:length(show), "."))
      self$cat_paragraph(paste0(labels, " ", fails, collapse = "\n"))

      stop("testthat unit tests failed", call. = FALSE)
    }
  )
)

skip_summary <- function(x, label) {
  header <- paste0(label, ". ", x$test)

  paste0(
    colourise(header, "skip"), src_loc(x$srcref), " - ", x$message
  )
}

failure_summary <- function(x, label, width = getOption("width")) {
  header <- paste0(label, ". ", failure_header(x))
  linewidth <- ifelse(nchar(header) > width, 0, width - nchar(header))
  line <- paste(rep("-", linewidth), collapse = "")

  paste0(
    colourise(header, "error"), line, "\n",
    format(x)
  )
}

failure_header <- function(x) {
  type <- switch(expectation_type(x),
    error = "Error",
    failure = "Failure"
  )

  paste0(type, ": ", x$test, src_loc(x$srcref), " ")
}

src_loc <- function(ref) {
  if (is.null(ref)) {
    ""
  } else {
    paste0(" (@", basename(attr(ref, "srcfile")$filename), "#", ref[1], ")")
  }
}
