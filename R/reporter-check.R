#' Report results for `R CMD check`
#'
#' `R CMD check` displays only the last 13 lines of the result, so this
#' report is designed to ensure that you see something useful there.
#'
#' @export
#' @family reporters
CheckReporter <- R6::R6Class(
  "CheckReporter",
  inherit = Reporter,
  public = list(
    problems = NULL,
    skips = NULL,
    warnings = NULL,
    n_ok = 0L,
    old_in_check_reporter = NULL,

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
        self$skips$push(result)
      } else {
        self$n_ok <- self$n_ok + 1L
      }
    },

    start_reporter = function() {
      self$old_in_check_reporter <- in_check_reporter()
      the$in_check_reporter <- TRUE
    },

    end_reporter = function() {
      the$in_check_reporter <- self$old_in_check_reporter

      if (self$skips$size() || self$warnings$size() || self$problems$size()) {
        self$cat_line(summary_line(
          n_fail = self$problems$size(),
          n_warn = self$warnings$size(),
          n_skip = self$skips$size(),
          n_pass = self$n_ok
        ))
        self$cat_line()
      }

      skip_report(self, line = 2)

      # Don't show warnings in revdep checks in order to focus on failures
      if (self$warnings$size() > 0 && !on_cran()) {
        warnings <- self$warnings$as_list()

        self$rule("Warnings", line = 2)
        self$cat_line(map_chr(warnings, issue_summary, rule = TRUE))
        self$cat_line()
      }

      if (self$problems$size() > 0) {
        problems <- self$problems$as_list()
        saveRDS(problems, "testthat-problems.rds", version = 2)

        self$rule("Failed tests", line = 2)
        self$cat_line(map_chr(problems, issue_summary, rule = TRUE))
        self$cat_line()

        if (some(problems, \(x) isTRUE(attr(x, "snapshot")))) {
          self$rule("To resolve snapshot failures", line = 1)
          self$cat_line(snapshot_check_hint())
        }
      } else {
        # clean up
        unlink("testthat-problems.rds")
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
  colourise_if <- function(text, colour, cond) {
    if (cond) colourise(text, colour) else text
  }

  # Ordered from most important to least important
  paste0(
    "[ ",
    colourise_if("FAIL", "failure", n_fail > 0),
    " ",
    n_fail,
    " | ",
    colourise_if("WARN", "warn", n_warn > 0),
    " ",
    n_warn,
    " | ",
    colourise_if("SKIP", "skip", n_skip > 0),
    " ",
    n_skip,
    " | ",
    colourise_if("PASS", "success", n_fail == 0),
    " ",
    n_pass,
    " ]"
  )
}

snapshot_check_hint <- function() {
  if (on_gh()) {
    repository <- Sys.getenv("GITHUB_REPOSITORY")
    run_id <- Sys.getenv("GITHUB_RUN_ID")

    call <- sprintf(
      "testthat::snapshot_download_gh(\"%s\", \"%s\")",
      repository,
      run_id
    )
    copy <- sprintf("* Run `%s` to download snapshots.", call)
  } else {
    copy <- c(
      if (on_ci()) {
        "* Download and unzip artifact."
      } else {
        "* Locate check directory."
      },
      "* Copy 'tests/testthat/_snaps' to local package."
    )
  }

  action <- c(
    "* Run `testthat::snapshot_accept()` to accept all changes.",
    "* Run `testthat::snapshot_review()` to review all changes."
  )
  c(copy, action)
}

run <- function(x) {
  cli::format_inline(paste0("{.run testthat::", x, "}"))
}
