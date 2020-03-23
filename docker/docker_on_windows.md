# Docker On Windows

Got started with Docker on Windows. Which in itself is quite the quest.

Got to a point where I could start a more complicated implementation and it failed with the following error:

```
standard_init_linux.go:211: exec user process caused "no such file or directory"
```

The involved `Dockerfile` was pointing to a **Bash** shell script as `ENTRYPOINT` and the shell script has been altered to use `CRLF` instead of `LF`, while working under **WSL**

Changing the line endings back to `LF` fixed the issue.

## Resources and References

- [StackOverflow: "standard_init_linux.go:190: exec user process caused “no such file or directory” - Docker"](https://stackoverflow.com/questions/51508150/standard-init-linux-go190-exec-user-process-caused-no-such-file-or-directory)
