test_that("attaching foobarbaz skips because in Suggests", {
  library("foobarbaz")
})

test_that("attaching quux fails because not in Suggests", {
  library("quux")
})
