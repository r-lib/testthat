\name{test_reference_change}
\alias{test_reference_change}
\title{Test if the current result differs from a stored reference...}
\usage{test_reference_change(expr, savePrefix, rdapath="reffiles",
    verbose=FALSE)}
\description{Test if the current result differs from a stored reference}
\details{This function executes the expression given to it by the user. It 
returns both the result of the expression and the reference read from
file to allow a test if they are equal.}
\author{Paul Hiemstra, \email{p.h.hiemstra@gmail.com}}
\seealso{\code{\link{matches_ref_current}}, \code{\link{clear_reference_cache}}}
\arguments{\item{expr}{expression used in the test}
\item{savePrefix,}{prefix used in the file name that the reference is stored in}
\item{rdapath}{path to the reference files}
\item{verbose}{logical, if TRUE, report when a reference file is regenerated.}}
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
