\name{matches}
\alias{expect_match}
\alias{matches}
\title{Expectation: does string match regular expression?}
\usage{
  matches(regexp, all = TRUE)

  expect_match(object, regexp, all = TRUE, info = NULL,
    label = NULL)
}
\arguments{
  \item{regexp}{regular expression to test against}

  \item{all}{should all elements of actual value match
  \code{regexp} (TRUE), or does only one need to match
  (FALSE)}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
  If the object to be tested has length greater than one,
  all elements of the vector must match the pattern in
  order to pass.
}
\examples{
expect_that("Testing is fun", matches("fun"))
expect_that("Testing is fun", matches("f.n"))
expect_match("Testing is fun", "f.n")
}
\seealso{
  \code{\link[stringr]{str_detect}} for the function that
  powers the string matching

  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_message}},
  \code{\link{expect_output}}, \code{\link{expect_true}},
  \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}}, \code{\link{is_true}},
  \code{\link{prints_text}}, \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

