## produces consistent output

    1: tests.R#12: fail()
    2: expect-that.R#54: expect(FALSE, message, info = info)
    
    1: tests.R#16: f()
    2: tests.R#15: fail()
    3: expect-that.R#54: expect(FALSE, message, info = info)
    
    1: tests.R#19: expect_true(FALSE)
    2: expect-logical.R#34: expect(identical(as.vector(act$val), TRUE), sprintf("%
    
    1: tests.R#24: expect_equal(i, 2)
    2: expect-equality.R#57: expect(comp$equal, sprintf("%s not equal to %s.\n%s",
    
    1: tests.R#33: stop("stop")
    
    1: tests.R#47: f()
    2: tests.R#38: g()
    3: tests.R#41: h()
    4: tests.R#44: stop("!")
    
     1: tests.R#56: f(25)
     2: tests.R#54: f(x - 1)
     3: tests.R#54: f(x - 1)
     4: tests.R#54: f(x - 1)
     5: tests.R#54: f(x - 1)
     6: tests.R#54: f(x - 1)
     7: tests.R#54: f(x - 1)
     8: tests.R#54: f(x - 1)
     9: tests.R#54: f(x - 1)
    10: tests.R#54: f(x - 1)
    11: tests.R#54: f(x - 1)
    12: tests.R#54: f(x - 1)
    13: tests.R#54: f(x - 1)
    14: tests.R#54: f(x - 1)
    15: tests.R#54: f(x - 1)
    16: tests.R#54: f(x - 1)
    17: tests.R#54: f(x - 1)
    18: tests.R#54: f(x - 1)
    19: tests.R#54: f(x - 1)
    20: tests.R#54: f(x - 1)
    21: tests.R#54: f(x - 1)
    22: tests.R#54: f(x - 1)
    23: tests.R#54: f(x - 1)
    24: tests.R#54: f(x - 1)
    25: tests.R#54: f(x - 1)
    26: tests.R#54: f(x - 1)
    27: tests.R#54: stop("This is deep")
    
    1: tests.R#62: skip("skip")
    
    1: tests.R#69: f()
    2: tests.R#67: skip("skip")
    
    1: tests.R#78: warning("abc")
    
    1: tests.R#84: warning("def")
    
    1: tests.R#85: f()
    2: tests.R#82: warning("ghi")
    
    1: tests.R#111: throw("Throwable")
    

