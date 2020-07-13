## can snapshot output

    [1] "y"

---

    [1] "y"

---

    [1] "y"

---

    [1] "y"

## can snapshot values

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

    WAoAAAADAAMGAwADBQAAAAAFVVRGLTgAAAATAAAABAAAABAAAAABAAQACQAAAAFhAAAADgAA
    AAE/+AAAAAAAAAAAAA0AAAABAAAAAQAAAAoAAAABAAAAAQ==

## can snapshot conditions

    {
      "message": ["!"],
      "class": ["simpleError", "error", "condition"],
      "fields": {}
    }

---

    {
      "message": ["!"],
      "class": ["rlang_error", "error", "condition"],
      "fields": {
        "x": [1, 2, 3, 4, 5]
      }
    }
    
    

