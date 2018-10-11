# Remove comments

Remove comment lines using `sed` and a regular expression on a file.

- `#.*$` comment in Perl for example

```bash
$ sed -e 's/#.*$//' somescript.pl
```

## References

- [Stack Overflow](https://stackoverflow.com/questions/3350223/sed-remove-and-empty-lines-with-one-sed-command)
