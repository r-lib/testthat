#' Mocking tools
#'
#' @description
#' `with_mocked_bindings()` and `local_mocked_bindings()` provide tools for
#' "mocking", temporarily redefining a function so that it behaves differently
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
#' There are four places that the function you are trying to mock might
#' come from:
#'
#' * Internal to your package.
#' * Imported from an external package via the `NAMESPACE`.
#' * The base environment.
#' * Called from an external package with `::`.
#'
#' They are described in turn below.
#'
#' ## Internal & imported functions
#'
#' You mock internal and imported functions the same way. For example, take
#' this code:
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
#' ## Base functions
#'
#' To mock a function in the base package, you need to make sure that you
#' have a binding for this function in your package. It's easiest to do this
#' by binding the value to `NULL`. For example, if you wanted to mock
#' `interactive()` in your package, you'd need to include this code somewhere
#' in your package:
#'
#' ```R
#' interactive <- NULL
#' ```
#'
#' Why is this necessary? `with_mocked_bindings()` and `local_mocked_bindings()`
#' work by temporarily modifying the bindings within your package's namespace.
#' When these tests are running inside of `R CMD check` the namespace is locked
#' which means it's not possible to create new bindings so you need to make sure
#' that the binding exists already.
#'
#' ## Namespaced calls
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
#' To mock this function, you'd need to modify `another_function()` inside the
#' `anotherpackage` package. You _can_ do this by supplying the `.package`
#' argument to `local_mocked_bindings()` but we don't recommend it because
#' it will affect all calls to `anotherpackage::another_function()`, not just
#' the calls originating in your package. Instead, it's safer to either import
#' the function into your package, or make a wrapper that you can mock:
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
#'   inserted. Generally, you should not supply this as it will be automatically
#'   detected when whole package tests are run or when there's one package
#'   under active development (i.e. loaded with [pkgload::load_all()]).
#'   We don't recommend using this to mock functions in other packages,
#'   as you should not modify namespaces that you don't own.
local_mocked_bindings <- function(..., .package = NULL, .env = caller_env()) {
  bindings <- list2(...)
  check_bindings(bindings)

  .package <- .package %||% dev_package()
  ns_env <- ns_env(.package)

  # Rebind in namespace, imports, and the global environment
  envs <- list(ns_env, env_parent(ns_env), globalenv())
  bindings_found <- rep_named(names(bindings), FALSE)
  for (env in envs) {
    local_bindings_rebind(!!!bindings, .env = env, .frame = .env)
    bindings_found <- bindings_found | env_has(env, names(bindings))
  }

  # And mock S3 methods
  methods_env <- ns_env[[".__S3MethodsTable__."]]
  local_bindings_rebind(!!!bindings, .env = methods_env, .frame = .env)

  # If needed, also mock in the package environment so we can call directly
  if (is_attached(paste0("package:", .package))) {
    local_bindings_rebind(!!!bindings, .env = pkg_env(.package), .frame = .env)
  }
  # And in the current testing environment
  test_env <- the$testing_env
  if (!is.null(test_env)) {
    local_bindings_rebind(!!!bindings, .env = test_env, .frame = .env)
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

local_testing_env <- function(env, frame = caller_env()) {
  local_bindings(testing_env = env, .env = the, .frame = frame)
}

# helpers -----------------------------------------------------------------

# Wrapper around local_bindings() that only rebinds existing values,
# automatically unlocking as needed. We can only rebind because most of
# these environments are locked, meaning we can't add new bindings.
local_bindings_rebind <- function(..., .env = .frame, .frame = caller_env()) {
  bindings <- list2(...)
  bindings <- bindings[env_has(.env, names(bindings))]

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

test_mock_direct <- function() {
  "y"
}

test_mock_internal <- function() {
  test_mock_internal2()
}
test_mock_internal2 <- function() "y"

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

test_mock_base <- function() {
  interactive()
}
interactive <- NULL

show_bindings <- function(name, env = caller_env()) {
  envs <- env_parents(env)
  has_binding <- Filter(function(env) env_has(env, name), envs)
  lapply(has_binding, env_desc)
  invisible()
}

env_desc <- function(env) {
  cat(obj_address(env), ": ", env_name(env), "\n", sep = "")
}
