# snapshot cleanup makes nice message if needed

    Code
      snapshot_cleanup(dir)
    Message
      Deleting unused snapshots:
      * a.md
      * b.md
    Code
      snapshot_cleanup(dir, c("a", "b"))

