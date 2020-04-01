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

- ["How to check if your PC can run Windows 10 Hyper-V"](https://winaero.com/blog/how-to-check-if-your-pc-can-run-windows-10-hyper-v/)
- [Microsoft Docs: "Step-By-Step: Enabling Hyper-V for use on Windows 10](https://docs.microsoft.com/en-us/archive/blogs/canitpro/step-by-step-enabling-hyper-v-for-use-on-windows-10)
- [Microsoft Docs: Install Hyper-V on Windows 10](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)
- ["Using MSInfo32 to check for SLAT Support in Windows 10"](https://www.interfacett.com/blogs/using-msinfo32-to-check-for-slat-support-in-windows-10/)

- [Docker Docs: Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
- [Docker Docs: Get started with Docker for Windows](https://docs.docker.com/docker-for-windows/)
