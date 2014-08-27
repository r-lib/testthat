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
#' library_if_available(testthat)
#' library_if_available(packagethatdoesntexist)
with_mock <- function(.code, ..., .env = topenv()) {
  mocks <- list(...)
  mock_names <- names(mocks)

  if (length(mocks) == 0) {
    return(.code)
  }

  if (any(is.na(mock_names)))
    stop("Only named arguments are supported")

  mock_names_not_found <- setdiff(mock_names, ls(.env))
  if (length(mock_names_not_found) > 0) {
    stop("The following names were not found in .env: ",
         paste(mock_names_not_found, collapse = ", "))
  }

  orig_values <- lapply(setNames(nm = mock_names), function(x) .env[[x]])
  stopifnot(names(orig_values) == mock_names)

  on.exit({
    for (name in mock_names) {
      if (!bindingIsLocked(name, .env)) {
        .env[[name]] <- orig_values[[name]]
        lockBinding(name, .env)
      }
    }
  })

  for (name in mock_names) {
    unlockBinding(name, .env)
    .env[[name]] <- mocks[[name]]
  }

  force(.code)
}
