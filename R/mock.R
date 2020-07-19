#' Mock functions in a package.
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' `with_mock()` and `local_mock()` are superseded in favour of the more
#' rigorous techniques found in the [mockr](https://krlmlr.github.io/mockr/)
#' and [mockery](https://github.com/r-lib/mockery#mockery) packages.
#'
#' Mocking allows you to temporary replace the implementation of functions
#' within a package, which useful for testing code that relies on functions
#' that are slow, have unintended side effects or access resources that may
#' not be available when testing.
#'
#' This works by using some C code to temporarily modify the mocked function
#' _in place_. On exit, all functions are restored to their previous state.
#' This is somewhat abusive of R's internals so use with care. In particular,
#' functions in base packages cannot be mocked; to work aroud you'll need to
#' make a wrapper function in your own package..
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `with_mock()` and `local_mock()` are deprecated in the third edition.
#'
#' @param ... named parameters redefine mocked functions, unnamed parameters
#'   will be evaluated after mocking the functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment.  A character is interpreted as
#'   package name.
#' @param .local_env Environment in which to add exit hander.
#'   For expert use only.
#' @keywords internal
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
#' square_add_one <- function(x) add_one(x)^2
#' expect_equal(square_add_one(2), 9)
#' expect_equal(
#'   with_mock(
#'     add_one = function(x) x - 1,
#'     square_add_one(2)
#'   ),
#'   1
#' )
#'
#' # local_mock() -------------------------------
#' plus <- function(x, y) x + y
#' test_that("plus(1, 1) == 2", {
#'   expect_equal(plus(1, 1), 2)
#' })
#'
#' test_that("plus(1, 1) == 3", {
#'   local_mock(plus = function(x, y) 3)
#'   expect_equal(plus(1, 1), 3)
#' })
with_mock <- function(..., .env = topenv()) {
  edition_deprecate(3, "with_mock()",
    "Please use mockr or mockery packages instead"
  )

  dots <- eval(substitute(alist(...)))
  mock_qual_names <- names(dots)

  if (all(mock_qual_names == "")) {
    warning(
      "Not mocking anything. Please use named parameters to specify the functions you want to mock.",
      call. = FALSE
    )
    code_pos <- rep(TRUE, length(dots))
  } else {
    code_pos <- (mock_qual_names == "")
  }
  code <- dots[code_pos]

  mock_funs <- lapply(dots[!code_pos], eval, parent.frame())
  mocks <- extract_mocks(mock_funs, .env = .env)

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

#' @export
#' @rdname with_mock
local_mock <- function(..., .env = topenv(), .local_envir = parent.frame()) {
  edition_deprecate(3, "local_mock()",
    "Please use mockr or mockery packages instead"
  )

  mocks <- extract_mocks(list(...), .env = .env)
  on_exit <- bquote(
    on.exit(lapply(.(mocks), .(reset_mock)), add = TRUE),
  )

  lapply(mocks, set_mock)
  eval_bare(on_exit, .local_envir)
  invisible()
}

pkg_rx <- ".*[^:]"
colons_rx <- "::(?:[:]?)"
name_rx <- ".*"
pkg_and_name_rx <- sprintf("^(?:(%s)%s)?(%s)$", pkg_rx, colons_rx, name_rx)

extract_mocks <- function(funs, .env) {
  if (is.environment(.env)) {
    .env <- environmentName(.env)
  }
  mock_qual_names <- names(funs)

  lapply(
    stats::setNames(nm = mock_qual_names),
    function(qual_name) {
      pkg_name <- gsub(pkg_and_name_rx, "\\1", qual_name)

      if (is_base_pkg(pkg_name)) {
        stop(
          "Can't mock functions in base packages (", pkg_name, ")",
          call. = FALSE
        )
      }

      name <- gsub(pkg_and_name_rx, "\\2", qual_name)

      if (pkg_name == "") {
        pkg_name <- .env
      }

      env <- asNamespace(pkg_name)

      if (!exists(name, envir = env, mode = "function")) {
        stop("Function ", name, " not found in environment ",
          environmentName(env), ".",
          call. = FALSE
        )
      }
      mock(name = name, env = env, new = funs[[qual_name]])
    }
  )
}

mock <- function(name, env, new) {
  target_value <- get(name, envir = env, mode = "function")
  structure(
    list(
      env = env,
      name = as.name(name),
      orig_value = .Call(duplicate_, target_value), target_value = target_value,
      new_value = new
    ),
    class = "mock"
  )
}

set_mock <- function(mock) {
  .Call(reassign_function, mock$name, mock$env, mock$target_value, mock$new_value)
}

reset_mock <- function(mock) {
  .Call(reassign_function, mock$name, mock$env, mock$target_value, mock$orig_value)
}

is_base_pkg <- function(x) {
  x %in% rownames(utils::installed.packages(priority = "base"))
}

test_mock1 <- function() {
  test_mock2()
}
test_mock2 <- function() 10
