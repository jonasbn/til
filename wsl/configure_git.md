# Configure Git

I have just started working with **WSL** under **Windows 10**. Coming from \*nix (primarily macOS), the WSL is very appealing to me and the lack of a proper _*nix toolchain_, what drove me away back in the day. But now I am back and attempting to get everything to work smoothly.

## WSL 1

The recommendation is to set `core.autocrlf` to `false`, based on [the blog post][peteoshea] by Pete O'Shea.

This has _somewhat_ worked for me on WSL1

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

## WSL 2

For me it has always made sense to have  `core.autocrlf` set to `true`, which contradicts the section above based on [the blog post](peteoshea) by Pete O'Shea.

```bash
$ git config --global core.autocrlf true
```

You can checkout the value using:

```bash
$ git config --list --show-origin
...
file:/home/jonasbn/.gitconfig   core.autocrlf=true
...
```

## Resources and References

1. [First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
1. [my .gitconfig](https://github.com/jonasbn/dotfiles/blob/master/.gitconfig) from my [dotfiles](https://github.com/jonasbn/dotfiles) repository
1. [Blog post by Pete O'Shea: Setup Git in WSL][peteoshea]
1. [GitHub Community](https://github.community/t/git-config-core-autocrlf-should-default-to-false/16140)
1. [GitHub: help](https://help.github.com/en/articles/configuring-git-to-handle-line-endings)

[peteoshea]: (https://peteoshea.co.uk/setup-git-in-wsl/)
