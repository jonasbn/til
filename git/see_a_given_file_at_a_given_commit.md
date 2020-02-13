# See a given file at a given commit

Seeing the differences between two revisions of a given file. But sometimes you just want to see the given file in it's entirety at a given revision.

I had that exact need the other day, so this example is lifted directly from my **Bash** history.

```bash
$ git show a1be03b:two_fer.go
```

The example from the `git show` documentation looks as follows:

```bash
$ git show next~10:Documentation/README
```

> Shows the contents of the file Documentation/README as they were current in the 10th last commit > of the branch next.

As you can see you replace the pointer to the time line with a exact commit identification.

## References

- [Official documentation for git show](https://git-scm.com/docs/git-show)
