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

#' @rdname reporter-accessors
#' @export
set_reporter <- function(reporter) {
  old <- the$reporter
  the$reporter <- reporter
  invisible(old)
}

#' @rdname reporter-accessors
#' @export
get_reporter <- function() {
  the$reporter
}

#' @rdname reporter-accessors
#' @export
with_reporter <- function(reporter, code, start_end_reporter = TRUE) {
  # Ensure we don't propagate the local description to the new reporter
  local_description_set()
  reporter <- find_reporter(reporter)

  old <- set_reporter(reporter)
  withr::defer(set_reporter(old))

  if (start_end_reporter) {
    reporter$start_reporter()
  }

  tryCatch(code, testthat_abort_reporter = function(cnd) {
    cat(conditionMessage(cnd), "\n")
    NULL
  })

  if (start_end_reporter) {
    reporter$end_reporter()
  }

  invisible(reporter)
}

stop_reporter <- function(message) {
  cli::cli_abort(
    message,
    class = "testthat_abort_reporter",
    call = NULL
  )
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
  if (is.null(reporter)) {
    return(NULL)
  }

  if (inherits(reporter, "R6ClassGenerator")) {
    reporter$new()
  } else if (inherits(reporter, "Reporter")) {
    reporter
  } else if (is_string(reporter)) {
    find_reporter_one(reporter)
  } else if (is.character(reporter)) {
    reporters <- lapply(reporter, find_reporter_one, call = current_env())
    MultiReporter$new(reporters)
  } else {
    stop_input_type(
      reporter,
      c(
        "a string",
        "a character vector",
        "a reporter object",
        "a reporter class"
      )
    )
  }
}

find_reporter_one <- function(reporter, ..., call = caller_env()) {
  name <- reporter
  substr(name, 1, 1) <- toupper(substr(name, 1, 1))
  name <- paste0(name, "Reporter")

  if (!exists(name)) {
    cli::cli_abort("Cannot find test reporter {.arg {reporter}}.", call = call)
  }

  get(name)$new(...)
}
