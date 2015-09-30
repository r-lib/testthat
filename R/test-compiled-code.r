get_active_pkg <- function() {

  ## For R CMD check; check env
  env <- Sys.getenv("R_TESTTHAT_PACKAGE", unset = "")
  if (nzchar(env))
    return(env)

  ## Otherwise, check relative to current directory.
  path <- normalizePath(getwd())
  parent <- dirname(path)
  while (parent != path) {
    if (file.exists(file.path(path, "DESCRIPTION"))) {
      contents <- read.dcf(file.path(path, "DESCRIPTION"), all = TRUE)
      if ("Package" %in% names(contents))
        return(contents[["Package"]])
    }

    path <- parent
    parent <- dirname(path)
  }

  ""

}

get_routine <- function(package, routine) {
  tryCatch(
    getNativeSymbolInfo(routine, PACKAGE = package),
    error = function(e) NULL
  )
}

# Get the reporter's type as a string
reporter_type <- function(reporter) {

  if (is.character(reporter))
    return(reporter)

  if (inherits(reporter, "Reporter"))
    return(tolower(sub("Reporter", "", class(reporter))))

  ""
}

# Returns TRUE if no tests available, or all tests succeeded.
test_compiled_code <- function(reporter, ...) {

  package <- get_active_pkg()
  if (!nzchar(package))
    return(TRUE)

  routine <- get_routine(package, "run_testthat_tests")
  if (is.null(routine))
    return(TRUE)

  output <- ""
  status <- 1

  tryCatch(
    output <- utils::capture.output(status <- .Call(routine)),
    error = function(e) {
      warning(sprintf("failed to call test entrypoint '%s'", routine))
    }
  )

  if (reporter_type(reporter) != "silent" && nzchar(output))
    cat("\nC++ unit test results:", output[-1], sep = "\n")

  status == 0

}

#' Use Catch for C++ Unit Testing
#'
#' Add the necessary infrastructure to enable C++ unit testing
#' in \R packages with
#' \href{https://github.com/philsquared/Catch}{Catch} and \code{testthat}.
#'
#' This function will:
#'
#' \enumerate{
#'   \item Create a file \code{src/test-runner.cpp},
#'   \item Ensure that your package links to \code{testthat}.
#' }
#'
#' C++ unit tests can be added to C++ source files within the
#' \code{src/} directory of your package, with a format similar
#' to \R code tested with \code{testthat} -- for example,
#'
#' \preformatted{
#' context("C++ Unit Test") {
#'   test_that("two plus two is four") {
#'     int result = 2 + 2;
#'     expect_true(result == 4);
#'   }
#' }
#' }
#'
#' When your package is compiled, unit tests alongside a harness
#' for running these tests will be compiled into the \R package,
#' with the entry point \code{run_testthat_tests()}. \code{testthat}
#' will use that entry point to run your unit tests when detected.
#'
#' @param dir The directory containing an \R package.
#'
#' @export
#' @seealso \href{https://github.com/philsquared/Catch}{Catch}, the
#'   library used to enable C++ unit testing.
use_catch <- function(dir = getwd()) {

  if (!requireNamespace("devtools", quietly = TRUE))
    stop("please install devtools", call. = FALSE)

  if (!file.exists(file.path(dir, "DESCRIPTION")))
    stop("no DESCRIPTION file in directory '", dir, "'")

  src_dir <- file.path(dir, "src")
  if (!file.exists(src_dir))
    if (!dir.create(src_dir))
      stop("failed to create directory '", src_dir, "'")

  test_runner_path <- file.path(src_dir, "test-runner.cpp")

  success <- file.copy(
    system.file(package = "testthat", "resources", "test-runner.cpp"),
    test_runner_path,
    overwrite = TRUE
  )
  if (!success)
    stop("failed to copy 'test-runner.cpp' to '", src_dir, "'")

  DESCRIPTION <- devtools:::read_dcf(file.path(dir, "DESCRIPTION"))
  if (is.null(DESCRIPTION$LinkingTo)) {
    # Figure out a nice location to insert LinkingTo
    idx <- length(DESCRIPTION)
    for (entry in c("Suggests", "Imports", "Depends")) {
      if (entry %in% names(DESCRIPTION)) {
        idx <- which(entry == names(DESCRIPTION))
        break
      }
    }

    DESCRIPTION <- c(
      DESCRIPTION[1:idx],
      LinkingTo = "\n    testthat",
      DESCRIPTION[(idx + 1):length(DESCRIPTION)]
    )
  }

  splat <- trim_whitespace(
    strsplit(DESCRIPTION$LinkingTo, "\\s*,\\s*", perl = TRUE)[[1]]
  )

  if (!("testthat" %in% splat))
    splat <- c(splat, "testthat")

  DESCRIPTION$LinkingTo <- paste(
    "\n    ",
    paste(splat, sep = "", collapse = ",\n    "),
    sep = ""
  )

  devtools:::write_dcf(file.path(dir, "DESCRIPTION"), DESCRIPTION)
  message("> Added C++ unit testing infrastructure")

}
