## produces consistent output

    1: tests.R#12: expect_true(FALSE)
    2: expect-logical.R#35: expect_waldo_constant(act, TRUE, info = info)
    3: expect-logical.R#52: expect(identical(act$val, constant), sprintf("%s is no
    
    1: tests.R#17: f()
    2: tests.R#16: expect_true(FALSE)
    3: expect-logical.R#35: expect_waldo_constant(act, TRUE, info = info)
    4: expect-logical.R#52: expect(identical(act$val, constant), sprintf("%s is no
    
    1: tests.R#23: stop("stop")
    
    1: tests.R#31: f()
    2: tests.R#27: g()
    3: tests.R#28: h()
    4: tests.R#29: stop("!")
    
    1: tests.R#37: skip("skip")
    
    1: tests.R#49: f()
    2: tests.R#47: warning("def")
    

