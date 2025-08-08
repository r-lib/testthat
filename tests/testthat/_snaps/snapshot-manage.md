# informs about files being accepted

    Code
      snapshot_accept(path = path)
    Message
      Updating snapshots: 'a.md' and 'b.md'.

---

    Code
      snapshot_accept(path = path)
    Message
      No snapshots to update.

# can accept specific files

    Code
      snapshot_accept("a", path = path)
    Message
      Updating snapshots: 'a.md'.

---

    Code
      snapshot_accept("test/a.txt", path = path)
    Message
      Updating snapshots: 'test/a.txt'.

---

    Code
      snapshot_accept("test/", path = path)
    Message
      Updating snapshots: 'test/a.txt'.

---

    Code
      snapshot_accept("a", path = path)
    Message
      Updating snapshots:
      * a.md

---

    Code
      snapshot_accept("b.txt", path = path)
    Message
      Updating snapshots:
      * b.txt

---

    Code
      snapshot_accept("test/", path = path)
    Message
      Updating snapshots:
      * test/a.md
      * test/b.txt

# can work with variants

    Code
      snapshot_accept(path = path)
    Message
      Updating snapshots: 'foo/a.md'.

---

    Code
      snapshot_accept("foo/a", path = path)
    Message
      Updating snapshots: 'foo/a.md'.

# snapshot_reject deletes .new files

    Code
      snapshot_reject(path = path)
    Message
      Rejecting snapshots:
      * a.md
      * b.md

