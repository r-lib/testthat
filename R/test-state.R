#' Check for global state changes
#'
#' @description
#' One of the most pernicious challenges to debug is when a test runs fine
#' in your test suite, but fails when you run it interactively (or similarly,
#' it fails randomly when running your tests in parallel). One of the most
#' common causes of this problem is accidentally changing global state in a
#' previous test (e.g. changing an option, an environment variable, or the
#' working directory). This is hard to debug, because it's very hard to figure
#' out which test made the change.
#'
#' Luckily testthat provides a tool to figure out if tests are changing global
#' state. You can register a state inspector with `set_state_inspector()` and
#' testthat will run it before and after each test, store the results, then
#' report if there are any differences. For example, if you wanted to see if
#' any of your tests were changing options or environment variables, you could
#' put this code in `tests/testthat/helper-state.R`:
#'
#' ```R
#' set_state_inspector(function() {
#'   list(
#'     options = options(),
#'     envvars = Sys.getenv()
#'   )
#' })
#' ```
#'
#' (You might discover other packages outside your control are changing
#' the global state, in which case you might want to modify this function
#' to ignore those values.)
#'
#' Other problems that can be troublesome to resolve are CRAN check notes that
#' report things like connections being left open. You can easily debug
#' that problem with:
#'
#' ```R
#' set_state_inspector(function() {
#'   getAllConnections()
#' })
#' ```
#'
#' @export
#' @param callback Either a zero-argument function that returns an object
#'   capturing global state that you're interested in, or `NULL`.
#' @param tolerance Numerical tolerance: any differences (in the sense of
#'   [base::all.equal()]) smaller than this value will be ignored.
set_state_inspector <- function(callback, tolerance = testthat_tolerance()) {
  if (
    !is.null(callback) &&
      !(is.function(callback) && length(formals(callback)) == 0)
  ) {
    cli::cli_abort("{.arg callback} must be a zero-arg function, or NULL")
  }

  the$state_inspector <- callback
  the$state_inspector_tolerance <- tolerance
  invisible()
}

testthat_state_condition <- function(before, after, call) {
  diffs <- waldo_compare(
    before,
    after,
    x_arg = "before",
    y_arg = "after",
    tolerance = the$state_inspector_tolerance
  )

  if (length(diffs) == 0) {
    return(NULL)
  }

  srcref <- attr(call, "srcref")
  warning_cnd(
    message = c("Global state has changed:", set_names(format(diffs), "")),
    srcref = srcref
  )
}

inspect_state <- function() {
  if (is.null(the$state_inspector)) {
    NULL
  } else {
    the$state_inspector()
  }
}
