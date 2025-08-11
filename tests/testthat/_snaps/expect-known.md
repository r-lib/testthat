# ignores incomplete last line

    Results have changed from known value recorded in '/tmp/RtmppktJm1/file13b4b50b67fc'.
    
    `old`: "Hi!"   
    `new`: "Hi!" ""

---

    Results have changed from known value recorded in '/tmp/RtmppktJm1/file13b4b50b67fc'.
    
    `old`: "Hi!"  ""
    `new`: "oops"   

# updates by default

    Results have changed from known value recorded in '/tmp/RtmppktJm1/file13b4b249dd6d5'.
    
    `old`: "Hi!" 
    `new`: "oops"

---

    Results have changed from known value recorded in '/tmp/RtmppktJm1/file13b4b249dd6d5'.
    
    `old`: "Hi!" 
    `new`: "oops"

# Warning for non-UTF-8 reference files

    Results have changed from known value recorded in '/tmp/RtmppktJm1/file13b4b3b0e2961'.
    
    `old`: "éáíöü"
    `new`:        

# correctly matches to a file

    `x` has changed from known value recorded in 'one.rds'.
    1/1 mismatches
    [1] 2 - 1 == 1

# equal_to_ref does not overwrite existing

    `ref_obj2` has changed from known value recorded in '/tmp/RtmppktJm1/file13b4b10c668bf.rds'.
    3/3 mismatches (average diff: 1)
    [1] 2 - 1 == 1
    [2] 3 - 2 == 1
    [3] 4 - 3 == 1

---

    `ref_obj2` has changed from known value recorded in '/tmp/RtmppktJm1/file13b4b10c668bf.rds'.
    3/3 mismatches (average diff: 1)
    [1] 2 - 1 == 1
    [2] 3 - 2 == 1
    [3] 4 - 3 == 1

# only succeeds if hash is correct

    Expected value to hash to c08951d2c3.
    Actual hash: c08951d2c2

