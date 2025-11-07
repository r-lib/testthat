# Temporarily redefine function definitions

`with_mocked_bindings()` and `local_mocked_bindings()` provide tools for
"mocking", temporarily redefining a function so that it behaves
differently during tests. This is helpful for testing functions that
depend on external state (i.e. reading a value from a file or a website,
or pretending a package is or isn't installed).

Learn more in
[`vignette("mocking")`](https://testthat.r-lib.org/dev/articles/mocking.md).

## Usage

``` r
local_mocked_bindings(..., .package = NULL, .env = caller_env())

with_mocked_bindings(code, ..., .package = NULL)
```

## Arguments

- ...:

  Name-value pairs providing new values (typically functions) to
  temporarily replace the named bindings.

- .package:

  The name of the package where mocked functions should be inserted.
  Generally, you should not supply this as it will be automatically
  detected when whole package tests are run or when there's one package
  under active development (i.e. loaded with
  [`pkgload::load_all()`](https://pkgload.r-lib.org/reference/load_all.html)).
  We don't recommend using this to mock functions in other packages, as
  you should not modify namespaces that you don't own.

- .env:

  Environment that defines effect scope. For expert use only.

- code:

  Code to execute with specified bindings.

## Use

There are four places that the function you are trying to mock might
come from:

- Internal to your package.

- Imported from an external package via the `NAMESPACE`.

- The base environment.

- Called from an external package with `::`.

They are described in turn below.

(To mock S3 & S4 methods and R6 classes see
[`local_mocked_s3_method()`](https://testthat.r-lib.org/dev/reference/local_mocked_s3_method.md),
[`local_mocked_s4_method()`](https://testthat.r-lib.org/dev/reference/local_mocked_s3_method.md),
and
[`local_mocked_r6_class()`](https://testthat.r-lib.org/dev/reference/local_mocked_r6_class.md).)

### Internal & imported functions

You mock internal and imported functions the same way. For example, take
this code:

    some_function <- function() {
      another_function()
    }

It doesn't matter whether `another_function()` is defined by your
package or you've imported it from a dependency with `@import` or
`@importFrom`, you mock it the same way:

    local_mocked_bindings(
      another_function = function(...) "new_value"
    )

### Base functions

To mock a function in the base package, you need to make sure that you
have a binding for this function in your package. It's easiest to do
this by binding the value to `NULL`. For example, if you wanted to mock
[`interactive()`](https://rdrr.io/r/base/interactive.html) in your
package, you'd need to include this code somewhere in your package:

    interactive <- NULL

Why is this necessary? `with_mocked_bindings()` and
`local_mocked_bindings()` work by temporarily modifying the bindings
within your package's namespace. When these tests are running inside of
`R CMD check` the namespace is locked which means it's not possible to
create new bindings so you need to make sure that the binding exists
already.

### Namespaced calls

It's trickier to mock functions in other packages that you call with
`::`. For example, take this minor variation:

    some_function <- function() {
      anotherpackage::another_function()
    }

To mock this function, you'd need to modify `another_function()` inside
the `anotherpackage` package. You *can* do this by supplying the
`.package` argument to `local_mocked_bindings()` but we don't recommend
it because it will affect all calls to
`anotherpackage::another_function()`, not just the calls originating in
your package. Instead, it's safer to either import the function into
your package, or make a wrapper that you can mock:

    some_function <- function() {
      my_wrapper()
    }
    my_wrapper <- function(...) {
      anotherpackage::another_function(...)
    }

    local_mocked_bindings(
      my_wrapper = function(...) "new_value"
    )

### Multiple return values / sequence of outputs

To mock a function that returns different values in sequence, for
instance an API call whose status would be 502 then 200, or an user
input to [`readline()`](https://rdrr.io/r/base/readline.html), you can
use
[`mock_output_sequence()`](https://testthat.r-lib.org/dev/reference/mock_output_sequence.md)

    local_mocked_bindings(readline = mock_output_sequence("3", "This is a note", "n"))

## See also

Other mocking:
[`mock_output_sequence()`](https://testthat.r-lib.org/dev/reference/mock_output_sequence.md)
