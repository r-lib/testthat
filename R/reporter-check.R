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
      self$problems <- Stack$new()
      self$skips <- Stack$new()

      super$initialize(...)
    },

    add_result = function(context, test, result) {
      if (expectation_success(result)) {
        self$n_ok <- self$n_ok + 1L
        return()
      }

      self$problems$push(result)

      if (expectation_skip(result)) {
        self$n_skip <- self$n_skip + 1L
        self$skips$push(result$message)
      } else if (expectation_warning(result)) {
        self$n_warn <- self$n_warn + 1L
      } else {
        self$n_fail <- self$n_fail + 1L
      }

      type <- expectation_type(result)
      header <- failure_header(result)

      self$local_user_output()
      self$rule(header, col = testthat_style(type))
      self$cat_line(format(result, simplify = "none"))
      self$cat_line()
    },

    end_reporter = function() {
      if (self$n_skip > 0) {
        self$rule("Skipped tests ", line = 1)
        self$cat_line(skip_bullets(self$skips$as_list()))
        self$cat_line()
      }

      problems <- self$problems$as_list()
      if (length(problems) == 0) {
        return()
      }

      saveRDS(problems, "testthat-problems.rds")
      self$rule("testthat results ", line = 2)
      self$cat_line(vapply(problems, failure_header, character(1)))
      self$cat_line()
      self$cat_line(summary_line(self$n_ok, self$n_fail, self$n_warn, self$n_skip))
    }
  )
)

failure_header <- function(x) {
  type <- expectation_type(x)
  substr(type, 1, 1) <- toupper(substr(type, 1, 1))
  type <- colourise(type, expectation_type(x))
  paste0(type, ": ", x$test, " (", expectation_location(x), ")")
}

summary_line <- function(n_ok, n_fail, n_warn, n_skip) {
  paste0(
    "[ ",
    colourise("PASS", "success"), " x", n_ok, " ",
    colourise("FAIL", "fail"),    " x", n_fail, " ",
    colourise("WARN", "warn"),    " x", n_warn, " ",
    colourise("SKIP", "skip"),    " x", n_skip,
    " ]"
  )
}
