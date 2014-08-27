#' Mock functions in a package.
#'
#' Executes code after temporarily substituting implementations of package
#' functions.  This is useful for testing code that relies on functions that are
#' slow, have unintended side effects or access resources that may not be
#' available when testing.
#'
#' @param .code the code to be executed
#' @param ... named parameters giving definitions of mocked functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment
#' @export
#' @examples
#' with_mock(
#'   expect_equal(3, 5),
#'   all.equal = function(x, y, ...) TRUE,
#'   .env = asNamespace("base"))
#' throws_error()(expect_equal(3, 5))
with_mock <- function(.code, ..., .env = topenv()) {
  mocks <- list(...)
  mock_qual_names <- names(mocks)

  if (length(mocks) == 0) {
    return(.code)
  }

  if (is.null(mock_qual_names) || any(mock_qual_names == ""))
    stop("Only named arguments are supported")

  pkg_and_name_rx <- "^(?:(.*)::)?(.*)$"

  mocks <- lapply(
    setNames(nm = mock_qual_names),
    function(qual_name) {
      pkg_name <- gsub(pkg_and_name_rx, "\\1", qual_name)
      env <- if (pkg_name == "") .env else asNamespace(pkg_name)

      name <- gsub(pkg_and_name_rx, "\\2", qual_name)

      if (!exists(name, env, mode = "function"))
        stop("Function ", name, " not found in environment ",
             environmentName(env), ".")
      orig_value <- get(name, env, mode = "function")
      structure(list(env = env, name = name, orig_value = orig_value, new_value = mocks[[qual_name]]),
                class = "mock")
    }
  )

  on.exit(lapply(
    mocks,
    function (mock) {
      if (!bindingIsLocked(mock$name, mock$env)) {
        mock$env[[mock$name]] <- mock$orig_value
        lockBinding(mock$name, mock$env)
        NULL
      }
    }),
    add = TRUE)

  lapply(
    mocks,
    function (mock) {
      do.call("unlockBinding", list(mock$name, mock$env))
      mock$env[[mock$name]] <- mock$new_value
      NULL
    }
  )

  force(.code)
}
