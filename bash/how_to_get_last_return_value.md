# How to get last return value

If you want to get the last return value in `bash`, do the following:

```bash
$ echo $?
```

For doing something a tad more elegang in scripts etc. The following suggestion from StackOverflow looks pretty nifty:

```bash
EXITCODE=$?
test $EXITCODE -eq 0 && echo "something good happened" || echo "something bad happened";
exit $EXITCODE
```

## References

- [Ask Ubuntu](https://askubuntu.com/questions/324423/how-to-access-the-last-return-value-in-bash)
- [StackOverflow: "How to check the exit status using an if statement"](https://stackoverflow.com/questions/26675681/how-to-check-the-exit-status-using-an-if-statement)
