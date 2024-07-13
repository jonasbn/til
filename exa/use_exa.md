# Use exa

`exa` is an alternative to `ls`, since replaced by `eza` (a maintained fork of `exa`).

One of it's features is show icons on the command line.

This does however require a font that supports this, like **Nerd** (see [this issue][fontissue]).

On MacOS you can do the following:

```bash
$ brew tap homebrew/cask-fonts
$ brew install --cask font-hack-nerd-font
```

And the pick the font in your terminal application.

I am currently using the following aliases:

```bash
alias ls='exa --grid --color auto --icons --sort=type'
alias ll='exa --long --color always --icons --sort=type'
alias la='exa --grid --all --color auto --icons --sort=type'
alias lla='exa --long --all --color auto --icons --sort=type'
```

I attempted to install `exa` on Ubuntu, but it was not available in the package manager, it has apparently been replaced with `eza` a maintained fork of `exa`.

## Resources and References

- [Exa Website][website]
- [dev.to: "My terminal became more Rusty 🦀" by Mahmoud Ashraf](https://dev.to/22mahmoud/my-terminal-became-more-rusty-4g8l)
- [Install Nerd fonts on Linux][installfonts]
- [GitHub: eza](https://github.com/eza-community/eza)

[website]: https://the.exa.website/
[fontissue]: https://github.com/ogham/exa/issues/765
[installfonts]: https://techviewleo.com/install-nerd-fonts-on-linux-macos/
