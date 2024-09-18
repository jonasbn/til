# Nifty Aliases

This is a collection of some nifty Shell aliases.

## $PATH is a mess

If you echo `$PATH` to inspect it, you will see that it is a mess and not as easy to work with as for example the output of `env`.

```shell
echo $PATH
```

This is a nifty command line construct to help you:

```shell
echo $PATH | tr ':' '\n'
```

It outputs `$PATH` as multiple lines, so you can pass it to `grep` or similar.

```shell
echo $PATH | tr ':' '\n' | grep jonasbn
```

And finally you can create a nifty alias:

```shell
alias path="echo $PATH | tr ':' '\n'"
```

And it just works:

```shell
path | grep jonasbn
```

## rm is pretty destructive

Lifted from the TIL: "[Are you sure?](../rm/are_you_sure.md).

This might be the oldest trick I learned when I started using `rm` and `mv` on the command line on Linux ages ago.

The trick is to use the `--interactive` / `-i` option to `rm` and `mv` to make sure you are not deleting or moving the wrong files.

```bash
alias rm='rm --interactive'
```

By creating an alias for `rm` you will be prompted for confirmation before deleting files, since the alias will let `rm` be replaced by `rm -i` which prompts for confirmation.

The same pattern can be used for other commands and simple as it is it can be a lifesaver.
