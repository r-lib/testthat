context("Line Numbers")

test_that("line numbers are found and given to reporters", {  
    ## a reporter that keeps its results
  GreedyReporter <- setRefClass("GreedyReporter", contains = "Reporter",
      where = environment(), 
      fields = list(results = "list"),
      methods = list(
          add_result = function(result) {
              results[[length(results) + 1]] <<- result
         }
    ))
  
  # get the results supplied to the reporter by expectations
  .test_code <- function(code, reporter = GreedyReporter$new(),
                        path = tempfile(fileext = ".R")) {
    code <- sub("^\\n", '', code) # strip first empty line if any
    writeLines(code, path)
    on.exit(unlink(path))
    
    test_file(path, reporter)$results
  }
    
  .line_numbers  <- function(results) {
    vapply(results, function(x) x$srcref[1], 1L)
  }
  
  dir <- tempfile() 
  dir.create(dir)
  old_wd <- setwd(dir)
  on.exit({unlink(dir, recursive = TRUE); setwd(old_wd)})
  
  ### ==== EDGE CASES ====
  
  # test file with errors, e.g. unknown function
  expect_error(.test_code('expect_toto()'), regexp = 'Error')
  
  # no errors are thrown inside test_that: test_that swallows errors
  code <- "
    test_that('simple', {      # line1
      expect_toto(FALSE)       # line2
    })
  "
  res1 <- .test_code(code)[[1]]
  expect_true(res1$error && is.null(res1$srcref))
  
  #  unparsable test file
  expect_error(.test_code( 'bla)('))
  
  # no tests
  res <- .test_code('1 + 1')
  expect_true(length(res) == 0)
  
  # test_that with no tests
  res <- .test_code('test_that("void", 1+1)')
  expect_true(length(res) == 0)
  
  # test without a test_that
  res <- .test_code('expect_true(FALSE)')
  expect_equal(.line_numbers(res),  1)
  
  ### ==== NORMAL CASES ====
  
  # simple
  code  <- "
  	context('testing testFile')    # line1
      test_that('simple', {			   # line2
      expect_true(FALSE)		       # line3
    })								             # line4
  "
  res <-  .test_code(code)
  expect_equal(.line_numbers(res), 3)
  
  # in suppressMessages()
  code  <- "
		test_that('simple', {			             # line1
    	suppressMessages(expect_true(FALSE)) # line2
    })								
  "
  res <- .test_code(code)
  expect_equal(.line_numbers(res), 2)
  
  #  the expect_true is not called
  code  <- "
    test_that('simple', {							# line1
    	if (1 == 2) expect_true(TRUE)		# line2
    })								
  "
  res <- .test_code(code)
  expect_true(length(res) == 0)
  
  # in a loop
  code  <- "
    test_that('simple', {					     # line1
    	for(i in 1:4) expect_true(TRUE)	 # line2
    })								
    "
  res <- .test_code(code)
  expect_equal(.line_numbers(res) , rep(2,4) )
  
  # use case
  code  <- "
    context('testing testFile')    	# line1
    test_that('simple', {				    # line2
    	expect_true(FALSE)			    	# line3
    })									            # line4
                                    # line5
    test_that('more complex', {     # line 6
    	expect_true(TRUE)					    # line 7
    	expect_equal('toto', 'titi') 	# line 8
    	for(i in 1:4) {						    # line 9
    		expect_equal(i%%2,0)			  # line 10
    }})
  "
  res <-  .test_code(code)
  expect_equal(.line_numbers(res), c(3,7,8,10,10,10,10))
  
  # test when options(keep.source=FALSE)
  code  <- "
    context('testing testFile')		# line1
    test_that('simple', {					# line2
    	expect_true(FALSE)		    	# line3
    })														# line4
  "
  res <- .test_code(code)
  expect_equal(.line_numbers(res), 3)
})
