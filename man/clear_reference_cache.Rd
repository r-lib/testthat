\name{clear_reference_cache}
\alias{clear_reference_cache}
\title{Deletes the stored reference files}
\usage{
  clear_reference_cache(savePrefix = NULL,
    rdapath = "reffiles")
}
\arguments{
  \item{savePrefix}{either NULL (default) or a list of
  prefixes do be deleted. If the this parameter is NULL,
  all reference files are deleted.}

  \item{rdapath}{path to the reference files}
}
\description{
  This function removes the reference files that have been
  stored previously.
}
\examples{
\dontrun{
test_that("Reference stuff works", {
  expect_that(is_unchanged("{a<-runif(1)
                               b<-runif(2)}", savePrefix = "random"), is_false())
  expect_that(is_unchanged("{a<-1
                               b<-3}", savePrefix = "test"), is_true())
})

 clear_reference_cache()
 clear_reference_cache("random")
}
}
\author{
  Paul Hiemstra, \email{p.h.hiemstra@gmail.com}
}
\seealso{
  \code{\link{test_reference_change}}
}

