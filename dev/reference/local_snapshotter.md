# Instantiate local snapshotting context

Needed if you want to run snapshot tests outside of the usual testthat
framework For expert use only.

## Usage

``` r
local_snapshotter(
  snap_dir = "_snaps",
  reporter = SnapshotReporter,
  cleanup = FALSE,
  desc = NULL,
  fail_on_new = NULL,
  frame = caller_env()
)
```
