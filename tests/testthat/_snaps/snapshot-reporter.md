# check_roundtrip() gives nice error

    Code
      wrapper(NULL, list(), style = "json")
    Condition
      Error in `wrapper()`:
      ! Object could not be safely serialized with `style = "json"`.
        Serializing then deserializing the object returned something new:
      
      `original` is NULL
      `new` is a list
      
      i You may need to try a different `style`.

