context('failures')

test_that('just one failure', {
  expect_true(FALSE)    
})

test_that('one failure on two', {
  expect_false(FALSE) 
  expect_true(FALSE)    
})

test_that('no failure', {
  expect_false(FALSE) 
  expect_true(TRUE)    
})
