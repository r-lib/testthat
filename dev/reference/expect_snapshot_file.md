# Do you expect this code to create the same file as last time?

Whole file snapshot testing is designed for testing objects that don't
have a convenient textual representation, with initial support for
images (`.png`, `.jpg`, `.svg`), data frames (`.csv`), and text files
(`.R`, `.txt`, `.json`, ...).

The first time `expect_snapshot_file()` is run, it will create
`_snaps/{test}/{name}.{ext}` containing reference output. Future runs
will be compared to this reference: if different, the test will fail and
the new results will be saved in `_snaps/{test}/{name}.new.{ext}`. To
review failures, call
[`snapshot_review()`](https://testthat.r-lib.org/dev/reference/snapshot_accept.md).

We generally expect this function to be used via a wrapper that takes
care of ensuring that output is as reproducible as possible, e.g.
automatically skipping tests where it's known that images can't be
reproduced exactly.

## Usage

``` r
expect_snapshot_file(
  path,
  name = basename(path),
  binary = deprecated(),
  cran = FALSE,
  compare = NULL,
  transform = NULL,
  variant = NULL
)

announce_snapshot_file(path, name = basename(path))

compare_file_binary(old, new)

compare_file_text(old, new)
```

## Arguments

- path:

  Path to file to snapshot. Optional for `announce_snapshot_file()` if
  `name` is supplied.

- name:

  Snapshot name, taken from `path` by default.

- binary:

  **\[deprecated\]** Please use the `compare` argument instead.

- cran:

  Should these expectations be verified on CRAN? By default, they are
  not, because snapshot tests tend to be fragile because they often rely
  on minor details of dependencies.

- compare:

  A function used to compare the snapshot files. It should take two
  inputs, the paths to the `old` and `new` snapshot, and return either
  `TRUE` or `FALSE`. This defaults to `compare_file_text` if `name` has
  extension `.r`, `.R`, `.Rmd`, `.md`, or `.txt`, and otherwise uses
  `compare_file_binary`.

  `compare_file_binary()` compares byte-by-byte and
  `compare_file_text()` compares lines-by-line, ignoring the difference
  between Windows and Mac/Linux line endings.

- transform:

  Optionally, a function to scrub sensitive or stochastic text from the
  output. Should take a character vector of lines as input and return a
  modified character vector as output.

- variant:

  If not-`NULL`, results will be saved in
  `_snaps/{variant}/{test}/{name}`. This allows you to create different
  snapshots for different scenarios, like different operating systems or
  different R versions.

  Note that there's no way to declare all possible variants up front
  which means that as soon as you start using variants, you are
  responsible for deleting snapshot variants that are no longer used.
  (testthat will still delete all variants if you delete the test.)

- old, new:

  Paths to old and new snapshot files.

## Announcing snapshots

testthat automatically detects dangling snapshots that have been written
to the `_snaps` directory but which no longer have corresponding R code
to generate them. These dangling files are automatically deleted so they
don't clutter the snapshot directory.

This can cause problems if your test is conditionally executed, either
because of an `if` statement or a
[`skip()`](https://testthat.r-lib.org/dev/reference/skip.md). To avoid
files being deleted in this case, you can call
`announce_snapshot_file()` before the conditional code.

    test_that("can save a file", {
      if (!can_save()) {
        announce_snapshot_file(name = "data.txt")
        skip("Can't save file")
      }
      path <- withr::local_tempfile()
      expect_snapshot_file(save_file(path, mydata()), "data.txt")
    })

## Examples

``` r
# To use expect_snapshot_file() you'll typically need to start by writing
# a helper function that creates a file from your code, returning a path
save_png <- function(code, width = 400, height = 400) {
  path <- tempfile(fileext = ".png")
  png(path, width = width, height = height)
  on.exit(dev.off())
  code

  path
}
path <- save_png(plot(1:5))
path
#> [1] "/tmp/Rtmp8o1IVK/file1be142970e50.png"

if (FALSE) { # \dontrun{
expect_snapshot_file(save_png(hist(mtcars$mpg)), "plot.png")
} # }

# You'd then also provide a helper that skips tests where you can't
# be sure of producing exactly the same output.
expect_snapshot_plot <- function(name, code) {
  # Announce the file before touching skips or running `code`. This way,
  # if the skips are active, testthat will not auto-delete the corresponding
  # snapshot file.
  name <- paste0(name, ".png")
  announce_snapshot_file(name = name)

  # Other packages might affect results
  skip_if_not_installed("ggplot2", "2.0.0")
  # Or maybe the output is different on some operating systems
  skip_on_os("windows")
  # You'll need to carefully think about and experiment with these skips

  path <- save_png(code)
  expect_snapshot_file(path, name)
}
```
