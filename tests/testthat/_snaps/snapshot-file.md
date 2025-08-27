# expect_snapshot_file finds duplicate snapshot files

    Code
      expect_snapshot_file(write_tmp_lines(r_version()), "version.txt", variant = r_version())
    Condition
      Error in `expect_snapshot_file()`:
      ! Snapshot file names must be unique. `name` has already been used.

# warns on first creation

    Code
      out <- snapshot_file_equal_(path)
    Condition
      Warning:
      Adding new file snapshot: 'tests/testthat/_snaps/my-test/test.txt'

---

    Code
      snapshot_file_equal_("doesnt-exist.txt")
    Condition
      Error in `snapshot_file_equal_()`:
      ! 'doesnt-exist.txt' not found.

# generates informative hint

    Code
      base::writeLines(snapshot_review_hint("lala", "foo.R", reset_output = FALSE))
    Output
      * Run `testthat::snapshot_review('lala/foo.R')` to review the change.

---

    Code
      base::writeLines(snapshot_review_hint("lala", "foo.R", is_text = TRUE,
        reset_output = FALSE))
    Output
      * Run `testthat::snapshot_accept('lala/foo.R')` to accept the change.
      * Run `testthat::snapshot_review('lala/foo.R')` to review the change.

# expect_snapshot_file validates its inputs

    Code
      expect_snapshot_file(123, "test.txt")
    Condition
      Error in `expect_snapshot_file()`:
      ! `path` must be a single string, not the number 123.
    Code
      expect_snapshot_file("test.txt", 123)
    Condition
      Error in `expect_snapshot_file()`:
      ! `name` must be a single string, not the number 123.
    Code
      expect_snapshot_file("test.txt", "test.txt", cran = "yes")
    Condition
      Error in `expect_snapshot_file()`:
      ! `cran` must be `TRUE` or `FALSE`, not the string "yes".

