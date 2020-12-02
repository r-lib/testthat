# snapshot_hint output differs in R CMD check

    Code
      cat(snapshot_hint("lala", "foo.r", check = FALSE, ci = FALSE))
    Output
      Run `testthat::snapshot_review('lala')` to review changes

---

    Code
      cat(snapshot_hint("lala", "foo.r", check = TRUE, ci = FALSE))
    Output
      * Locate check directory
      * Copy 'tests/testthat/_snaps/lala/foo.new.r' to local test directory
      * Run `testthat::snapshot_review('lala')` to review changes

---

    Code
      cat(snapshot_hint("lala", "foo.r", check = TRUE, ci = TRUE))
    Output
      * Download and unzip run artifact
      * Copy 'tests/testthat/_snaps/lala/foo.new.r' to local test directory
      * Run `testthat::snapshot_review('lala')` to review changes

