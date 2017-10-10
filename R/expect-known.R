#' Expectation: is printed output equal to known value?
#'
#' It is often difficult to define exactly what the printed output should look
#' like, but you know it when you see it, and you want to make sure that it
#' doesn't change by accident. `expect_output_file()` renders function output
#' to a file then throws an error if the output changes.
#'
#' You need to use `expect_output_file()` in conjunction with git or other
#' source code control tool so that you can see exactly what has changed, and
#' revert output to previous versions where needed.
#'
#' @export
#' @param file Path to a "golden" text file that contains the desired output.
#' @param update Should the "golden" text file be updated? Defaults to
#'   `FALSE`, but that it will automatically create output if the file
#'   does not exist (i.e. on the first run).
#' @inheritParams capture_output_lines
#' @inheritParams expect_equal
#' @family regression tests
#' @examples
#' tmp <- tempfile()
#'
#' # The first run always succeeds
#' expect_output_file(mtcars[1:10, ], tmp, print = TRUE)
#'
#' # Subsequent runs will suceed only if the file is unchanged
#' # This will succeed:
#' expect_output_file(mtcars[1:10, ], tmp, print = TRUE)
#'
#' \dontrun{
#' # This will fail
#' expect_output_file(mtcars[1:9, ], tmp, print = TRUE)
#' }
expect_known_output <- function(object, file,
                                update = TRUE, ...,
                                info = NULL,
                                label = NULL,
                                print = FALSE,
                                width = 80) {

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act <- append(act, eval_with_output(object, print = print, width = width))

  if (!file.exists(file)) {
    write_lines(act$out, file)
    succeed()
  } else {
    exp_out <- read_lines(file)
    comp <- compare(act$out, exp_out, ...)

    if (update) {
      write_lines(act$out, file)
    }

    expect(
      comp$equal,
      sprintf("%s (%s) has changed since previous run.\n%s", act$lab, file, comp$message),
      info = info
    )
  }

  invisible(act$val)
}

#' @export
#' @rdname expect_known_output
#' @usage NULL
expect_output_file <- expect_known_output

#' Expectation: is object equal to a known value?
#'
#' This expectation is equivalent to [expect_equal()], except that the
#' expected value is stored in an RDS file instead of being specified literally.
#' This can be helpful when the value is necessarily complex. If the file does
#' not exist then it will be created using the value of the specified object,
#' and subsequent tests will check for consistency against that generated value.
#' The test can be reset by deleting the RDS file.
#'
#' It is important to initialize the reference RDS file within the source
#' package, most likely in the `tests/testthat` directory. Testing spawned
#' by [devtools::test()], for example, will accomplish this. But note that
#' testing spawned by `R CMD check` and [devtools::check()] will NOT.
#' In the latter cases, the package source is copied to an external location
#' before tests are run. The resulting RDS file will not make its way back into
#' the package source and will not be available for subsequent comparisons.
#'
#' @inheritParams expect_that
#' @param file The file name used to store the object. Should have an "rds"
#'   extension.
#' @param label For the full form, a label for the expected object, which is
#'   used in error messages. Useful to override the default (which is based on
#'   the file name), when doing tests in a loop. For the short-cut form, the
#'   object label, which is computed from the deparsed object by default.
#' @param expected.label Equivalent of `label` for shortcut form.
#' @param ... other values passed to [expect_equal()]
#' @family regression tests
#' @export
#' @examples
#' \dontrun{
#' expect_equal_to_reference(1, "one.rds")
#' }
expect_known_value <- function(object, file, ..., info = NULL,
                                      label = NULL, expected.label = NULL) {

  if (!file.exists(file)) {
    # first time always succeeds
    saveRDS(object, file)
    succeed()
    return(invisible(object))
  }

  act <- quasi_label(enquo(object), label)
  ref <- list(
    val = readRDS(file),
    lab = expected.label %||% paste0("reference from `", file, "`")
  )

  comp <- compare(act$val, ref$val, ...)
  expect(
    comp$equal,
    sprintf("%s not equal to %s.\n%s", act$lab, ref$lab, comp$message),
    info = info
  )
  invisible(object)
}

#' @export
#' @rdname expect_known_value
#' @usage NULL
expect_equal_to_reference <- expect_known_value
