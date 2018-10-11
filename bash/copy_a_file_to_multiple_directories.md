# Copy a file to multiple directories

Nifty little trick when you want to copy a single file to multiple directories.

```bash
$ xargs -m 1 cp file <<<"/dir1/ /dir2/"
```

## References

- [@nixCraft on Twitter](https://twitter.com/nixcraft/status/821072127231082497)
