# logical tests act as expected

    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 

---

    TRUE is not equal to FALSE.
    
    `actual`:   TRUE 
    `expected`: FALSE

# can compare non-vectors

    quote(x) is not equal to TRUE.
    
    `actual` is a symbol
    `expected` is a logical vector (TRUE)

# expect_null works

    1L is not equal to FALSE.
    
    `actual` is an integer vector (1)
    `expected` is NULL

---

    environment() is not equal to FALSE.
    
    `actual` is an environment
    `expected` is NULL

