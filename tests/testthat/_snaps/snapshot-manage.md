# informs about files being accepted

    Code
      snapshot_accept(path = path)
    Message
      Updating snapshots: 'a.md' and 'test/b.txt'.

# useful mesasge if no files to accept

    Code
      snapshot_accept(path = path)
    Message
      No snapshots to update.

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

