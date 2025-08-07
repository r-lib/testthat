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

    WAoAAAACAAQCAwACAwAAAAATAAAABAAAABAAAAABAAQACQAAAAFhAAAADgAAAAE/+AAAAAAA
    AAAAAA0AAAABAAAAAQAAAAoAAAABAAAAAQ==

# can control snapshot value details

    1.2

---

    WAoAAAACAAQCAwACAwAAAAMGAAAEAgAAAAEABAAJAAAABWNsYXNzAAAAEAAAAAEABAAJAAAA
    B2Zvcm11bGEAAAQCAAAAAQAEAAkAAAAMLkVudmlyb25tZW50AAAABAAAAAAAAAAEAAAAAAAA
    AAQAAAAAAAAA+QAAAAAAAAACAAQACQAAAAh0ZXN0dGhhdAAEAAkAAAAFMy4yLjAAAAD+AAAA
    EwAAAB0AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4A
    AAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA
    /gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAAEwAAAB0AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4A
    AAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA
    /gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAAEwAAAB0A
    AAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA
    /gAAAP4AAAQCAAAAAQAEAAkAAAABZgAAAwYAAAQCAAAB/wAAABAAAAABAAQACQAAAAdmb3Jt
    dWxhAAAEAgAAAv8AAAP/AAAA/gAAAAEABAAJAAAAAX4AAAACAAAADgAAAAE/8AAAAAAAAAAA
    AP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+AAAA/gAAAP4AAAD+
    AAAA/gAAAP4AAAD+AAAI/wAAAAIAAAAOAAAAAT/wAAAAAAAAAAAA/g==

# tolerance passed to check_roundtrip

    0.9

# check_roundtrip() gives nice error

    Code
      wrapper(NULL, list(), label = "foo", style = "json")
    Condition
      Error in `wrapper()`:
      ! `foo` could not be safely serialized with `style` = "json".
        Serializing then deserializing the object returned something new:
        
        `original` is NULL `new` is a list
      i You may need to try a different `style`.

# expect_snapshot_value validates its inputs

    Code
      expect_snapshot_value(123, cran = "yes")
    Condition
      Error in `expect_snapshot_value()`:
      ! `cran` must be `TRUE` or `FALSE`, not the string "yes".
    Code
      expect_snapshot_value(123, tolerance = "high")
    Condition
      Error in `expect_snapshot_value()`:
      ! `tolerance` must be a number, not the string "high".

