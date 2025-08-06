# warns on first creation

    Code
      out <- snapshot_file_equal(tempdir(), "test.txt", NULL, path)
    Condition
      Warning:
      Adding new file snapshot: 'tests/testthat/_snaps/test.txt'

---

    Code
      expect_true(snapshot_file_equal(tempdir(), "test.txt", NULL, "doesnt-exist.txt"))
    Condition
      Error in `snapshot_file_equal()`:
      ! `doesnt-exist.txt` not found

# snapshot_hint output differs in R CMD check

    Code
      cat(snapshot_review_hint("lala", "foo.r", check = FALSE, ci = FALSE))
    Output
      Run `testthat::snapshot_review('lala/')` to review changes

---

    Code
      cat(snapshot_review_hint("lala", "foo.r", check = TRUE, ci = FALSE))
    Output
      * Locate check directory
      * Copy 'tests/testthat/_snaps/lala/foo.new.r' to local test directory
      * Run `testthat::snapshot_review('lala/')` to review changes

---

    Code
      cat(snapshot_review_hint("lala", "foo.r", check = TRUE, ci = TRUE))
    Output
      * Download and unzip run artifact
      * Copy 'tests/testthat/_snaps/lala/foo.new.r' to local test directory
      * Run `testthat::snapshot_review('lala/')` to review changes

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

