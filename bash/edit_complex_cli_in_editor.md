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

## References

- [CommandLineFu](https://www.commandlinefu.com/commands/view/1446/rapidly-invoke-an-editor-to-write-a-long-complex-or-tricky-command)
