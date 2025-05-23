# Edit Complex CLI in Editor

When you are writing or editing a particularly long command line in the shell, you can enter the following key combination and spawn of an editor to assist your.

`<ctrl>`-`x`-`e`

When closing the editor the command line entered is executed.

You can specify what editor to use using two different variables.

```bash
$ env | grep -e 'EDITOR\|VISUAL'
EDITOR=/usr/local/bin/vim
VISUAL=code --wait --new-window
```

The shell should pick the appropriate one.

An alternative to `<ctrl>`-`x`-`e` is the command `fc` (_fix command_) which can do a lot of things, by default takes the last command from your history. Do note that is does not respect `$VISUAL` and uses `$EDITOR`, or: `$FCEDIT`.

## Resources and References

- [CommandLineFu](https://www.commandlinefu.com/commands/view/1446/rapidly-invoke-an-editor-to-write-a-long-complex-or-tricky-command)
- ["Using the fc command"](https://www.mssl.ucl.ac.uk/swift/om/sw/help/unix/Unixhelp/shell_bash_hist5.2.html#:~:text=To%20edit%20a%20previous%20command,fc%20(fix%20command)%20command.&text=This%20will%20open%20the%20commands,(s)%20will%20be%20run.)
- [Wikipedia: fc](https://en.wikipedia.org/wiki/Fc_(Unix))
- [TIL/zsh: "Edit Command in Editor"](zsh/edit_command_in_editor.md)
