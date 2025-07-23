#' Mock functions in a package.
#'
#' @description
#' `with_mock()` and `local_mock()` are deprecated in favour of
#' [with_mocked_bindings()] and [local_mocked_bindings()].
#'
#' These functions worked by using some C code to temporarily modify the mocked
#'  function _in place_. This was an abuse of R's internals and it is no longer
#' permitted.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `with_mock()` and `local_mock()` are deprecated in the third edition.
#'
#' @param ... named parameters redefine mocked functions, unnamed parameters
#'   will be evaluated after mocking the functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment.  A character is interpreted as
#'   package name.
#' @param .local_envir Environment in which to add exit handler.
#'   For expert use only.
#' @keywords internal
#' @return The result of the last unnamed parameter
#' @export
with_mock <- function(..., .env = topenv()) {
  lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
}

#' @export
#' @rdname with_mock
local_mock <- function(..., .env = topenv(), .local_envir = parent.frame()) {
  lifecycle::deprecate_stop("3.2.0", "local_mock()", "local_mocked_bindings()")
}
