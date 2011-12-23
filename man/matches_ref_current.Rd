\name{matches_ref_current}
\alias{matches_ref_current}
\title{Is the current object equal to the reference?}
\usage{matches_ref_current(reference_object)}
\description{Is the current object equal to the reference?}
\details{This function takes the output of the \code{\link{test_reference_change}}
and returns TRUE if the current object matches the reference, and FALSE otherwise}
\author{Paul Hiemstra, \email{p.h.hiemstra@gmail.com}}
\seealso{\code{\link{test_reference_change}}, \code{\link{clear_reference_cache}}}
\arguments{\item{reference_object}{object to perform the test on.}}
\examples{expect_that(5 * 2, equals(10))
expect_that(sqrt(2) ^ 2, equals(2))
\dontrun{
test1 = test_reference_change({a<-runif(1)
b<-runif(2)}, savePrefix = "random")
test2 = test_reference_change({a<-1
b<-3}, savePrefix = "test")
test_that("Reference stuff works", {
expect_that(matches_ref_current(test1), is_false())
expect_that(matches_ref_current(test2), is_true())
})
}}
