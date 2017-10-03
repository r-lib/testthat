#' Mock functions in a package.
#'
#' Executes code after temporarily substituting implementations of package
#' functions.  This is useful for testing code that relies on functions that are
#' slow, have unintended side effects or access resources that may not be
#' available when testing.
#'
#' This works by using some C code to temporarily modify the mocked function \emph{in place}.
#' On exit (regular or error), all functions are restored to their previous state.
#' This is somewhat abusive of R's internals, and is still experimental, so use with care.
#'
#' Functions in base packages cannot be mocked, but this can be
#' worked around easily by defining a wrapper function.
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
#' add_one <- function(x) x + 1
#' expect_equal(add_one(2), 3)
#' with_mock(
#'   add_one = function(x) x - 1,
#'   expect_equal(add_one(2), 1)
#' )
#' square_add_one <- function(x) add_one(x) ^ 2
#' expect_equal(square_add_one(2), 9)
#' expect_equal(
#'   with_mock(
#'     add_one = function(x) x - 1,
#'     square_add_one(2)
#'   ),
#'   1
#' )
with_mock <- function(..., .env = topenv()) {
  new_values <- eval(substitute(alist(...)))
  mock_qual_names <- names(new_values)

  if (all(mock_qual_names == "")) {
    warning("Not mocking anything. Please use named parameters to specify the functions you want to mock.",
            call. = FALSE)
    code_pos <- rep(TRUE, length(new_values))
  } else {
    code_pos <- (mock_qual_names == "")
  }
  code <- new_values[code_pos]

  mocks <- extract_mocks(new_values = new_values[!code_pos], .env = .env, eval_env = parent.frame())

  on.exit(lapply(mocks, reset_mock), add = TRUE)
  lapply(mocks, set_mock)

  # Evaluate the code
  if (length(code) > 0) {
    for (expression in code[-length(code)]) {
      eval(expression, parent.frame())
    }
    # Isolate last item for visibility
    eval(code[[length(code)]], parent.frame())
  }
}


pkg_rx <- ".*[^:]"
colons_rx <- "::(?:[:]?)"
name_rx <- ".*"
pkg_and_name_rx <- sprintf("^(?:(%s)%s)?(%s)$", pkg_rx, colons_rx, name_rx)

extract_mocks <- function(new_values, .env, eval_env = parent.frame()) {
  if (is.environment(.env))
    .env <- environmentName(.env)
  mock_qual_names <- names(new_values)

  lapply(
    stats::setNames(nm = mock_qual_names),
    function(qual_name) {
      pkg_name <- gsub(pkg_and_name_rx, "\\1", qual_name)

      if (is_base_pkg(pkg_name)) {
        stop("Can't mock functions in base packages (", pkg_name, ")",
          call. = FALSE)
      }

      name <- gsub(pkg_and_name_rx, "\\2", qual_name)

      if (pkg_name == "")
        pkg_name <- .env

      env <- asNamespace(pkg_name)

      if (!exists(name, envir = env, mode = "function"))
        stop("Function ", name, " not found in environment ",
             environmentName(env), ".", call. = FALSE)
      mock(name = name, env = env, new = eval(new_values[[qual_name]], eval_env, eval_env))
    }
  )
}

is_base_pkg <- function(x) {
  x %in% rownames(installed.packages(priority = "base"))
}

mock <- function(name, env, new) {
  target_value <- get(name, envir = env, mode = "function")
  structure(list(
    env = env, name = as.name(name),
    orig_value = .Call(duplicate_, target_value), target_value = target_value,
    new_value = new), class = "mock")
}

set_mock <- function(mock) {
  .Call(reassign_function, mock$name, mock$env, mock$target_value, mock$new_value)
}

reset_mock <- function(mock) {
  .Call(reassign_function, mock$name, mock$env, mock$target_value, mock$orig_value)
}
