\name{expect_that}
\alias{expect_that}
\title{Expect that a condition holds.}
\usage{expect_that(object, condition, info, label)}

\description{
  Expect that a condition holds.
}

\details{
  An expectation checks whether a single condition holds true.
  \pkg{testthat} currently provides the following expectations.  See
  their documentation for more details

  \itemize{ \item \code{\link{is_true}}: truth \item
  \code{\link{is_false}}: falsehood \item \code{\link{is_a}}:
  inheritance \item \code{\link{equals}}: equality with numerical
  tolerance \item \code{\link{is_equivalent_to}}: equality ignoring
  attributes \item \code{\link{is_identical_to}}: exact identity \item
  \code{\link{matches}}: string matching \item
  \code{\link{prints_text}}: output matching \item
  \code{\link{throws_error}}: error matching \item
  \code{\link{gives_warning}}: warning matching \item
  \code{\link{shows_message}}: message matching \item
  \code{\link{takes_less_than}}: performance }

  Expectations are arranged into tests with \code{\link{test_that}} and
  tests are arranged into contexts with \code{\link{context}}.
}
\arguments{
  \item{object}{object to test}
  \item{condition,}{a function that returns whether or not the condition
is met, and if not, an error message to display.}
  \item{label}{object label. When \code{NULL}, computed from deparsed object.}
  \item{info}{extra information to be included in the message (useful when
writing tests in loops).}
}
\examples{expect_that(5 * 2, equals(10))
expect_that(sqrt(2) ^ 2, equals(2))
\dontrun{
expect_that(sqrt(2) ^ 2, is_identical_to(2))
}}
