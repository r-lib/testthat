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
  pkg_names <- gsub(pkg_and_name_rx, "\\1", mock_qual_names)
  mock_envs <- lapply(pkg_names, function(x) if (x == "") .env else asNamespace(x))

  mock_names <- gsub(pkg_and_name_rx, "\\2", mock_qual_names)

  orig_values <- vector("list", length(mock_qual_names))
  for (i in seq_along(mock_qual_names)) {
    env <- mock_envs[[i]]
    name <- mock_names[[i]]
    if (!exists(name, env, mode = "function"))
      stop("Function ", name, " not found in environment ",
           environmentName(env), ".")
    orig_values[[i]] <- get(name, env, mode = "function")
  }

  on.exit({
    for (i in seq_along(mock_qual_names)) {
      env <- mock_envs[[i]]
      name <- mock_names[[i]]
      if (!bindingIsLocked(name, env)) {
        env[[name]] <- orig_values[[i]]
        lockBinding(name, env)
      }
    }
  }, add = TRUE)

  for (i in seq_along(mock_qual_names)) {
    env <- mock_envs[[i]]
    name <- mock_names[[i]]
    do.call("unlockBinding", list(name, env))
    env[[name]] <- mocks[[i]]
  }

  force(.code)
}
