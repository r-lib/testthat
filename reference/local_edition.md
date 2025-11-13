# Temporarily change the active testthat edition

`local_edition()` allows you to temporarily (within a single test or a
single test file) change the active edition of testthat. `edition_get()`
allows you to retrieve the currently active edition.

## Usage

``` r
local_edition(x, .env = parent.frame())

edition_get()
```

## Arguments

- x:

  Edition Should be a single integer.

- .env:

  Environment that controls scope of changes. For expert use only.
