#' Test package examples
#'
#' These helper functions make it easier to test the examples in a package.
#' Each example counts as one test, and it succeeds if the code runs without
#' an error.
#'
#' @param path For `test_examples()`, path to directory containing Rd files.
#'   For `test_example()`, path to a single Rd file. Remember the working
#'   directory for tests is `tests/testthat`.
#' @param rd A parsed Rd object, obtained from [tools::Rd_db()] or otherwise.
#' @export
test_examples <- function(path = "../..") {
  res <- test_examples_source(path) %||% test_examples_installed(env_test$package)
  if (is.null(res)) {
    stop("Could not find examples", call. = FALSE)
  }
  res
}

test_examples_source <- function(path = "../..") {
  if (!dir.exists(file.path(path, "man"))) {
    return()
  }
  Rd <- tools::Rd_db(dir = path)
  if (length(Rd) == 0) {
    return()
  }
  lapply(Rd, test_rd)
}

test_examples_installed <- function(package = env_test$package) {
  if (is.null(package)) {
    return()
  }

  Rd <- tools::Rd_db(package = package)
  if (length(Rd) == 0) {
    return()
  }
  lapply(Rd, test_rd)
}

#' @export
#' @rdname test_examples
test_example <- function(path) {
  ex_path <- file.path(tempdir(), paste0(tools::file_path_sans_ext(basename(path)), ".R"))
  tools::Rd2ex(path, ex_path)
  if (!file.exists(ex_path)) return()

  env <- new.env(parent = globalenv())

  ok <- test_code(path, parse(ex_path), env = env)
  if (ok) succeed(path)

  invisible()
}

#' @export
#' @rdname test_examples
test_rd <- function(rd) {
  path <- attr(rd, "Rdfile")
  ex_path <- file.path(tempdir(), paste0(tools::file_path_sans_ext(basename(path)), ".R"))
  tools::Rd2ex(rd, ex_path)
  if (!file.exists(ex_path)) return()

  env <- new.env(parent = globalenv())

  ok <- test_code(path, parse(ex_path), env = env)
  if (ok) succeed(path)

  invisible()
}
