#' Mock functions in a package.
#'
#' Executes code after temporarily substituting implementations of package
#' functions.  This is useful for testing code that relies on functions that are
#' slow, have unintended side effects or access resources that may not be
#' available when testing.
#'
#' Internally, this works by temporarily substituting formals, body, environment
#' and attributes of the internal function object.  On exit (both regular or
#' error), everything is restored to the previous state.
#'
#' @param ... named parameters redefine mocked functions, unnamed parameters
#'   will be evaluated after mocking the functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment.  A character is interpreted as
#'   package name.
#' @return The result of the last unnamed parameter
#' @references Suraj Gupta (2012): \href{http://obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff}{How R Searches And Finds Stuff}
#' @export
#' @examples
#' with_mock(
#'   all.equal = function(x, y, ...) TRUE,
#'   expect_equal(2 * 3, 4),
#'   .env = "base"
#' )
#' with_mock(
#'   `base::identical` = function(x, y, ...) TRUE,
#'   `base::all.equal` = function(x, y, ...) TRUE,
#'   expect_equal(x <- 3 * 3, 6),
#'   expect_identical(x + 4, 9)
#' )
#' throws_error()(expect_equal(3, 5))
#' throws_error()(expect_identical(3, 5))
with_mock <- function(..., .env = topenv()) {
  new_values <- eval(substitute(alist(...)))
  mock_qual_names <- names(new_values)

  if (all(mock_qual_names == "")) {
    warning("Not mocking anything. Please use named parameters to specify the functions you want to mock.")
    code_pos <- TRUE
  } else {
    code_pos <- (mock_qual_names == "")
  }
  code <- new_values[code_pos]

  mocks <- extract_mocks(new_values = new_values[!code_pos], .env = .env)

  on.exit(lapply(mocks, reset_mock), add = TRUE)
  lapply(mocks, set_mock)

  # Evaluate the code
  ret <- invisible(NULL)
  for (expression in code) {
    ret <- eval(expression, parent.frame())
  }
  ret
}

pkg_rx <- ".*[^:]"
colons_rx <- "::(?:[:]?)"
name_rx <- ".*"
pkg_and_name_rx <- sprintf("^(?:(%s)%s)?(%s)$", pkg_rx, colons_rx, name_rx)

extract_mocks <- function(new_values, .env) {
  if (is.environment(.env))
    .env <- environmentName(.env)
  mock_qual_names <- names(new_values)

  lapply(
    setNames(nm = mock_qual_names),
    function(qual_name) {
      pkg_name <- gsub(pkg_and_name_rx, "\\1", qual_name)

      name <- gsub(pkg_and_name_rx, "\\2", qual_name)

      if (pkg_name == "")
        pkg_name <- .env

      env <- asNamespace(pkg_name)

      if (!exists(name, env, mode = "function"))
        stop("Function ", name, " not found in environment ",
             environmentName(env), ".")
      orig_value <- get(name, env, mode = "function")
      structure(list(env = env, name = name, orig_value = duplicate(orig_value), target_value = orig_value, new_value = eval(new_values[[qual_name]])),
                class = "mock")
    }
  )
}

set_mock <- function(mock) {
  reassign_function(as.name(mock$name), mock$env, mock$target_value, mock$new_value)
}

reset_mock <- function(mock) {
  reassign_function(as.name(mock$name), mock$env, mock$target_value, mock$orig_value)
}

reassign_function <- function(name, env, old_fun, new_fun) {
  .Call(C_reassign_function, name, env, old_fun, new_fun)
}

duplicate <- function(x) {
  .Call(C_duplicate, x)
}
