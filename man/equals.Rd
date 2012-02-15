\name{equals}
\alias{equals}
\alias{expect_equal}
\title{Expectation: is the object equal (with numerical tolerance) to a value?}
\usage{
  equals(expected, label = NULL, ...)

  expect_equal(actual, expected, ..., info = NULL,
    label = NULL, expected.label = NULL)
}
\arguments{
  \item{expected}{expected value}

  \item{label}{label of expected object used in error
  messages.  Useful to override default (deparsed expected
  expression) when doing tests in a loop.}

  \item{...}{other values passed to
  \code{\link{all.equal}}}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}
}
\description{
  Comparison performed using \code{\link{all.equal}}.
}
\examples{
a <- 10
expect_that(a, equals(10))
expect_equal(a, 10)

# Use equals() when testing for numeric equality
sqrt(2) ^ 2 - 1
expect_that(sqrt(2) ^ 2, equals(2))
expect_equal(sqrt(2) ^ 2, 2)
# Neither of these forms take floating point representation errors into
# account
\dontrun{
expect_that(sqrt(2) ^ 2 == 2, is_true())
expect_that(sqrt(2) ^ 2, is_identical_to(2))
}
}
\seealso{
  Other expectations: \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_message}},
  \code{\link{expect_output}}, \code{\link{expect_true}},
  \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}}, \code{\link{is_true}},
  \code{\link{matches}}, \code{\link{prints_text}},
  \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

