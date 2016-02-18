context("Catch")

test_that("A sample package with 'use_catch' can be built", {

  skip_on_cran()
  if (is.na(Sys.getenv("TRAVIS", unset = NA)))
    skip("only on travis")

  quietly <- function(expr) {
    suppressMessages(capture.output(result <- expr))
    result
  }

  if (!requireNamespace("devtools", quietly = TRUE))
    skip("'devtools' not available")

  owd <- setwd(tempdir())
  on.exit(setwd(owd), add = TRUE)

  pkgName <- "testthatclient"
  pkgPath <- normalizePath(file.path(tempdir(), pkgName))
  libPath <- normalizePath(file.path(tempdir(), "rlib"))
  if (!dir.exists(libPath))
    dir.create(libPath)
  .libPaths(c(libPath, .libPaths()))

  on.exit({
    unlink(pkgPath, recursive = TRUE)
    unlink(libPath, recursive = TRUE)
  }, add = TRUE)

  quietly(devtools::create(pkgPath))
  quietly(use_catch(pkgPath))

  cat("LinkingTo: testthat",
      file = file.path(pkgPath, "DESCRIPTION"),
      append = TRUE,
      sep = "\n")

  cat(
    sprintf("useDynLib(%s)", pkgName),
    file = file.path(pkgPath, "NAMESPACE"),
    append = TRUE,
    sep = "\n"
  )

  quietly(devtools::install(pkgPath, quick = TRUE, quiet = TRUE))

  library(pkgName, character.only = TRUE)
  expect_true(quietly(.Call("run_testthat_tests", PACKAGE = "testthatclient")))

  devtools::unload(pkgName)
})
