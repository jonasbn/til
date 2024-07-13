# Work on issues from comments and commit messages

You can then specify one of the following strings, followed by a issue number, to work on an issue from a commit message or comment:

- `close`
- `closes`
- `closed`
- `fixes`
- `fixed`

Example:

```bash
git commit -m "Closes #34"
```

The string is case-insensitive and can be followed by a colon or not I believe (have not thoroughly tested this).

And most importantly only works on your primary branch whether you call in `main`, `master`, or something else. So for a commit, the closing of the issue will not happen until the commit is merged into the primary branch.

## Resources and References

- [GitHub Blog](https://github.blog/2013-01-22-closing-issues-via-commit-messages/)
