# Remove empty lines

Remove empty lines using `sed` and a regular expression on a file.

- `^` beginning of line
- `^$` end of line
- `/d` means delete

```bash
$ sed -e '/^$/d' somefile
```

Source [Stack Overflow](https://stackoverflow.com/questions/3350223/sed-remove-and-empty-lines-with-one-sed-command)
