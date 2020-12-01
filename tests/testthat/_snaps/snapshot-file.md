# snapshot_hint output differs in R CMD check

    Code
      cat(snapshot_hint("lala", check = FALSE, ci = FALSE))
    Output
      Run `testthat::snapshot_review('lala')` to review changes

---

    Code
      cat(snapshot_hint("lala", check = TRUE, ci = FALSE))
    Output
      * Locate check directory
      * Copy 'new' snapshot to local test directory
      * Run `testthat::snapshot_review('lala')` to review changes

---

    Code
      cat(snapshot_hint("lala", check = TRUE, ci = TRUE))
    Output
      * Download run artifact to retrieve snapshot differences
      * Copy 'new' snapshot to local test directory
      * Run `testthat::snapshot_review('lala')` to review changes

