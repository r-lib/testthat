# Custom expectations

This vignette shows you how to write your own expectations. Custom
expectations allow you to extend testthat to meet your own specialized
testing needs, creating new `expect_*` functions that work exactly the
same way as the built-ins. Custom expectations are particularly useful
if you want to produce expectations tailored for domain-specific data
structures, combine multiple checks into a single expectation, or create
more actionable feedback when an expectation fails. You can use them
within your package by putting them in a helper file, or share them with
others by exporting them from your package.

In this vignette, you’ll learn about the three-part structure of
expectations, how to test your custom expectations, see a few examples,
and, if you’re writing a lot of expectations, learn how to reduce
repeated code.

## Do you need it?

But before you read the rest of the vignette and dive into the full
details of creating a 100% correct expectation, consider if you can get
away with a simpler wrapper. If you’re just customising an existing
expectation by changing some defaults, you’re fine:

``` r
expect_df <- function(tbl) {
  expect_s3_class(tbl, "data.frame")
}
```

If you’re combining multiple expectations, you can introduce a subtle
problem. For example, take this expectation from tidytext:

``` r
# from tidytext
expect_nrow <- function(tbl, n) {
  expect_s3_class(tbl, "data.frame")
  expect_equal(nrow(tbl), n)
}
```

If we use it in a test you can see there’s an issue:

``` r
test_that("success", {
  expect_nrow(mtcars, 32)
})
#> Test passed with 2 successes 🥇.

test_that("failure 1", {
  expect_nrow(mtcars, 30)
})
#> ── Failure: failure 1 ─────────────────────────────────────────────────
#> Expected `nrow(tbl)` to equal `n`.
#> Differences:
#>   `actual`: 32.0
#> `expected`: 30.0
#> 
#> Backtrace:
#>     ▆
#>  1. └─global expect_nrow(mtcars, 30)
#>  2.   └─testthat::expect_equal(nrow(tbl), n)
#> Error:
#> ! Test failed with 1 failure and 1 success.

test_that("failure 2", {
  expect_nrow(matrix(1:5), 2)
})
#> ── Failure: failure 2 ─────────────────────────────────────────────────
#> Expected `tbl` to be an S3 object.
#> Actual OO type: none.
#> Backtrace:
#>     ▆
#>  1. └─global expect_nrow(matrix(1:5), 2)
#>  2.   └─testthat::expect_s3_class(tbl, "data.frame")
#> ── Failure: failure 2 ─────────────────────────────────────────────────
#> Expected `nrow(tbl)` to equal `n`.
#> Differences:
#>   `actual`: 5.0
#> `expected`: 2.0
#> 
#> Backtrace:
#>     ▆
#>  1. └─global expect_nrow(matrix(1:5), 2)
#>  2.   └─testthat::expect_equal(nrow(tbl), n)
#> Error:
#> ! Test failed with 2 failures and 0 successes.
```

Each of these tests contain a single expectation, but they report a
total of two successes and failures. It would be confusing if testthat
didn’t report these numbers correctly. But as a helper in your package,
it’s probably not a big deal.

You might also notice that these failures generate a backtrace whereas
built-in expectations don’t. Again, it’s not a big deal because the
backtrace is correct, it’s just not needed.

These are both minor issues, so if they don’t bother you, you can save
yourself some pain by not reading this vignette 😀.

## Expectation basics

An expectation has four main parts, as illustrated by
[`expect_length()`](https://testthat.r-lib.org/dev/reference/expect_length.md):

``` r
expect_length <- function(object, n) {  
  # 1. Capture object and label
  act <- quasi_label(rlang::enquo(object))
  
  act_n <- length(act$val)
  if (act_n != n) {
    # 2. Fail if expectations are violated
    fail(c(
      sprintf("Expected %s to have length %i.", act$lab, n),
      sprintf("Actual length: %i.", act_n)
    ))
  } else {
    # 3. Pass if expectations are met
    pass()
  }
  
  # 4. Invisibly return the input value
  invisible(act$val)
}
```

The first step in any expectation is to use
[`quasi_label()`](https://testthat.r-lib.org/dev/reference/quasi_label.md)
to capture a “labeled value”, i.e., a list that contains both the value
(`$val`) for testing and a label (`$lab`) used to make failure messages
as informative as possible. This is a pattern that exists for fairly
esoteric reasons; you don’t need to understand it, just copy and paste
it.

Next you need to check each way that `object` could violate the
expectation. In this case, there’s only one check, but in more
complicated cases there can be many. Note the specific form of the
failure message: the first element describes what we expected, and then
the second line reports what we actually saw.

If the object is as expected, call
[`pass()`](https://testthat.r-lib.org/dev/reference/fail.md). This
ensures that a success will be registered in the test reporter.

Finally, return the input value (`act$val`) invisibly. This is good
practice because expectations are called primarily for their
side-effects (triggering a failure), and returning the value allows
expectations to be piped together:

``` r
test_that("mtcars is a 13 row data frame", {
  mtcars |>
    expect_type("list") |>
    expect_s3_class("data.frame") |> 
    expect_length(11)
})
#> Test passed with 3 successes 🎊.
```

### Testing your expectations

Once you’ve written your expectation, you need to test it: expectations
are functions that can have bugs, just like any other function, and it’s
really important that they generate actionable failure messages. Luckily
testthat comes with three expectations designed specifically to test
expectations:

- [`expect_success()`](https://testthat.r-lib.org/dev/reference/expect_success.md)
  checks that your expectation emits exactly one success and zero
  failures.
- [`expect_failure()`](https://testthat.r-lib.org/dev/reference/expect_success.md)
  checks that your expectation emits exactly one failure and zero
  successes.
- [`expect_snapshot_failure()`](https://testthat.r-lib.org/dev/reference/expect_success.md)
  captures the failure message in a snapshot, making it easier to review
  whether it’s useful.

The first two expectations are particularly important because they
ensure that your expectation always reports either a single success or a
single failure. If it doesn’t, the end user is going to get confusing
results in their test suite reports.

``` r
test_that("expect_length works as expected", {
  x <- 1:10
  expect_success(expect_length(x, 10))
  expect_failure(expect_length(x, 11))
})
#> Test passed with 2 successes 🌈.

test_that("expect_length gives useful feedback", {
  x <- 1:10
  expect_snapshot_failure(expect_length(x, 11))
})
#> ── Warning: expect_length gives useful feedback ───────────────────────
#> Adding new snapshot:
#> Code
#>   expect_length(x, 11)
#> Condition
#>   Error:
#>   ! Expected `x` to have length 11.
#>   Actual length: 10.
#> Test passed with 1 success 🎊.
```

## Examples

The following sections show you a few more variations, loosely based on
existing testthat expectations. These expectations were picked to show
how you can generate actionable failures in slightly more complex
situations.

### `expect_vector_length()`

Let’s make
[`expect_length()`](https://testthat.r-lib.org/dev/reference/expect_length.md)
a bit more strict by also checking that the input is a vector. R is a
bit unusual in that it gives a length to pretty much every object, and
you can imagine not wanting code like the following to succeed, because
it’s likely that the user passed the wrong object to the test.

``` r
expect_length(mean, 1)
```

To do this we’ll add an extra check that the input is either an atomic
vector or a list:

``` r
expect_vector_length <- function(object, n) {  
  act <- quasi_label(rlang::enquo(object))

  # It's non-trivial to check if an object is a vector in base R so we
  # use an rlang helper
  if (!rlang::is_vector(act$val)) {
    fail(c(
      sprintf("Expected %s to be a vector", act$lab),
      sprintf("Actual type: %s", typeof(act$val))
    ))
  } else {
    act_n <- length(act$val)
    if (act_n != n) {
      fail(c(
        sprintf("Expected %s to have length %i.", act$lab, n),
        sprintf("Actual length: %i.", act_n)
      ))
    } else {
      pass()
    }
  }

  invisible(act$val)
}
```

``` r
expect_vector_length(mean, 1)
#> Error: Expected `mean` to be a vector
#> Actual type: closure
expect_vector_length(mtcars, 15)
#> Error: Expected `mtcars` to have length 15.
#> Actual length: 11.
```

### `expect_s3_class()`

Or imagine you’re checking to see if an object inherits from an S3
class. R has a lot of different OO systems, and you want your failure
messages to be as informative as possible, so before checking that the
class matches, you probably want to check that the object is from the
correct OO family.

``` r
expect_s3_class <- function(object, class) {
  if (!rlang::is_string(class)) {
    rlang::abort("`class` must be a string.")
  }

  act <- quasi_label(rlang::enquo(object))

  if (!is.object(act$val)) {
    fail(sprintf("Expected %s to be an object.", act$lab))
  } else if (isS4(act$val)) {
    fail(c(
      sprintf("Expected %s to be an S3 object.", act$lab),
      "Actual OO type: S4"
    ))
  } else if (!inherits(act$val, class)) {
    fail(c(
      sprintf("Expected %s to inherit from %s.", act$lab, class),
      sprintf("Actual class: %s", class(act$val))
    ))
  } else {
    pass()
  }

  invisible(act$val)
}
```

``` r
x1 <- 1:10
TestClass <- methods::setClass("Test", contains = "integer")
x2 <- TestClass()
x3 <- factor()

expect_s3_class(x1, "integer")
#> Error: Expected `x1` to be an object.
expect_s3_class(x2, "integer")
#> Error: Expected `x2` to be an S3 object.
#> Actual OO type: S4
expect_s3_class(x3, "integer")
#> Error: Expected `x3` to inherit from integer.
#> Actual class: factor
expect_s3_class(x3, "factor")
```

Note the variety of error messages. We always print what was expected,
and where possible, also display what was actually received:

- When `object` isn’t an object, we can only say what we expected.
- When `object` is an S4 object, we can report that.
- When [`inherits()`](https://rdrr.io/r/base/class.html) is `FALSE`, we
  provide the actual class, since that’s most informative.

The general principle is to tailor error messages to what the user can
act on based on what you know about the input.

Also note that I check that the `class` argument is a string. If it’s
not a string, I throw an error. This is not a test failure; the user is
calling the function incorrectly. In general, you should check the type
of all arguments that affect the operation and error if they’re not what
you expect.

``` r
expect_s3_class(x1, 1)
#> Error in `expect_s3_class()`:
#> ! `class` must be a string.
```

### Optional `class`

A common pattern in testthat’s own expectations it to use arguments to
control the level of detail in the test. Here it would be nice if we
check that an object is an S3 object without checking for a specific
class. I think we could do that by renaming
[`expect_s3_class()`](https://testthat.r-lib.org/dev/reference/inheritance-expectations.md)
to `expect_s3_object()`. Now `expect_s3_object(x)` would verify that `x`
is an S3 object, and `expect_s3_object(x, class = "foo")` to verify that
`x` is an S3 object with the given class. The implementation of this is
straightforward: we also allow `class` to be `NULL` and then only verify
inheritance when non-`NULL`.

``` r
expect_s3_object <- function(object, class = NULL) {
  if (!rlang::is_string(class) && is.null(class)) {
    rlang::abort("`class` must be a string or NULL.")
  }

  act <- quasi_label(rlang::enquo(object))

  if (!is.object(act$val)) {
    fail(sprintf("Expected %s to be an object.", act$lab))
  } else if (isS4(act$val)) {
    fail(c(
      sprintf("Expected %s to be an S3 object.", act$lab),
      "Actual OO type: S4"
    ))
  } else if (!is.null(class) && !inherits(act$val, class)) {
    fail(c(
      sprintf("Expected %s to inherit from %s.", act$lab, class),
      sprintf("Actual class: %s", class(act$val))
    ))
  } else {
    pass()
  }

  invisible(act$val)
}
```

## Repeated code

As you write more expectations, you might discover repeated code that
you want to extract into a helper. Unfortunately, creating 100% correct
helper functions is not straightforward in testthat because
[`fail()`](https://testthat.r-lib.org/dev/reference/fail.md) captures
the calling environment in order to give useful tracebacks, and
testthat’s own expectations don’t expose this as an argument.
Fortunately, getting this right is not critical (you’ll just get a
slightly suboptimal traceback in the case of failure), so we don’t
recommend bothering in most cases. We document it here, however, because
it’s important to get it right in testthat itself.

The key challenge is that
[`fail()`](https://testthat.r-lib.org/dev/reference/fail.md) captures a
`trace_env`, which should be the execution environment of the
expectation. This usually works because the default value of `trace_env`
is `caller_env()`. But when you introduce a helper, you’ll need to
explicitly pass it along:

``` r
expect_length_ <- function(act, n, trace_env = caller_env()) {
  act_n <- length(act$val)
  if (act_n != n) {
    fail(
      sprintf("%s has length %i, not length %i.", act$lab, act_n, n), 
      trace_env = trace_env
    )
  } else {
    pass()
  }
}

expect_length <- function(object, n) {  
  act <- quasi_label(rlang::enquo(object))

  expect_length_(act, n)
  invisible(act$val)
}
```

A few recommendations:

- The helper shouldn’t be user-facing, so we give it a `_` suffix to
  make that clear.
- It’s typically easiest for a helper to take the labeled value produced
  by
  [`quasi_label()`](https://testthat.r-lib.org/dev/reference/quasi_label.md).
- Your helper should usually be called for its side effects (i.e. it
  calls [`fail()`](https://testthat.r-lib.org/dev/reference/fail.md) and
  [`pass()`](https://testthat.r-lib.org/dev/reference/fail.md)).
- You should return `invisible(act$val)` from the parent expecatation as
  usual.

Again, you’re probably not writing so many expectations that it makes
sense for you to go to this effort, but it is important for testthat to
get it right.
