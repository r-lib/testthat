#' Make an equality test.
#'
#' This a convenience function to make an expectation that checks that
#' input stays the same.
#'
#' @param x a vector of values
#' @param expectation the type of equality you want to test for
#'   (\code{equals}, \code{is_equivalent_to}, \code{is_identical_to})
#' @export
#' @examples
#' x <- 1:10
#' make_expectation(x)
#'
#' make_expectation(mtcars$mpg)
#'
#' make_expectation(subset(mtcars, mpg > 25))
make_expectation <- function (x, expectation = "equals") {
    obj <- substitute(x)
    if (is.call(obj))
        obj <- capture.output(obj)
    expectation <- match.arg(expectation, c("equals", "is_equivalent_to", 
        "is_identical_to"))
    cat("expect_that(", obj, ", ", expectation, "(", sep="")
    dput(x)
    cat("))", "\n")
}