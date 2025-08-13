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
    cli::cli_abort("Could not find examples.")
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
  test_example(rd, title %||% "example")
}

#' @export
#' @rdname test_examples
test_example <- function(path, title = path) {
  local_description_push(title)

  ex_path <- withr::local_tempfile(pattern = "test_example-", fileext = ".R")
  tools::Rd2ex(path, ex_path)
  if (!file.exists(ex_path)) {
    return(invisible(FALSE))
  }

  ok <- test_code(
    code = parse(ex_path, encoding = "UTF-8"),
    env = globalenv(),
    reporter = get_reporter() %||% StopReporter$new(),
    skip_on_empty = FALSE
  )
  if (ok) {
    succeed(path)
  }

  invisible(ok)
}
