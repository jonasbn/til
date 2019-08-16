# Configure Git

I have just started working with *WSL* under *Windows 10*. Coming from \*nix (primarily macOS), the WSL is very appealing to me and the lack of a proper _*nix toolchain_, what drove me away back in the day. But now I am back and attempting to get everything to work smoothly.

The recommendation is to set `autocrlf`

```bash
$ git config --global core.autocrlf true
# Configure Git on Windows to properly handle line endings
```

## Resources

- [First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
- [my .gitconfig](https://github.com/jonasbn/dotfiles/blob/master/.gitconfig) from my [dotfiles](https://github.com/jonasbn/dotfiles) repository
- [Blog post by Pete O'Shea: Setup Git in WSL](https://peteoshea.co.uk/setup-git-in-wsl/)
- [GitHub: help](https://help.github.com/en/articles/configuring-git-to-handle-line-endings)
