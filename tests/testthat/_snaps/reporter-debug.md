# produces consistent output

    1: expect_true(FALSE)
    2: expect_waldo_constant(act, TRUE, info = info, ignore_attr = TRUE)
    3: fail(msg, info = info, trace_env = caller_env())
    
    1: f()
    2: expect_true(FALSE)
    3: expect_waldo_constant(act, TRUE, info = info, ignore_attr = TRUE)
    4: fail(msg, info = info, trace_env = caller_env())
    
    1: stop("stop")
    
    1: f()
    2: g()
    3: h()
    4: stop("!")
    
    1: skip("skip")
    
    1: f()
    2: warning("def")
    

