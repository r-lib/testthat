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

---

    Code
      snapshot_accept("test/a.txt", path = path)
    Message <message>
      Updating snapshots:
      * test/a.txt

---

    Code
      snapshot_accept("test/", path = path)
    Message <message>
      Updating snapshots:
      * test/a.txt

# can work with variants

    Code
      snapshot_accept(path = path)
    Message <message>
      Updating snapshots:
      * foo/a.md

---

    Code
      snapshot_accept("foo/a", path = path)
    Message <message>
      Updating snapshots:
      * foo/a.md

