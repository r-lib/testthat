\name{test_reference_change}
\alias{test_reference_change}
\title{Test if the current result differs from a stored reference}
\usage{
  test_reference_change(expr, savePrefix,
    rdapath = "reffiles", verbose = FALSE)
}
\arguments{
  \item{expr}{character vector with the expression used in
  the test, remember to escape any quotation marks in the
  character expression.}

  \item{savePrefix,}{prefix used in the file name that the
  reference is stored in}

  \item{rdapath}{path to the reference files}

  \item{verbose}{logical, if TRUE, report when a reference
  file is regenerated.}
}
\description{
  This function executes the expression given to it by the
  user. It returns both the result of the expression and
  the reference read from file to allow a test if they are
  equal.
}
\details{
  If you want to use quotation marks in your expression,
  please escape the quotes. Alternatively mix ' and "
  quotes. If you want to use variables in your expression,
  remember to make them global using <<-. This is not an
  ideal situation, but because all code is ran in separate
  environments, and evaluation is postponed to within the
  function \code{testthat:::.expr_to_list}, the
  globalization is needed.
}
\examples{
\dontrun{
test1 = test_reference_change("{a<-runif(1)
                               b<-runif(2)}", savePrefix = "random")
test2 = test_reference_change("{a<-1
                               b<-3}", savePrefix = "test")
test_that("Reference stuff works", {
  expect_that(matches_ref_current(test1), is_false())
  expect_that(matches_ref_current(test2), is_true())
})
}
}
\author{
  Paul Hiemstra, \email{p.h.hiemstra@gmail.com}
}
\seealso{
  \code{\link{matches_ref_current}},
  \code{\link{clear_reference_cache}}
}

