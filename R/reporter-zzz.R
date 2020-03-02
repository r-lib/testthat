#' @include reporter-stop.R
NULL

#' Get and set active reporter.
#'
#' `get_reporter()` and `set_reporter()` access and modify the current "active"
#' reporter. Generally, these functions should not be called directly; instead
#' use `with_reporter()` to temporarily change, then reset, the active reporter.
#'
#'
#' @param reporter Reporter to use to summarise output. Can be supplied
#'   as a string (e.g. "summary") or as an R6 object
#'   (e.g. `SummaryReporter$new()`).
#'
#'   See [Reporter] for more details and a list of built-in reporters.
#' @param code Code to execute.
#' @return `with_reporter()` invisible returns the reporter active when `code`
#'   was evaluated.
#' @param start_end_reporter Should the reporters `start_reporter()` and
#'   `end_reporter()` methods be called? For expert use only.
#' @keywords internal
#' @name reporter-accessors
NULL

testthat_env <- new.env(parent = emptyenv())

# Default has to be the stop reporter, since it is this that will be run by
# default from the command line and in R CMD test.
testthat_env$reporter <- StopReporter$new()

#' @rdname reporter-accessors
#' @export
set_reporter <- function(reporter) {
  old <- testthat_env$reporter
  testthat_env$reporter <- reporter
  invisible(old)
}

#' @rdname reporter-accessors
#' @export
get_reporter <- function() {
  testthat_env$reporter
}

#' @rdname reporter-accessors
#' @export
with_reporter <- function(reporter, code, start_end_reporter = TRUE) {
  reporter <- find_reporter(reporter)

  old <- set_reporter(reporter)
  on.exit(set_reporter(old), add = TRUE)

  if (start_end_reporter) {
    reporter$start_reporter()
  }

  withRestarts(
    testthat_abort_reporter = function() NULL,
    force(code)
  )

  if (start_end_reporter) {
    reporter$end_reporter()
  }

  invisible(reporter)
}

#' Find reporter object given name or object.
#'
#' If not found, will return informative error message.
#' Pass a character vector to create a [MultiReporter] composed
#' of individual reporters.
#' Will return null if given NULL.
#'
#' @param reporter name of reporter(s), or reporter object(s)
#' @keywords internal
find_reporter <- function(reporter) {
  if (is.null(reporter)) return(NULL)

  if (inherits(reporter, "R6ClassGenerator")) {
    reporter$new()
  } else if (inherits(reporter, "Reporter")) {
    reporter
  } else if (is.character(reporter)) {
    if (length(reporter) <= 1L) {
      find_reporter_one(reporter)
    } else {
      MultiReporter$new(reporters = lapply(reporter, find_reporter_one))
    }
  } else {
    stop("Invalid input", call. = FALSE)
  }
}

find_reporter_one <- function(reporter, ...) {
  stopifnot(is.character(reporter))

  name <- reporter
  substr(name, 1, 1) <- toupper(substr(name, 1, 1))
  name <- paste0(name, "Reporter")

  if (!exists(name)) {
    stop("Can not find test reporter ", reporter, call. = FALSE)
  }

  get(name)$new(...)
}
