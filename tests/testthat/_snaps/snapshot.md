# can snapshot output

    [1] "y"

---

    [1] "y"

---

    [1] "y"

---

    [1] "y"

# can snapshot everything

    > f()
    [1] "1"
    
    Message: 2
    
    Warning: 3
    
    Error: 4
    

# even with multiple lines

    a
    b
    c

---

    a
    b
    c

# can snapshot values

    [
      "a",
      1.5,
      1,
      true
    ]

---

    {
      "type": "list",
      "attributes": {},
      "value": [
        {
          "type": "character",
          "attributes": {},
          "value": ["a"]
        },
        {
          "type": "double",
          "attributes": {},
          "value": [1.5]
        },
        {
          "type": "integer",
          "attributes": {},
          "value": [1]
        },
        {
          "type": "logical",
          "attributes": {},
          "value": [true]
        }
      ]
    }

---

    list("a", 1.5, 1L, TRUE)

---

    WAoAAAACAAMGAwACAwAAAAATAAAABAAAABAAAAABAAQACQAAAAFhAAAADgAAAAE/+AAAAAAA
    AAAAAA0AAAABAAAAAQAAAAoAAAABAAAAAQ==

# informs about files being accepted

    > snapshot_accept(path = path)
    Message: Updating snapshots
    * a.new.md
    * b.new.md
    

---

    > snapshot_accept(path = path)
    Message: No snapshots to update
    

# can accept specific files

    > snapshot_accept("a", path = path)
    Message: Updating snapshots
    * a.new.md
    

