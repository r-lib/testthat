# Download snapshots from GitHub

If your snapshots fail on GitHub, it can be a pain to figure out exactly
why, or to incorporate them into your local package. This function makes
it easy, only requiring you to interactively select which job you want
to take the artifacts from.

Note that you should not generally need to use this function manually;
instead copy and paste from the hint emitted on GitHub. This hint is
only emitted when running in a job named "R-CMD-check", since that's
where the testthat artifact is typically uploaded.

## Usage

``` r
snapshot_download_gh(repository, run_id, dest_dir = ".")
```

## Arguments

- repository:

  Repository owner/name, e.g. `"r-lib/testthat"`.

- run_id:

  Run ID, e.g. `"47905180716"`. You can find this in the action url.

- dest_dir:

  Package root directory. Defaults to the current directory.
