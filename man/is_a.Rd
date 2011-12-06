\name{is_a}
\alias{expect_is}
\alias{is_a}
\title{Expectation: does the object inherit from a class?}
\usage{
  is_a(class)
}
\arguments{
  \item{class}{character vector of class names}
}
\description{
  Tests whether or not an object inherits from any of a
  list of classes.
}
\examples{
expect_that(1, is_a("numeric"))
a <- matrix(1:10, nrow = 5)
expect_that(a, is_a("matrix"))

expect_that(mtcars, is_a("data.frame"))
expect_is(mtcars, "data.frame")
# alternatively for classes that have an is method
expect_that(is.data.frame(mtcars), is_true())
# doesn't read quite as nicely
}
\seealso{
  \code{\link{inherits}}
}

