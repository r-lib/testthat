#' Mock functions in a package.
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' `with_mock()` and `local_mock()` are deprecated in favour of
#' [with_mocked_bindings()] and [local_mocked_bindings()].
#'
#' These functions worked by using some C code to temporarily modify the mocked
#' function _in place_. This was an abuse of R's internals and it is no longer
#' permitted.
#'
#' @param ... named parameters redefine mocked functions, unnamed parameters
#'   will be evaluated after mocking the functions
#' @param .env the environment in which to patch the functions,
#'   defaults to the top-level environment.  A character is interpreted as
#'   package name.
#' @param .local_envir Environment in which to add exit handler.
#'   For expert use only.
#' @keywords internal
#' @return The result of the last unnamed parameter
#' @export
with_mock <- function(..., .env = topenv()) {
  lifecycle::deprecate_warn("3.3.0", "with_mock()", "with_mocked_bindings()")

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
  lifecycle::deprecate_warn("3.3.0", "local_mock()", "local_mocked_bindings()")

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
          "Can't mock functions in base packages (",
          pkg_name,
          ")",
          call. = FALSE
        )
      }

      name <- gsub(pkg_and_name_rx, "\\2", qual_name)

      if (pkg_name == "") {
        pkg_name <- .env
      }

      env <- asNamespace(pkg_name)

      if (!exists(name, envir = env, mode = "function")) {
        stop(
          "Function ",
          name,
          " not found in environment ",
          environmentName(env),
          ".",
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
      orig_value = .Call(duplicate_, target_value),
      target_value = target_value,
      new_value = new
    ),
    class = "mock"
  )
}

set_mock <- function(mock) {
  .Call(
    reassign_function,
    mock$name,
    mock$env,
    mock$target_value,
    mock$new_value
  )
}

reset_mock <- function(mock) {
  .Call(
    reassign_function,
    mock$name,
    mock$env,
    mock$target_value,
    mock$orig_value
  )
}

is_base_pkg <- function(x) {
  x %in% rownames(utils::installed.packages(priority = "base"))
}
