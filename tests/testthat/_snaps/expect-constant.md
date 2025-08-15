# logical tests act as expected

    FALSE (`actual`) is not equal to TRUE (`expected`).
    
    `actual`:   FALSE
    `expected`: TRUE 

---

    TRUE (`actual`) is not equal to FALSE (`expected`).
    
    `actual`:   TRUE 
    `expected`: FALSE

# can compare non-vectors

    quote(x) (`actual`) is not equal to TRUE (`expected`).
    
    `actual` is a symbol
    `expected` is a logical vector (TRUE)

# expect_null works

    1L (`actual`) is not equal to FALSE (`expected`).
    
    `actual` is an integer vector (1)
    `expected` is NULL

---

    environment() (`actual`) is not equal to FALSE (`expected`).
    
    `actual` is an environment
    `expected` is NULL

