#' Test package examples
#'
#' These helper functions make it easier to test the examples in a package.
#' Each example counts as one test, and it succeeds if the code runs without
#' an error. Generally, this is redundant with R CMD check, and is not
#' recommended in routine practice.
#'
#' @keywords internal
#' @param path For `test_examples()`, path to directory containing Rd files.
#'   For `test_example()`, path to a single Rd file. Remember the working
#'   directory for tests is `tests/testthat`.
#' @param title Test title to use
#' @param rd A parsed Rd object, obtained from [tools::Rd_db()] or otherwise.
#' @export
test_examples <- function(path = "../..") {
  res <- test_examples_source(path) %||% test_examples_installed()
  if (is.null(res)) {
    stop("Could not find examples", call. = FALSE)
  }
  invisible(res)
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

test_examples_installed <- function(package = testing_package()) {
  if (identical(package, "") || is.null(package)) {
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
test_rd <- function(rd, title = attr(rd, "Rdfile")) {
  test_example(rd, title)
}

#' @export
#' @rdname test_examples
test_example <- function(path, title = path) {
  ex_path <- tempfile(fileext = ".R")
  tools::Rd2ex(path, ex_path)
  if (!file.exists(ex_path)) {
    return(invisible(FALSE))
  }

  env <- new.env(parent = globalenv())

  ok <- test_code(title,
    parse(ex_path, encoding = "UTF-8"),
    env = env,
    skip_on_empty = FALSE
  )
  if (ok) succeed(path)

  invisible(ok)
}
