#' @include reporter.r
NULL

#' Check reporter: 13 line summary of problems
#'
#' \code{R CMD check} displays only the last 13 lines of the result, so this
#' report is design to ensure that you see something useful there.
#'
#' @export
#' @export CheckReporter
#' @aliases CheckReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
CheckReporter <- setRefClass("CheckReporter", contains = "Reporter",
  fields = list(
    "failures" = "list",
    "n_fail" = "integer",
    "n_ok" = "integer",
    "n_skip" = "integer"
  ),

  methods = list(
    start_reporter = function() {
      failures <<- list()
      n_ok <<- 0L
      n_skip <<- 0L
      n_fail <<- 0L
    },

    add_result = function(result) {
      callSuper(result)

      if (result$skipped) {
        n_skip <<- n_skip + 1L
        return()
      }
      if (result$passed) {
        n_ok <<- n_ok + 1L
        return()
      }

      n_fail <<- n_fail + 1L

      result$test <- if (is.null(test)) "(unknown)" else test
      failures[[n_fail]] <<- result

      cat(failure_summary(result, n_fail), "\n\n", sep = "")
    },

    end_reporter = function() {
      rule <- paste0(rep("=", getOption("width") - 16), collapse = "")
      cat("testthat results ", rule, "\n", sep = "")
      cat(
        "OK: ", n_ok, " ",
        "SKIPPED: ", n_skip, " ",
        "FAILED: ", n_fail, "\n",
        sep = ""
      )

      if (n_fail == 0) return()

      if (n_fail > 10) {
        show <- failures[1:9]
      } else {
        show <- failures
      }

      fails <- vapply(failures, failure_header, character(1))
      if (n_fail > 10) {
        fails <- c(fails, "...")
      }
      labels <- format(paste0(1:length(show), "."))
      cat(paste0(labels, " ", fails, collapse = "\n"))
      cat("\n\n")

      stop("testthat unit tests failed", call. = FALSE)
    }
  )
)

failure_summary <- function(x, label, width = getOption("width")) {
  header <- paste0(label, ". ", failure_header(x))
  linewidth <- ifelse(nchar(header) > width, 0, width - nchar(header))
  line <- paste(rep("-", linewidth), collapse = "")

  paste0(
    colourise(header, "error"), line, "\n",
    x$failure_msg
  )
}

failure_header <- function(x) {
  type <- if (x$error) "Error" else "Failure"

  ref <- x$srcref
  if (is.null(ref)) {
    location <- ""
  } else {
    location <- paste0(" (at ", attr(ref, "srcfile")$filename, "#", ref[1], ")")
  }

  paste0(type, location, ": ", x$test, " ")
}
