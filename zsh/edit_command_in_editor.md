# Edit Command in Editor

Sometimes you have a complex command line or something recalled from your history you want to change and execute.

In **Bash** you could call `<ctrl>`-`x` followed by: `<ctrl>`-`e` and your chosen editor would open up with the relevant line for you editing pleasure.

In **Zsh** this can also be accomplished using: `<ctrl>`-`x` followed by: `e`

And just to recap:

It will spin up the editor defined in the environment variable: `$VISUAL` if not defined: `$EDITOR`

Do note that is does not respect `$VISUAL` and uses `$EDITOR`.

```shell
env | ag "editor|^visual"
VISUAL=code --wait --new-window
EDITOR=/usr/bin/vim
```

If you are ind doubt about the keybinding or want to change it, execute: `keybind` and see the current list of bindings.

```shell
bindkey|ag edit
"^Xe" edit-command-line
```

The binding is defined in: `~/.zshrc`

```shell
cat ~/.zshrc |ag edit-command-line
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line
```

## Resources and References

- [The Valuable Dev: "A Guide to the Zsh Line Editor with Examples"](https://thevaluable.dev/zsh-line-editor-configuration-mouseless/)
- [StackExchange: "CTRL+X+E in ZSH [duplicate]"](https://unix.stackexchange.com/questions/750198/ctrlxe-in-zsh)
- [TIL/Bash: "Edit Complex CLI in Editor"](../bash/edit_complex_cli_in_editor.md)
