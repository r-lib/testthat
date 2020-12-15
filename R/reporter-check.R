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
    warnings = NULL,
    n_ok = 0L,

    initialize = function(...) {
      self$capabilities$parallel_support <- TRUE
      self$problems <- Stack$new()
      self$warnings <- Stack$new()
      self$skips <- Stack$new()

      super$initialize(...)
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$problems$push(result)
      } else if (expectation_warning(result)) {
        self$warnings$push(result)
      } else if (expectation_skip(result)) {
        self$skips$push(result$message)
      } else {
        self$n_ok <- self$n_ok + 1L
      }
    },

    end_reporter = function() {
      if (self$skips$size() > 0) {
        self$rule("Skipped tests", line = 2)
        self$cat_line(skip_bullets(self$skips$as_list()))
        self$cat_line()
      }

      # Don't show warnings in revdep checks in order to focus on failures
      if (self$warnings$size() > 0 && !is_revdep_check()) {
        warnings <- self$warnings$as_list()

        self$rule("Warnings", line = 2)
        self$cat_line(map_chr(warnings, issue_summary, rule = TRUE))
        self$cat_line()
      }

      if (self$problems$size() > 0) {
        problems <- self$problems$as_list()
        saveRDS(problems, "testthat-problems.rds")

        self$rule("Failed tests", line = 2)
        self$cat_line(map_chr(problems, issue_summary, rule = TRUE, simplify = "none"))
        self$cat_line()
      }

      self$cat_line(summary_line(
        n_fail = self$problems$size(),
        n_warn = self$warnings$size(),
        n_skip = self$skips$size(),
        n_pass = self$n_ok
      ))
    }
  )
)

summary_line <- function(n_fail, n_warn, n_skip, n_pass) {
  # Ordered from most important to least important
  paste0(
    "[ ",
    colourise("FAIL", "failure"), " ", n_fail, " | ",
    colourise("WARN", "warn"),    " ", n_warn, " | ",
    colourise("SKIP", "skip"),    " ", n_skip, " | ",
    colourise("PASS", "success"), " ", n_pass,
    " ]"
  )
}

is_revdep_check <- function() {
  !identical(Sys.getenv("DEV_PACKAGE_NAME"), "")
}
