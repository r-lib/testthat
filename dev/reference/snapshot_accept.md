# Accept or reject modified snapshots

- `snapshot_accept()` accepts all modified snapshots.

- `snapshot_reject()` rejects all modified snapshots by deleting the
  `.new` variants.

- `snapshot_review()` opens a Shiny app that shows a visual diff of each
  modified snapshot. This is particularly useful for whole file
  snapshots created by
  [`expect_snapshot_file()`](https://testthat.r-lib.org/dev/reference/expect_snapshot_file.md).

## Usage

``` r
snapshot_accept(files = NULL, path = "tests/testthat")

snapshot_reject(files = NULL, path = "tests/testthat")

snapshot_review(files = NULL, path = "tests/testthat", ...)
```

## Arguments

- files:

  Optionally, filter effects to snapshots from specified files. This can
  be a snapshot name (e.g. `foo` or `foo.md`), a snapshot file name
  (e.g. `testfile/foo.txt`), or a snapshot file directory (e.g.
  `testfile/`).

- path:

  Path to tests.

- ...:

  Additional arguments passed on to
  [`shiny::runApp()`](https://rdrr.io/pkg/shiny/man/runApp.html).
