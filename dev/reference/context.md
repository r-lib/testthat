# Describe the context of a set of tests.

**\[superseded\]**

Use of `context()` is no longer recommended. Instead omit it, and
messages will use the name of the file instead. This ensures that the
context and test file name are always in sync.

A context defines a set of tests that test related functionality.
Usually you will have one context per file, but you may have multiple
contexts in a single file if you so choose.

## Usage

``` r
context(desc)
```

## Arguments

- desc:

  description of context. Should start with a capital letter.

## 3rd edition

**\[deprecated\]**

`context()` is deprecated in the third edition, and the equivalent
information is instead recorded by the test file name.

## Examples

``` r
context("String processing")
#> Warning: `context()` was deprecated in the 3rd edition.
context("Remote procedure calls")
#> Warning: `context()` was deprecated in the 3rd edition.
```
