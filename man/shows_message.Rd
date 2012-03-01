\name{shows_message}
\alias{expect_message}
\alias{shows_message}
\title{Expectation: does expression show a message?}
\usage{
  shows_message(regexp = NULL)

  expect_message(object, regexp = NULL, info = NULL,
    label = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression shows some
  message.}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
  Needs to match at least one of the messages produced by
  the expression.
}
\examples{
expect_that(message("a"), shows_message())
expect_that(message("a"), shows_message("a"))
}
\seealso{
  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_output}},
  \code{\link{expect_true}}, \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}}, \code{\link{is_true}},
  \code{\link{matches}}, \code{\link{prints_text}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

