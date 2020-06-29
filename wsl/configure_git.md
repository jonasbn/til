# Configure Git

I have just started working with *WSL* under *Windows 10*. Coming from \*nix (primarily macOS), the WSL is very appealing to me and the lack of a proper _*nix toolchain_, what drove me away back in the day. But now I am back and attempting to get everything to work smoothly.

The recommendation is to set `core.autocrlf` to `false`

```bash
$ git config --global core.autocrlf false
```

You can checkout the value using:

```bash
$ git config --list --show-origin
...
file:/home/jonasbn/.gitconfig   core.autocrlf=false
...
```

## Resources and References

- [First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
- [my .gitconfig](https://github.com/jonasbn/dotfiles/blob/master/.gitconfig) from my [dotfiles](https://github.com/jonasbn/dotfiles) repository
- [Blog post by Pete O'Shea: Setup Git in WSL](https://peteoshea.co.uk/setup-git-in-wsl/)
- [GitHub Community](https://github.community/t/git-config-core-autocrlf-should-default-to-false/16140)
- [GitHub: help](https://help.github.com/en/articles/configuring-git-to-handle-line-endings)
