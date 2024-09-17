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
