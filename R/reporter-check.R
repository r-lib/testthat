#' @include reporter.R
NULL

#' Check reporter: 13 line summary of problems
#'
#' `R CMD check` displays only the last 13 lines of the result, so this
#' report is design to ensure that you see something useful there.
#'
#' @export
#' @family reporters
CheckReporter <- R6::R6Class("CheckReporter",
  inherit = Reporter,
  public = list(
    failures = list(),
    n_ok = 0L,
    n_skip = 0L,
    n_fail = 0L,
    n_warn = 0L,
    skips = NULL,

    stop_on_failure = TRUE,

    initialize = function(stop_on_failure = TRUE, ...) {
      self$stop_on_failure <- stop_on_failure
      self$skips <- Stack$new()
      super$initialize(...)
    },

    start_test = function(context, test) {
      self$cat_line("Starting test: ", test)
    },

    add_result = function(context, test, result) {
      if (expectation_ok(result)) {
        self$n_ok <- self$n_ok + 1L
        return()
      }

      if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1L
        self$skips$push(result$message)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1L
      } else {
        self$n_fail <- self$n_fail + 1L
        self$failures[[self$n_fail]] <- result
      }

      type <- expectation_type(result)
      header <- failure_header(result)

      self$rule(header, col = testthat_style(type))
      self$cat_line(format(result, simplify = "none"))
      self$cat_line()
    },

    end_reporter = function() {
      self$rule("testthat results ", line = 2)
      self$cat_line(
        "[ ",
        "OK: ", self$n_ok, " | ",
        "SKIPPED: ", self$n_skip, " | ",
        "WARNINGS: ", self$n_warn, " | ",
        "FAILED: ", self$n_fail,
        " ]"
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
      self$cat_line(paste0(labels, " ", fails, collapse = "\n"))
      self$cat_line()

      if (self$stop_on_failure) {
        stop("testthat unit tests failed", call. = FALSE)
      }
    }
  )
)

failure_header <- function(x) {
  type <- expectation_type(x)
  substr(type, 1, 1) <- toupper(substr(type, 1, 1))
  paste0(type, ": ", x$test, src_loc(x$srcref))
}

src_loc <- function(ref) {
  if (is.null(ref)) {
    ""
  } else {
    paste0(" (@", basename(attr(ref, "srcfile")$filename), "#", ref[1], ")")
  }
}
