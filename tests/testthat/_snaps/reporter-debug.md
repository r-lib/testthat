# produces consistent output

    1: expect_true(x)
    2: expect_waldo_constant_(act, exp, info = info, ignore_attr = TRUE)
    3: fail(msg, info = info, trace_env = trace_env)
    4: expectation("failure", message, srcref = srcref, trace = trace)
    5: exp_signal(exp)
    6: withRestarts(if (expectation_broken(exp)) {
        stop(exp)
    } else {
        signalC
    7: withRestartList(expr, restarts)
    
    1: f()
    2: expect_true(FALSE)
    3: expect_waldo_constant_(act, exp, info = info, ignore_attr = TRUE)
    4: fail(msg, info = info, trace_env = trace_env)
    5: expectation("failure", message, srcref = srcref, trace = trace)
    6: exp_signal(exp)
    7: withRestarts(if (expectation_broken(exp)) {
        stop(exp)
    } else {
        signalC
    8: withRestartList(expr, restarts)
    
    1: stop("stop")
    
    1: f()
    2: g()
    3: h()
    4: stop("!")
    
    1: skip("skip")
    
    1: f()
    2: warning("def")
    

