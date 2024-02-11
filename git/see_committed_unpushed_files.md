# See Committed, Unspushed Files

Sometime I forget what files I have committed but not pushed. This command will show me the files that I have committed but not pushed.

```bash
git log origin..HEAD --name-only
```

## Resources and References

- [StackOverflow: "How to have 'git log' show filenames like 'svn log -v'"](https://stackoverflow.com/questions/1230084/how-to-have-git-log-show-filenames-like-svn-log-v)
