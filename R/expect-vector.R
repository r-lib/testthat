#' Does code return a vector with the expected size and/or prototype?
#'
#' `expect_vector()` is a thin wrapper around [vctrs::vec_assert()], converting
#' the results of that function in to the expectations used by testthat. This
#' means that it used the vctrs of `ptype` (prototype) and `size`. See
#' details in <https://vctrs.r-lib.org/articles/type-size.html>
#'
#' @inheritParams expect_that
#' @param ptype (Optional) Vector prototype to test against. Should be a
#'   size-0 (empty) generalised vector.
#' @param size (Optional) Size to check for.
#' @export
#' @examples
#' if (requireNamespace("vctrs") && packageVersion("vctrs") > "0.1.0.9002") {
#' expect_vector(1:10, ptype = integer(), size = 10)
#' show_failure(expect_vector(1:10, ptype = integer(), size = 5))
#' show_failure(expect_vector(1:10, ptype = character(), size = 5))
#' }
expect_vector <- function(object, ptype = NULL, size = NULL) {
  act <- quasi_label(enquo(object), arg = "object")

  tryCatch(
    vctrs::vec_assert(act$val, ptype = ptype, size = size, arg = act$lab),
    vctrs_error_assert = function(e) {
      expect(FALSE, e$message)
    }
  )

  expect(TRUE, "success")
}
