#' Mocking tools
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' `with_mocked_bindings()` and `local_mocked_bindings()` provide tools for
#' "mocking", temporarily redefining an function so that it behaves differently
#' during tests. This is helpful for testing functions that depend on external
#' state (i.e. reading a value from a file or a website, or pretending a package
#' is or isn't installed).
#'
#' These functions represent a second attempt at bringing mocking to testthat,
#' incorporating what we've learned from the mockr, mockery, and mockthat
#' packages.
#'
#' # Use
#'
#' There are three places that the function you are trying to mock might
#' come from: inside your package, imported from an external package via
#' the `NAMESPACE`, called from an external package with `::`. The first
#' two cases you can mock the same way. For example, take this code:
#'
#' ```R
#' some_function <- function() {
#'   another_function()
#' }
#' ```
#'
#' It doesn't matter whether `another_function()` is defined by your package
#' or you've imported it from a dependency with `@import` or `@importFrom`,
#' you mock it the same way:
#'
#' ```R
#' local_mocked_bindings(
#'   another_function = function(...) "new_value"
#' )
#' ```
#'
#' It's trickier to mock functions in other packages that you call with `::`.
#' For example, take this minor variation:
#'
#' ```R
#' some_function <- function() {
#'   anotherpackage::another_function()
#' }
#' ```
#'
#' To mock here, you'll need to modify `another_function()` inside the
#' `anotherpackage` package. You _can_ do this by supplying the `.package`
#' argument:
#'
#' ```R
#' local_mocked_bindings(
#'   another_function = function(...) "new_value",
#'   .package = "anotherpackage"
#' )
#' ```
#'
#' But it's not a great idea to mock a namespace that you don't own because
#' it affects all code in that package, not just code in your package. Instead,
#' we either importing the function into your package, or making a wrapper
#' that you can mock:
#'
#' ```R
#' some_function <- function() {
#'   my_wrapper()
#' }
#' my_wrapper <- function(...) {
#'   anotherpackage::another_function(...)
#' }
#'
#' local_mocked_bindings(
#'   my_wrapper = function(...) "new_value"
#' )
#' ```
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

  # Rebind, first looking in namespace, then imports, then the base
  # namespace, then the global environment
  envs <- c(list(ns_env), env_parents(ns_env))
  bindings_found <- rep_named(names(bindings), FALSE)
  for (env in envs) {
    this_bindings <- env_has(env, names(bindings)) & !bindings_found

    local_bindings_unlock(
      !!!bindings[this_bindings],
      .env = env,
      .frame = .env
    )
    bindings_found <- bindings_found | this_bindings
  }

  # If needed, also mock in the package environment so we can call directly
  if (is_attached(paste0("package:", .package))) {
    pkg_env <- pkg_env(.package)
    pkg_bindings <- env_has(pkg_env, names(bindings))
    local_bindings_unlock(
      !!!bindings[pkg_bindings],
      .env = pkg_env,
      .frame = .env
    )
  }
  # And in the current testing environment
  test_env <- testthat_env$current_test_env
  if (!is.null(test_env)) {
    test_bindings <- env_has(test_env, names(bindings))
    local_bindings_unlock(
      !!!bindings[test_bindings],
      .env = test_env,
      .frame = .env
    )
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
  as.character(sym("y"))
}

test_mock_namespaced <- function() {
  as.character(rlang::sym("y"))
}

test_mock_method <- function(x) {
  UseMethod("test_mock_method")
}
#' @export
test_mock_method.integer <- function(x) {
  "y"
}


show_bindings <- function(name, env = caller_env()) {
  envs <- env_parents(env)
  has_binding <- Filter(function(env) env_has(env, name), envs)
  lapply(has_binding, env_desc)
  invisible()
}

env_desc <- function(env) {
  cat(obj_address(env), ": ", env_name(env), "\n", sep = "")
}
