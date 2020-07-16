# produces consistent output

    1: expect_true(FALSE)
    2: expect_waldo_constant(act, TRUE, info = info)
    3: expect(identical(act$val, constant), sprintf("%s is not %s\n\n%s", act$lab,
    
    1: f()
    2: expect_true(FALSE)
    3: expect_waldo_constant(act, TRUE, info = info)
    4: expect(identical(act$val, constant), sprintf("%s is not %s\n\n%s", act$lab,
    
    1: stop("stop")
    
    1: f()
    2: g()
    3: h()
    4: stop("!")
    
    1: skip("skip")
    
    1: f()
    2: warning("def")
    

