# Inspecting path

The `$PATH` is one of the most essential environment variables, since it points to all of your executables. Sometimes your path does not contain what you expect and you want to have a look at it.

I used to just call `env` and then `grep` for `PATH`, this is however not so efficient, so I made this little _alias_:

```shell
alias path="echo $PATH | tr ':' '\n'"
```

Which formats the output to something more readable.

And as I recently picked up `gum` I can even do a combination:

```shell
path | gum filter
```

Then I can filter in my path, if I am _unsure_ of what things are called.

## Resources and References

- [GitHub: charmbracelet/gum](https://github.com/charmbracelet/gum)
