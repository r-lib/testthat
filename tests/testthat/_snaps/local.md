# can force cli to display RStudio style hyperlinks

    Code
      str(cli::ansi_hyperlink_types())
    Output
      List of 4
       $ href    : logi FALSE
       $ run     : logi FALSE
       $ help    : logi FALSE
       $ vignette: logi FALSE

---

    Code
      str(cli::ansi_hyperlink_types())
    Output
      List of 4
       $ href    : logi TRUE
       $ run     : logi TRUE
        ..- attr(*, "type")= chr "rstudio"
       $ help    : logi TRUE
        ..- attr(*, "type")= chr "rstudio"
       $ vignette: logi TRUE
        ..- attr(*, "type")= chr "rstudio"

