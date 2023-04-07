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

  # Rebind, first looking in package namespace, then imports, then the base
  # namespace, then the global environment
  envs <- c(list(ns_env), env_parents(ns_env))
  bindings_found <- rep_named(names(bindings), FALSE)
  for (env in envs) {
    this_bindings <- env_has(env, names(bindings)) & !bindings_found

    local_bindings_unlock(!!!bindings[this_bindings], .env = env, .frame = .env)
    bindings_found <- bindings_found | this_bindings
  }

  if (any(!bindings_found)) {
    missing <- names(bindings)[!bindings_found]
    cli::cli_abort("Can't find binding for {.arg {missing}}")
  }

  invisible()
}

#' @rdname local_mocked_bindings
#' @export
with_mocked_bindings <- function(code, ..., .package = NULL) {
  local_mocked_bindings(..., .package = .package)
  code
}

# helpers -----------------------------------------------------------------

# Wrapper around local_bindings() that automatically unlocks and takes
# list of bindings.
local_bindings_unlock <- function(..., .env = .frame, .frame = caller_env()) {
  bindings <- list2(...)
  if (length(bindings) == 0) {
    return()
  }

  nms <- names(bindings)
  locked <- env_binding_unlock(.env, nms)
  withr::defer(env_binding_lock(.env, nms[locked]), envir = .frame)

  local_bindings(!!!bindings, .env = .env, .frame = .frame)

  invisible()
}

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

# For testing -------------------------------------------------------------

test_mock_package <- function() {
  test_mock_package2()
}
test_mock_package2 <- function() "y"

test_mock_base <- function() {
  identity("y")
}

test_mock_imports <- function() {
  as.character(sym("x"))
}

test_mock_namespaced <- function() {
  as.character(rlang::sym("x"))
}

test_mock_method <- function(x) {
  UseMethod("test_mock_method")
}
#' @export
test_mock_method.integer <- function(x) {
  "y"
}
