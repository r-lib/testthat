# Old-style expectations.

**\[superseded\]**

Initial testthat used a style of testing that looked like
`expect_that(a, equals(b)))` this allowed expectations to read like
English sentences, but was verbose and a bit too cutesy. This style will
continue to work but has been soft-deprecated - it is no longer
documented, and new expectations will only use the new style
`expect_equal(a, b)`.

## Usage

``` r
is_a(class)

has_names(expected, ignore.order = FALSE, ignore.case = FALSE)

is_less_than(expected, label = NULL, ...)

is_more_than(expected, label = NULL, ...)

equals(expected, label = NULL, ...)

is_equivalent_to(expected, label = NULL)

is_identical_to(expected, label = NULL)

equals_reference(file, label = NULL, ...)

shows_message(regexp = NULL, all = FALSE, ...)

gives_warning(regexp = NULL, all = FALSE, ...)

prints_text(regexp = NULL, ...)

throws_error(regexp = NULL, ...)
```
