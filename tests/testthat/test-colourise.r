context("Text colourisation")

test_that("option 'testthat.use_colours' affects 'colourise()' properly", {
          # checking for presence of escape char
          txt <- "colourised"
          op <- options( testthat.use_colours=TRUE )
          expect_true( grepl("\\\033", colourise(txt)) )
          options( testthat.use_colours=FALSE )
          expect_false( grepl("\\\033", colourise(txt)) )
          options(op)        # set original opts
} )
