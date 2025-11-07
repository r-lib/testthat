# Test fixtures

## Test hygiene

> Take nothing but memories, leave nothing but footprints.
>
> ― Chief Si’ahl

Ideally, a test should leave the world exactly as it found it. But you
often need to make changes to exercise every part of your code:

- Create a file or directory
- Create a resource on an external system
- Set an R option
- Set an environment variable
- Change working directory
- Change an aspect of the tested package’s state

How can you clean up these changes to get back to a clean slate?
Scrupulous attention to cleanup is more than just courtesy or being
fastidious. It’s also self-serving. The state of the world after test
`i` is the starting state for test `i + 1`. Tests that change state
willy-nilly eventually end up interfering with each other in ways that
can be very difficult to debug.

Most tests are written with an implicit assumption about the starting
state, usually whatever *tabula rasa* means for the target domain of
your package. If you accumulate enough sloppy tests, you will eventually
find yourself asking the programming equivalent of questions like “Who
forgot to turn off the oven?” and “Who didn’t clean up after the dog?”
(If you’ve got yourself into this state, testthat provides another tool
to help you figure out exactly which test is to blame:
[`set_state_inspector()`](https://testthat.r-lib.org/dev/reference/set_state_inspector.md).)

It’s also important that your setup and cleanup are easy to use when
working interactively. When a test fails, you want to be able to quickly
recreate the exact environment in which the test is run so you can
interactively experiment to figure out what went wrong.

This article introduces a powerful technique that allows you to solve
both problems: **test fixtures**. We’ll begin by discussing some canned
tools, then learn about the underlying theory, discuss exactly what a
test fixture is, and finish with a few examples.

``` r
library(testthat)
```

## `local_` helpers

We’ll begin by giving you the minimal knowledge needed to change global
state *just* within your test. The withr package provides a number of
functions that temporarily change the state of the world, carefully
undoing the changes when the current function or test finishes:

| Do / undo this              | withr function     |
|-----------------------------|--------------------|
| Create a file               | `local_tempfile()` |
| Create a directory          | `local_tempdir()`  |
| Set an R option             | `local_options()`  |
| Set an environment variable | `local_envvar()`   |
| Change working directory    | `local_dir()`      |

(You can see a full list at <https://withr.r-lib.org/> but these five
are by far the most commonly used.)

These allow you to control options that would otherwise be painful. For
example, imagine you’re testing base R code that rounds numbers to a
fixed number of places when printing. You could write code like this:

``` r
test_that("print() respects digits option", {
  x <- 1.23456789

  withr::local_options(digits = 1)
  expect_equal(capture.output(x), "[1] 1")

  withr::local_options(digits = 5)
  expect_equal(capture.output(x), "[1] 1.2346")
})
#> Test passed with 2 successes 🥇.
```

If you write a lot of code like this in your tests, you might decide you
want a helper function or **test fixture** that reduces the duplication.
Fortunately withr’s local functions allow us to solve this problem by
providing an `.local_envir` or `envir` argument that controls when
cleanup occurs. The exact details of how this works are rather
complicated, but fortunately there’s a common pattern you can use
without understanding all the details. Your helper function should
always have an `env` argument that defaults to
[`parent.frame()`](https://rdrr.io/r/base/sys.parent.html), which you
pass to the `.local_envir` argument of `local_()`:

``` r
local_digits <- function(sig_digits, env = parent.frame()) {
  withr::local_options(digits = sig_digits, .local_envir = env)

  # mark that this function is called for its side-effects not its return value
  invisible() 
}
```

## Foundations

Before we go further, let’s lay some foundations to help you understand
how `local_` functions work. We’ll motivate the discussion with a
`sloppy()` function that prints a number with a specific number of
significant digits by adjusting an R option:

``` r
sloppy <- function(x, sig_digits) {
  options(digits = sig_digits)
  print(x)
}

pi
#> [1] 3.141593
sloppy(pi, 2)
#> [1] 3.1
pi
#> [1] 3.1
```

Notice how `pi` prints differently before and after the call to
`sloppy()`. Calling `sloppy()` has a side effect: it changes the
`digits` option globally, not just within its own scope. This is what we
want to avoid[¹](#fn1).

### `on.exit()`

The first function you need to know about is base R’s
[`on.exit()`](https://rdrr.io/r/base/on.exit.html).
[`on.exit()`](https://rdrr.io/r/base/on.exit.html) calls the code
supplied to its first argument when the current function exits,
regardless of whether it returns a value or throws an error. You can use
[`on.exit()`](https://rdrr.io/r/base/on.exit.html) to clean up after
yourself by ensuring that every mess-making function call is paired with
an [`on.exit()`](https://rdrr.io/r/base/on.exit.html) call that cleans
up.

We can use this idea to turn `sloppy()` into `neat()`:

``` r
neat <- function(x, sig_digits) {
  op <- options(digits = sig_digits)
  on.exit(options(op), add = TRUE, after = FALSE)
  print(x)
}

pi
#> [1] 3.141593
neat(pi, 2)
#> [1] 3.1
pi
#> [1] 3.141593
```

Here we make use of a useful pattern that
[`options()`](https://rdrr.io/r/base/options.html) implements: when you
call `options(digits = sig_digits)`, it both sets the `digits` option
*and* (invisibly) returns the previous value of digits. We can then use
that value to restore the previous options.

[`on.exit()`](https://rdrr.io/r/base/on.exit.html) also works in tests:

``` r
test_that("can print one digit of pi", {
  op <- options(digits = 1)
  on.exit(options(op), add = TRUE, after = FALSE)
  
  expect_output(print(pi), "3")
})
#> Test passed with 1 success 🎊.
pi
#> [1] 3.141593
```

There are three main drawbacks to
[`on.exit()`](https://rdrr.io/r/base/on.exit.html):

- You should always call it with `add = TRUE` and `after = FALSE`. These
  ensure that the call is **added** to the list of deferred tasks
  (instead of replacing them) and is added to the **front** of the stack
  (not the back), so that cleanup occurs in reverse order to setup.
  These arguments only matter if you’re using multiple
  [`on.exit()`](https://rdrr.io/r/base/on.exit.html) calls, but it’s a
  good habit to always use them to avoid potential problems down the
  road.

- It doesn’t work outside a function or test. If you run the following
  code in the global environment, you won’t get an error, but the
  cleanup code will never be run:

  ``` r
  op <- options(digits = 1)
  on.exit(options(op), add = TRUE, after = FALSE)
  ```

  This is annoying when you are running tests interactively.

- You can’t program with it;
  [`on.exit()`](https://rdrr.io/r/base/on.exit.html) always works inside
  the *current* function, so you can’t wrap up repeated
  [`on.exit()`](https://rdrr.io/r/base/on.exit.html) code in a helper
  function.

To resolve these drawbacks, we use
[`withr::defer()`](https://withr.r-lib.org/reference/defer.html).

### `withr::defer()`

[`withr::defer()`](https://withr.r-lib.org/reference/defer.html)
resolves the main drawbacks of
[`on.exit()`](https://rdrr.io/r/base/on.exit.html). First, it has the
behavior we want by default; no extra arguments needed:

``` r
neat <- function(x, sig_digits) {
  op <- options(digits = sig_digits)
  withr::defer(options(op))
  print(x)
}
```

Second, it works when called in the global environment. Since the global
environment isn’t perishable, like a test environment is, you have to
call `deferred_run()` explicitly to execute the deferred events. You can
also clear them, without running, with `deferred_clear()`.

``` r
withr::defer(print("hi"))
#> Setting deferred event(s) on global environment.
#>   * Execute (and clear) with `deferred_run()`.
#>   * Clear (without executing) with `deferred_clear()`.

withr::deferred_run()
#> [1] "hi"
```

Finally,
[`withr::defer()`](https://withr.r-lib.org/reference/defer.html) lets
you pick which function to bind the cleanup behavior to. This makes it
possible to create helper functions.

### “Local” helpers

Imagine we have many functions where we want to temporarily set the
digits option. Wouldn’t it be nice if we could write a helper function
to automate this? Unfortunately, we can’t write a helper with
[`on.exit()`](https://rdrr.io/r/base/on.exit.html):

``` r
local_digits <- function(sig_digits) {
  op <- options(digits = sig_digits)
  on.exit(options(op), add = TRUE, after = FALSE)
}
neater <- function(x, sig_digits) {
  local_digits(1)
  print(x)
}
neater(pi)
#> [1] 3.141593
```

This code doesn’t work because the cleanup happens too soon, when
`local_digits()` exits, not when `neater()` finishes.

Fortunately,
[`withr::defer()`](https://withr.r-lib.org/reference/defer.html) allows
us to solve this problem by providing an `envir` argument that allows
you to control when cleanup occurs. The exact details of how this works
are rather complicated, but fortunately there’s a common pattern you can
use without understanding all the details. Your helper function should
always have an `env` argument that defaults to
[`parent.frame()`](https://rdrr.io/r/base/sys.parent.html), which you
pass to the second argument of `defer()`:

``` r
local_digits <- function(sig_digits, env = parent.frame()) {
  op <- options(digits = sig_digits)
  withr::defer(options(op), env)
}

neater(pi)
#> [1] 3
```

Just like [`on.exit()`](https://rdrr.io/r/base/on.exit.html) and
`defer()`, our helper also works within tests:

``` r
test_that("withr lets us write custom helpers for local state manipulation", {
  local_digits(1)
  expect_output(print(exp(1)), "3")
  
  local_digits(3)
  expect_output(print(exp(1)), "2.72")
})
#> Test passed with 2 successes 🌈.

print(exp(1))
#> [1] 2.718282
```

We always call these helper functions `local_*`; “local” here refers to
the fact that the state change persists only locally, for the lifetime
of the associated function or test. Another reason we call them “local”
is that you can also use the
[`local()`](https://rdrr.io/r/base/eval.html) function if you want to
scope their effect to a smaller part of the test:

``` r
test_that("local_options() only affects a minimal amount of code", {
  withr::local_options(x = 1)
  expect_equal(getOption("x"), 1)

  local({
    withr::local_options(x = 2)
    expect_equal(getOption("x"), 2)
  })

  expect_equal(getOption("x"), 1)
})
#> Test passed with 3 successes 🎊.

getOption("x")
#> NULL
```

## Test fixtures

Testing is often demonstrated with cute little tests and functions where
all the inputs and expected results can be inlined. But in real
packages, things aren’t always so simple, and functions often depend on
global state. For example, take this variant on
[`message()`](https://rdrr.io/r/base/message.html) that only shows a
message if the `verbose` option is `TRUE`. How would you test that
setting the option does indeed silence the message?

``` r
message2 <- function(...) {
  if (!isTRUE(getOption("verbose"))) {
    return()
  }
  message(...)
}
```

In some cases, it’s possible to make the global state an explicit
argument to the function. For example, we could refactor `message2()` to
make the verbosity an explicit argument:

``` r
message3 <- function(..., verbose = getOption("verbose")) {
  if (!isTRUE(verbose)) {
    return()
  }
  message(...)
}
```

Making external state explicit is often worthwhile because it makes
clearer exactly what inputs determine the outputs of your function. But
it’s simply not possible in many cases. That’s where test fixtures come
in: they allow you to temporarily change global state to test your
function. Test fixture is a pre-existing term in the software
engineering world (and beyond):

> A test fixture is something used to consistently test some item,
> device, or piece of software.
>
> — [Wikipedia](https://en.wikipedia.org/wiki/Test_fixture)

A **test fixture** is just a `local_*` function that you use to change
state in such a way that you can reach inside and test parts of your
code that would otherwise be challenging. For example, here’s how you
could use
[`withr::local_options()`](https://withr.r-lib.org/reference/with_options.html)
as a test fixture to test `message2()`:

``` r
test_that("message2() output depends on verbose option", {
  withr::local_options(verbose = TRUE)
  expect_message(message2("Hi!"))
  
  withr::local_options(verbose = FALSE)
  expect_message(message2("Hi!"), NA)
})
#> now dyn.load("/home/runner/work/_temp/Library/glue/libs/glue.so") ...
#> now dyn.load("/home/runner/work/_temp/Library/vctrs/libs/vctrs.so") ...
#> Test passed with 2 successes 🥇.
```

### Case study: usethis

One place that we use test fixtures extensively is in the usethis
package ([usethis.r-lib.org](https://usethis.r-lib.org)), which provides
functions for looking after the files and folders in R projects,
especially packages. Many of these functions only make sense in the
context of a package, which means to test them, we also have to be
working inside an R package. We need a way to quickly spin up a minimal
package in a temporary directory, then test some functions against it,
then destroy it.

To solve this problem we create a test fixture, which we place in
`R/test-helpers.R` so that it’s available for both testing and
interactive experimentation:

``` r
local_create_package <- function(dir = file_temp(), env = parent.frame()) {
  old_project <- proj_get_()
  
  # create new folder and package
  create_package(dir, open = FALSE) # A
  withr::defer(fs::dir_delete(dir), envir = env) # -A
  
  # change working directory
  withr::local_dir(dir, .local_envir = env) # B + -B
  
  # switch to new usethis project
  proj_set(dir) # C
  withr::defer(proj_set(old_project, force = TRUE), envir = env) # -C
  
  dir
}
```

Note that the cleanup automatically unfolds in the opposite order from
the setup. Setup is `A`, then `B`, then `C`; cleanup is `-C`, then `-B`,
then `-A`. This is important because we must create directory `dir`
before we can make it the working directory, and we must restore the
original working directory before we can delete `dir`—we can’t delete
`dir` while it’s still the working directory!

`local_create_package()` is used in over 170 tests. Here’s one example
that checks that
[`usethis::use_roxygen_md()`](https://usethis.r-lib.org/reference/use_roxygen_md.html)
does the setup necessary to use roxygen2 in a package, with markdown
support turned on. All 3 expectations consult the DESCRIPTION file,
directly or indirectly. So it’s very convenient that
`local_create_package()` creates a minimal package, with a valid
`DESCRIPTION` file, for us to test against. And when the test is done —
poof! — the package is gone.

``` r
test_that("use_roxygen_md() adds DESCRIPTION fields", {
  pkg <- local_create_package()
  use_roxygen_md()
  
  expect_true(uses_roxygen_md())
  expect_equal(desc::desc_get("Roxygen", pkg)[[1]], "list(markdown = TRUE)")
  expect_true(desc::desc_has_fields("RoxygenNote", pkg))
})
```

## Scope

So far we have applied our test fixture to individual tests, but it’s
also possible to apply them to a file or package.

### File

If you move the `local_*()` call outside of a
[`test_that()`](https://testthat.r-lib.org/dev/reference/test_that.md)
block, it will affect all tests that come after it. This means that by
calling the test fixture at the top of the file, you can change the
behavior for all tests. This has both advantages and disadvantages:

- If you would otherwise have called the fixture in every test, you’ve
  saved yourself a bunch of work and duplicate code.

- On the downside, if your test fails and you want to recreate the
  failure in an interactive environment so you can debug, you need to
  remember to run all the setup code at the top of the file first.

Generally, I think it’s better to copy and paste test fixtures across
many tests — sure, it adds some duplication to your code, but it makes
debugging test failures so much easier.

### Package

To run code before any test is run, you can create a file called
`tests/testthat/setup.R`. If the code in this file needs clean up, you
can use the special
[`teardown_env()`](https://testthat.r-lib.org/dev/reference/teardown_env.md):

``` r
# Run before any test
write.csv(mtcars, "mtcars.csv")

# Run after all tests
withr::defer(unlink("mtcars.csv"), teardown_env())
```

Setup code is typically best used to create external resources that are
needed by many tests. It’s best kept to a minimum because you will have
to manually run it before interactively debugging tests.

## Other challenges

A collection of miscellaneous problems that don’t fit elsewhere:

- There are a few base functions that are hard to test because they
  depend on state that you can’t control. One such example is
  [`interactive()`](https://rdrr.io/r/base/interactive.html): there’s no
  way to write a test fixture that allows you to pretend that
  interactive is either `TRUE` or `FALSE`. So we now usually use
  [`rlang::is_interactive()`](https://rlang.r-lib.org/reference/is_interactive.html),
  which can be controlled by the `rlang_interactive` option.

- If you’re using a test fixture in a function, be careful about what
  you return. For example, if you write a function that does
  `dir <- create_local_package()`, you shouldn’t return `dir`, because
  after the function returns, the directory will no longer exist.

------------------------------------------------------------------------

1.  Don’t worry, I’m restoring global state (specifically, the `digits`
    option) behind the scenes here.
