# logical tests act as expected

    FALSE is not TRUE
    
    `actual`:   [32mFALSE[39m
    `expected`: [32mTRUE[39m 

---

    TRUE is not FALSE
    
    `actual`:   [32mTRUE[39m 
    `expected`: [32mFALSE[39m

# can compare non-vectors

    quote(x) is not TRUE
    
    `actual` is [32ma symbol[39m
    `expected` is [32ma logical vector[39m (TRUE)

# expect_null works

    1L is not NULL
    
    `actual` is [32man integer vector[39m (1)
    `expected` is [32mNULL[39m

---

    environment() is not NULL
    
    `actual` is [32man environment[39m
    `expected` is [32mNULL[39m

