# Use fzf

`fzf` is a _funky_ command line fuzzy searcher.

Use your normal reverse history search and see `fzf` work it's _magic_.

```bash
<ctrl>-r
```

If you want to use it under **WSL** with Ubuntu. I recommend installing from **Git**:

```bash
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

If you follow the standard documentation, you will observe several errors:

```
.fzf/install: line 2: $'\r': command not found
: invalid optionne 3: set: -
set: usage: set [-abefhkmnptuvxBCHP] [-o option-name] [--] [arg ...]
.fzf/install: line 4: $'\r': command not found
.fzf/install: line 14: $'\r': command not found
.fzf/install: line 15: syntax error near unexpected token `$'{\r''
'fzf/install: line 15: `help() {
```

This all boils down to [Bash using CRLF on Ubuntu on WSL](https://stackoverflow.com/questions/40934614/why-bash-on-ubuntu-on-windows-still-using-crlf-as-line-ending), so you have to convert the script, using a tool like `dos2unix`

```bash
$ dos2unix ~/.fzf/install
```

The installation runs and you have to follow up with the following conversions:

```bash
$ dos2unix ~/.fzf/shell/key-bindings.bash
```

And you are go to go...

```bash
<ctrl>-r
```

## References

- [GitHub: fzf](https://github.com/junegunn/fzf)
- [StackOverflow: Why bash on ubuntu on windows still using CRLF as line ending](https://stackoverflow.com/questions/40934614/why-bash-on-ubuntu-on-windows-still-using-crlf-as-line-ending)
- [StackOverflow: '\r': command not found - .bashrc / .bash_profile [duplicate]](https://stackoverflow.com/questions/11616835/r-command-not-found-bashrc-bash-profile)
- [StackOverflow: Are shell scripts sensitive to encoding and line endings?](https://stackoverflow.com/questions/39527571/are-shell-scripts-sensitive-to-encoding-and-line-endings)
