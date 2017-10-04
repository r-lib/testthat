#' Regression test: does output remain unchanged?
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
expect_output_file <- function(object, file,
                               update = TRUE, ...,
                               info = NULL,
                               label = NULL,
                               print = FALSE,
                               width = 80) {
  lab <- make_label(object, label)
  lines_cur <- capture_output_lines(object, print = print, width = width)

  if (!file.exists(file)) {
    write_lines(lines_cur, file)
    succeed()
  } else {
    lines_old <- read_lines(file)
    comp <- compare(lines_cur, lines_old, ...)

    if (update) {
      write_lines(lines_cur, file)
    }

    expect(
      comp$equal,
      sprintf("%s (%s) has changed since previous run.\n%s", lab, file, comp$message),
      info = info
    )
  }

  invisible(object)
}
