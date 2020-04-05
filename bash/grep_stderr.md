# Grep STDERR

You can grep on the STDERR stream of data using a anonymous pipe.

```bash
$ somecommand 2> >(grep -i STRING)
```

## References

- [StackExchange Unix & Linux: How to grep standard error stream (stderr)?](https://unix.stackexchange.com/questions/3514/how-to-grep-standard-error-stream-stderr)
