test_that("regular skip", {
  skip("regular skip")
})

test_that("skip with details", {
  skip("longer skip:\nthis is what happened")
})
