# Implement tab completions

You can implement your own bash completions for commands you use a lot to save on typing.

An example `ackrc` based on [my TIL](https://github.com/jonasbn/til/blob/master/ack/define_a_custom_search_filetype_scope.md)

This completion script, reads your `$HOME/.ackrc` files and offers tab completions for your custom types.

```bash
$ ack <tab>
--yourcustomtype
```

An example `ackrc` based on [my TIL](https://github.com/jonasbn/til/blob/master/ack/define_a_custom_search_filetype_scope.md)

```
--type-set=mojo=.css,.pl,.pm,.html,.js,.tt,.ep,.conf
--type-set=conf=.conf
```

Would work as follows:

```bash
$ ack --<tab>
--mojo --conf
```

The complete implementation lifted from [my github repository](https://github.com/jonasbn/bash_completion_ack).

```bash
_ack()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    local opts=$(sed -n "s/--type-set=\([^']*\)=.*/--\1/p" $HOME/.ackrc )

    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}

complete -F _ack ack
```

Since the tab completion is a programmatic implementation, there is a lot you can do to make your day to day work with `bash` easier.
