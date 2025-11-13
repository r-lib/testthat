# Watch a directory for changes (additions, deletions & modifications).

This is used to power the
[`auto_test()`](https://testthat.r-lib.org/reference/auto_test.md) and
[`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
functions which are used to rerun tests whenever source code changes.

## Usage

``` r
watch(path, callback, pattern = NULL, hash = TRUE)
```

## Arguments

- path:

  character vector of paths to watch. Omit trailing backslash.

- callback:

  function called every time a change occurs. It should have three
  parameters: added, deleted, modified, and should return `TRUE` to keep
  watching, or `FALSE` to stop.

- pattern:

  file pattern passed to
  [`dir()`](https://rdrr.io/r/base/list.files.html)

- hash:

  hashes are more accurate at detecting changes, but are slower for
  large files. When `FALSE`, uses modification time stamps

## Details

Use Ctrl + break (windows), Esc (mac gui) or Ctrl + C (command line) to
stop the watcher.
