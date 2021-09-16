# snapshot cleanup makes nice message if needed

    Code
      snapshot_cleanup(dir)
    Message <message>
      Deleting unused snapshots:
      * a.md
      * b.md
    Code
      snapshot_cleanup(dir, c("a", "b"))

