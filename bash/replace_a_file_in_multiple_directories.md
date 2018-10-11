# Copy a file to multiple directories

Nifty little trick when you want to replace a single file in multiple directories.

```bash
$ find . -name README.txt -print0 | xargs -0 -I{} cp README.txt {}
```

This is a variation over the following:

## References

- https://www.garron.me/en/linux/find-copy-files-exec-xargs-bash-linux-mac-osx.html
