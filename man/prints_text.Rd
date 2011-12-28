\name{prints_text}
\alias{expect_output}
\alias{prints_text}
\title{Expectation: does printed output match a regular expression?}
\usage{
  prints_text(regexp, ...)

  expect_output(object, regexp, ..., info = NULL,
    label = NULL)
}
\arguments{
  \item{regexp}{regular expression to test against}

  \item{...}{other arguments passed to \code{\link{grepl}}}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
  Expectation: does printed output match a regular
  expression?
}
\examples{
str(mtcars)
expect_that(str(mtcars), prints_text("32 obs"))
expect_that(str(mtcars), prints_text("11 variables"))
expect_output(str(mtcars), "11 variables")
}
\seealso{
  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_message}},
  \code{\link{expect_true}}, \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}}, \code{\link{is_true}},
  \code{\link{matches}}, \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

