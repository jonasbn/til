# Use fzf

`fzf` is a _funky_ command line fuzzy searcher.

Use your normal reverse history search and see `fzf` work it's _magic_.

```bash
<ctrl>-r
```

## WSL Installation

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

And you are good to go...

```bash
<ctrl>-r
```

### Ubuntu installation

I recently installed `fzf` on Ubuntu, unfortunately you get a very old version: `0.44.1-1`. So you should consider installing from **Git**. You can also see this in the package status list for `fzf`.

The reason for installing using the regular package manager is for ease of maintenance, which then comes at a cost.

The `fzf` installation guide outlines this process:

```bash
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
```

Which is not supported until version: `0.48.0` as mentioned in the note beneath the installation instructions.

You can however use the two files from `shell/` directory in the `fzf` repository

- `completion.bash`
- `key-bindings.bash`

When sourcing these via my `.bashrc`, I get not warnings, but the moment I press `<ctrl>-r` I get the following error:

```
unknown option: --wrap-sign
```

Which is a problem, since it seems that the `fzf` version is not compatible with the `key-bindings.bash` file and `--wrap-sign` was not introduced until version `0.54.0`.

I did clone the repository, so I could use the files in the `shell/` directory, but now I get a maintanance mix of versions and management options for a single tool.

- I could hard-copy the `key-bindings.bash` file and remove the `--wrap-sign` option, but I would rather use the `fzf` version from the repository
- I could checkout the GitHub repository at a certain revision, but then I would have to manage the version myself

So I recommend rolling with the repository based installation. Also because the Linux distributions are moving slower that GitHub.

When using the repository based installation, you can use the following command to install `fzf`:

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/src/fzf
~/src/fzf/install
```

Do note the `src/` directory, which is a personal preference of mine, based on a recommendation from when installing: `nordtheme/dircolors`.

Then I can collect repositories I only consume and not mix these up with own repositories, forks at what not.

## Resources and References

- [GitHub: fzf](https://github.com/junegunn/fzf)
- [StackOverflow: Why bash on ubuntu on windows still using CRLF as line ending](https://stackoverflow.com/questions/40934614/why-bash-on-ubuntu-on-windows-still-using-crlf-as-line-ending)
- [StackOverflow: '\r': command not found - .bashrc / .bash_profile [duplicate]](https://stackoverflow.com/questions/11616835/r-command-not-found-bashrc-bash-profile)
- [StackOverflow: Are shell scripts sensitive to encoding and line endings?](https://stackoverflow.com/questions/39527571/are-shell-scripts-sensitive-to-encoding-and-line-endings)
