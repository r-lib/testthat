#' Mock functions in a package.
#'
#' @description
#' `r lifecycle::badge("defunct")`
#'
#' `with_mock()` and `local_mock()` are now defunct, and can be replaced by
#' [with_mocked_bindings()] and [local_mocked_bindings()]. These functions only
#' worked by abusing of R's internals.
#'
#' @param ... named parameters redefine mocked functions, unnamed parameters
#'   will be evaluated after mocking the functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment.  A character is interpreted as
#'   package name.
#' @param .local_envir Environment in which to add exit handler.
#'   For expert use only.
#' @keywords internal
#' @export
with_mock <- function(..., .env = topenv()) {
  lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
}

#' @export
#' @rdname with_mock
local_mock <- function(..., .env = topenv(), .local_envir = parent.frame()) {
  lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
}
