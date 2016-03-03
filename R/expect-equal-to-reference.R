#' Expectation: is the object equal to a reference value stored in a file?
#'
#' This expectation is equivalent to \code{\link{expect_equal}}, except that the
#' expected value is stored in an RDS file instead of being specified literally.
#' This can be helpful when the value is necessarily complex. If the file does
#' not exist then it will be created using the value of the specified object,
#' and subsequent tests will check for consistency against that generated value.
#' The test can be reset by deleting the RDS file.
#'
#' It is important to initialize the reference RDS file within the source
#' package, most likely in the \code{tests/testthat/} directory. Testing spawned
#' by \code{devtools::test()}, for example, will accomplish this. But note that
#' testing spawned by \code{R CMD check} and \code{devtools::check()} will NOT.
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
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @param ... other values passed to \code{\link{expect_equal}}
#' @family expectations
#' @export
#' @examples
#' \dontrun{
#' expect_equal_to_reference(1, "one.rds")
#' }
expect_equal_to_reference <- function(object, file, ..., info = NULL,
                                      label = NULL, expected.label = NULL) {

  lab_act <- make_label(object, label)
  lab_exp <- expected.label %||% paste0("reference from `", file, "`")

  if (!file.exists(file)) {
    # first time always succeeds
    saveRDS(object, file)
    succeed()
  } else {
    reference <- readRDS(file)

    comp <- compare(object, reference, ...)
    expect(
      comp$equal,
      sprintf("%s not equal to %s.\n%s", lab_act, lab_exp, comp$message),
      info = info
    )
  }

  invisible(object)
}
