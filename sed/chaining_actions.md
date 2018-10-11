# Chaining actions

You can chain several actions using `-e`

This example removes comments first and then empty lines

```bash
$ sed -e 's/#.*$//' -e '/^$/d' somefile
```

## References

- [Stack Overflow](https://stackoverflow.com/questions/3350223/sed-remove-and-empty-lines-with-one-sed-command)
