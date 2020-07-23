# can snapshot output

    y

---

    y

---

    y

---

    y

# can snapshot everything

    Output
      [1] "1"
    Message <simpleMessage>
      2
    Warning <warning>
      3
    Error <rlang_error>
      4

# captures custom classes

    Message <testthat_greeting>
      Hello
    Warning <testthat_farewell>
      Goodbye
    Error <testthat_scream>
      Eeek!

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

    Message <message>
      Updating snapshots
      * a.new.md
      * b.new.md

---

    Message <message>
      No snapshots to update

# can accept specific files

    Message <message>
      Updating snapshots
      * a.new.md

