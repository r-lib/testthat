\name{is_identical_to}
\alias{expect_identical}
\alias{is_identical_to}
\title{Expectation: is the object identical to another?}
\usage{
  is_identical_to(expected, label = NULL)

  expect_identical(object, expected, info = NULL,
    label = NULL, expected.label = NULL)
}
\arguments{
  \item{expected}{Expected value}

  \item{label}{For full form, label of expected object used
  in error messages. Useful to override default (deparsed
  expected expression) when doing tests in a loop.  For
  short cut form, object label. When \code{NULL}, computed
  from deparsed object.}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{expected.label}{Equivalent of \code{label} for
  shortcut form.}
}
\description{
  Comparison performed using \code{\link{identical}}.
}
\examples{
a <- letters[1:3]
expect_that(a, is_identical_to(c("a", "b", "c")))
expect_identical(a, c("a", "b", "c"))

# Identical does not take into account numeric tolerance
\dontrun{
expect_that(sqrt(2) ^ 2, is_identical_to(2))
expect_identical(sqrt(2) ^ 2, 2)
}
}
\seealso{
  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_is}}, \code{\link{expect_match}},
  \code{\link{expect_message}},
  \code{\link{expect_output}}, \code{\link{expect_true}},
  \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_true}}, \code{\link{matches}},
  \code{\link{prints_text}}, \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

