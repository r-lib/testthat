# Generate default testing environment.

We use a new environment which inherits from
[`globalenv()`](https://rdrr.io/r/base/environment.html) or a package
namespace. In an ideal world, we'd avoid putting the global environment
on the search path for tests, but it's not currently possible without
losing the ability to load packages in tests.

## Usage

``` r
test_env(package = NULL)
```
