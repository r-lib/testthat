test_that("this prints and skips", {
  print(1:30)
  skip(paste("This is", Sys.getpid()))
})
