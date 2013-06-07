\name{is_less_than}
\alias{expect_less_than}
\alias{is_less_than}
\title{Expectation: is returned value less than specified value?}
\usage{
  is_less_than(expected, label = NULL, ...)

  expect_less_than(object, expected, ..., info = NULL,
    label = NULL, expected.label = NULL)
}
\arguments{
  \item{expected}{Expected value}

  \item{label}{For full form, label of expected object used
  in error messages. Useful to override default (deparsed
  expected expression) when doing tests in a loop.  For
  short cut form, object label. When \code{NULL}, computed
  from deparsed object.}

  \item{expected.label}{Equivalent of \code{label} for
  shortcut form.}

  \item{...}{other values passed to
  \code{\link{all.equal}}}
}
\description{
  This is useful for ensuring returned value is below a
  ceiling.
}
\examples{
a <- 9
expect_that(a, is_less_than(10))
expect_less_than(a, 10)
}
\seealso{
  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_message}},
  \code{\link{expect_more_than}},
  \code{\link{expect_output}}, \code{\link{expect_true}},
  \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}},
  \code{\link{is_more_than}}, \code{\link{is_true}},
  \code{\link{matches}}, \code{\link{prints_text}},
  \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

