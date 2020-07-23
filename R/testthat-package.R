#' An R package to make testing fun!
#'
#' Try the example below. Have a look at the references and learn more
#' from function documentation such as [test_that()].
#'
#' @section Options:
#' - `testthat.use_colours`: Should the output be coloured? (Default: `TRUE`).
#' - `testthat.summary.max_reports`: The maximum number of detailed test
#'    reports printed for the summary reporter (default: 10).
#' - `testthat.summary.omit_dots`: Omit progress dots in the summary reporter
#'    (default: `FALSE`).
#'
#' @keywords internal
"_PACKAGE"

#' @import rlang
#' @useDynLib testthat, .registration = TRUE
NULL

testthat_env <- new.env(parent = emptyenv())


# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL
