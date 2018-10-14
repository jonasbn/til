# Integrate Visual Studio Code with Shell / CLI

Up to now I have been using **Sublime Text** as my preferred editor, before that it was **TextMate**, before that it was **BBEdit** and sometimes in between it has been **Atom**, **Komodo**, **Vim** and **vi**.

I have come really, really excited with **Visual Studio Code** (code) and most of my programing and text editing is being done using that editor.

Normally I start **code** from the command line, but today I decided to go all the way a specified
it as the editor to be executed when edits are initiated from other command line tools using the `$EDITOR` or `$VISUAL` variable.

```bash
export EDITOR="code --wait --new-window"
```

This mean that for example can edit, complex command line constructs in **code** using the `CTRL-x`,
`CTRL-e` combination.

**code** has marvellous **Git** integration, but if you like me sometime work on the command line instead of the editor with your version control tasks, setting the `$GIT_EDITOR` environment variable can be quite useful.

This might not be necessary, if you have set `$EDITOR` or `$VISUAL` as described above (see also: the [Git man page][git man page]), but if you have special command line setting and would like to differenciate, this could be an option and therefor worth a mention.

```bash
export GIT_EDITOR="code --wait --new-window"
```

And now I can edit commit messages and command lines using **code** and all the other CLI relying on the $EDITOR integration.

## References

- [Visual Studio Code documentation: Command Line Interface (CLI)][code cli doc]
- [Git man page][git man page]
- [Bash man page][bash man page]

[git man page]: https://git-scm.com/docs/git#git-codeGITEDITORcode

[bash man page]: https://linux.die.net/man/1/bash

[code cli doc]: https://code.visualstudio.com/docs/editor/command-line
