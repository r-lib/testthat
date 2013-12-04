context("Compare")

test_that("Equal strings with different attributes are not equal", {

  expect_false(compare(structure("text", y = "foo"), "text")$equal)

})
