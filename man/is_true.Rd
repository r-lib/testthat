\name{is_true}
\title{Expectation: is the object true?}

\description{
  Expectation: is the object true?
}

\details{
  This is a fall-back expectation that you can use when none of the
  other more specific expectations apply. The disadvantage is that you
  may get a less informative error message.
}
\seealso{\code{\link{is_false}} for complement}
\alias{is_true}
\alias{expect_true}
\examples{expect_that(2 == 2, is_true())
expect_true(2 == 2)
# Failed expectations will throw an error
\dontrun{
expect_that(2 != 2, is_true())
}
expect_that(!(2 != 2), is_true())
# or better:
expect_that(2 != 2, is_false())

a <- 1:3
expect_that(length(a) == 3, is_true())
# but better to use more specific expectation, if available
expect_that(length(a), equals(3))}
