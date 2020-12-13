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
    problems = NULL,
    skips = NULL,

    n_ok = 0L,
    n_skip = 0L,
    n_fail = 0L,
    n_warn = 0L,

    initialize = function(...) {
      self$capabilities$parallel_support <- TRUE
      self$problems <- Stack$new()
      self$skips <- Stack$new()

      super$initialize(...)
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$n_fail <- self$n_fail + 1L
        self$problems$push(result)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1L
      } else if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1L
        self$skips$push(result$message)
      } else {
        self$n_ok <- self$n_ok + 1L
        return()
      }

      # Report brief status: this was if the session crashes, you have
      # some rough idea of where it occurred.
      self$local_user_output()
      self$cat_line("* ", issue_header(result, pad = TRUE))
    },

    end_reporter = function() {

      if (self$n_skip > 0) {
        self$cat_line()
        self$rule("Skipped tests", line = 2)
        self$cat_line(skip_bullets(self$skips$as_list()))
        self$cat_line()
      }

      problems <- self$problems$as_list()
      if (length(problems) == 0) {
        return()
      }

      saveRDS(problems, "testthat-problems.rds")
      self$rule("Failed tests", line = 2)
      self$cat_line(vapply(problems, issue_summary, character(1), rule = TRUE, simplify = "none"))
       self$cat_line()
      self$cat_line(summary_line(self$n_fail, self$n_warn, self$n_skip, self$n_ok))
    }
  )
)

summary_line <- function(n_fail, n_warn, n_skip, n_ok) {
  # Ordered from most important to least important
  paste0(
    "[ ",
    colourise("FAIL", "failure"), " ", n_fail, " | ",
    colourise("WARN", "warn"),    " ", n_warn, " | ",
    colourise("SKIP", "skip"),    " ", n_skip, " | ",
    colourise("PASS", "success"), " ", n_ok,
    " ]"
  )
}
