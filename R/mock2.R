#' Mocking tools
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' These functions represent a second attempt at bringing mocking to testthat,
#' incorporating what we've learned from the mockr, mockery, and mockthat package.
#'
#' `with_mocked_bindings()` and `local_mocked_bindings()` work by temporarily
#' changing variable bindings in the namespace of namespace `.package`.
#' Generally, it's only safe to mock packages that you own. If you mock other
#' packages, we recommend using `skip_on_cran()` to avoid CRAN failures if the
#' implementation changes.
#'
#' These functions do not currently affect registered S3 methods.
#'
#' @export
#' @param ... Name-value pairs providing functions to mock.
#' @param code Code to execute with specified bindings.
#' @param .env Environment that defines effect scope. For expert use only.
#' @param .package The name of the package where mocked functions should be
#'   inserted. Generally, you should not need to supply this as it will be
#'   automatically detected when whole package tests are run or when there's
#'   one package under active development (i.e. loaded with
#'   [pkgload::load_all()]).
local_mocked_bindings <- function(..., .package = NULL, .env = caller_env()) {
  bindings <- list2(...)
  check_bindings(bindings)

  .package <- .package %||% dev_package()
  ns_env <- ns_env(.package)

  # Unlock bindings and set values
  nms <- names(bindings)
  locked <- env_binding_unlock(ns_env, nms)
  withr::defer(env_binding_lock(ns_env, nms[locked]), envir = .env)
  local_bindings(!!!bindings, .env = ns_env, .frame = .env)

  invisible()
}

#' @rdname local_mocked_bindings
#' @export
with_mocked_bindings <- function(code, ..., .package = NULL) {
  local_mocked_bindings(..., .package = .package)
  code
}

# helpers -----------------------------------------------------------------

dev_package <- function() {
  if (is_testing() && testing_package() != "") {
    testing_package()
  } else {
    loaded <- loadedNamespaces()
    is_dev <- map_lgl(loaded, function(x) !is.null(pkgload::dev_meta(x)))
    if (sum(is_dev) == 0) {
      cli::cli_abort("No packages loaded with pkgload")
    } else if (sum(is_dev) == 1) {
      loaded[is_dev]
    } else {
      cli::cli_abort("Multiple packages loaded with pkgload")
    }
  }
}

check_bindings <- function(x, error_call = caller_env()) {
  if (!is_named(x)) {
    cli::cli_abort(
      "All elements of {.arg ...} must be named.",
      call = error_call
    )
  }

  is_fun <- map_lgl(x, is.function)
  if (!any(is_fun)) {
    cli::cli_abort(
      "All elements of {.arg ...} must be functions.",
      call = error_call
    )
  }
}

# In package
mockable_generic <- function(x) {
  UseMethod("mockable_generic")
}
#' @export
mockable_generic.integer <- function(x) {
  1
}
