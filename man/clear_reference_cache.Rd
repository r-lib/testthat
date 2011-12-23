\name{clear_reference_cache}
\alias{clear_reference_cache}
\title{Deletes the stored reference files...}
\usage{clear_reference_cache(savePrefix, rdapath="reffiles")}
\description{Deletes the stored reference files}
\details{This function removes the reference files that have been stored previously.}
\author{Paul Hiemstra, \email{p.h.hiemstra@gmail.com}}
\seealso{\code{\link{test_reference_change}}, \code{\link{matches_ref_current}}}
\arguments{\item{savePrefix}{either NULL (default) or a list of prefixes do be deleted. If the 
this parameter is NULL, all reference files are deleted.}
\item{rdapath}{path to the reference files}}
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

clear_reference_cache()
clear_reference_cache("random")
}}
