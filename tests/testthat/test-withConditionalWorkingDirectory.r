##------------------------------------------------------------------------------
context("Conditional working directory/bare")
##------------------------------------------------------------------------------

## NOTE //
## Assuming that this is executed "stand-alone"
## (i.e. NOT via testthat::test())

expect_false(file.exists("test_dir/helper_hello.r"))

withConditionalWorkingDirectory(
  expect_true(file.exists("test_dir/helper_hello.r"))
)

##------------------------------------------------------------------------------
context("Conditional working directory/inner")
##------------------------------------------------------------------------------

test_that("inner call to `conditionalWorkingDirectory()`", {
  expect_false(file.exists("test_dir/helper_hello.r"))
})
test_that_suggested("inner call to `conditionalWorkingDirectory()`", {
  expect_true(file.exists("test_dir/helper_hello.r"))
})
