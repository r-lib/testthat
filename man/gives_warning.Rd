\name{gives_warning}
\alias{expect_warning}
\alias{gives_warning}
\title{Expectation: does expression give a warning?}
\usage{
  gives_warning(regexp = NULL)

  expect_warning(object, regexp = NULL, info = NULL,
    label = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression gives some
  warning.}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
  Needs to match at least one of the warnings produced by
  the expression.
}
\examples{
expect_that(warning("a"), gives_warning())
expect_that(warning("a"), gives_warning("a"))
}
\seealso{
  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_message}},
  \code{\link{expect_output}}, \code{\link{expect_true}},
  \code{\link{is_a}}, \code{\link{is_equivalent_to}},
  \code{\link{is_false}}, \code{\link{is_identical_to}},
  \code{\link{is_true}}, \code{\link{matches}},
  \code{\link{prints_text}}, \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

