#' Mocking tools
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' These functions represent a second attempt at bringing mocking to testthat,
#' incorporating what we've learned from mockr and mockery There are
#' two styles of mocking:
#'
#' * `with_mocked_bindings()` and `local_mocked_bindings()` work by temporarily
#'   changing variable bindings in the package namespace. It affects the
#'   operation of every function in the current package, but only the current
#'   package.
#'
#' * `with_mocked_env()` modifies a function, inserting a new environment in the
#'   chain of parents with the specified bindings. It can mock any function,
#'   but because it creates a new function, it doesn't affect any functions
#'   that use that function.
#'
#' @export
#' @param f A function.
#' @param ... Name-value pairs providing functions to mock.
with_mocked_env <- function(f, ...) {
  if (!is.function(f)) {
    cli::cli_abort("{.arg f} must be a function, not {.obj_type_friendly {f}}.")
  }
  bindings <- list2(...)
  check_bindings(bindings)

  new_env <- env(get_env(f), !!!bindings)
  set_env(f, new_env)
}

#' @export
#' @rdname with_mocked_env
#' @param code Code to execute with specified bindings.
with_mocked_bindings <- function(code, ...) {
  quo <- enquo(code)
  local_mocked_bindings(...)
  code
}

#' @export
#' @param .env Environment that defines effect scope. For expert use only.
#' @rdname with_mocked_env
local_mocked_bindings <- function(..., .env = caller_env()) {
  bindings <- list2(...)
  check_bindings(bindings)

  ns_env <- ns_env(dev_package())

  # Unlock bindings and set values
  nms <- names(bindings)
  locked <- env_binding_unlock(ns_env, nms)
  withr::defer(env_binding_lock(ns_env, nms[locked]), envir = .env)
  local_bindings(!!!bindings, .env = ns_env, .frame = .env)

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
