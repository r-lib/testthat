# informs about files being accepted

    Code
      snapshot_accept(path = path)
    Message <message>
      Updating snapshots:
      * a.md
      * b.md

---

    Code
      snapshot_accept(path = path)
    Message <message>
      No snapshots to update

# can accept specific files

    Code
      snapshot_accept("a", path = path)
    Message <message>
      Updating snapshots:
      * a.md

