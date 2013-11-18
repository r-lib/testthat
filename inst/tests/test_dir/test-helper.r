# test that the companion helper script is sourced by test_dir 
context('helper')

test_that('helper test', {
  expect_equal(hello(), 'Hello World')    
})

