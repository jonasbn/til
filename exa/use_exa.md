# Use exa

`exa` is an alternative to `ls`.

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

## Resources and References

1. [the.exa.website][website]
1. [dev.to: "My terminal became more Rusty 🦀" by Mahmoud Ashraf](https://dev.to/22mahmoud/my-terminal-became-more-rusty-4g8l)

[website]: https://the.exa.website/
[fontissue]: https://github.com/ogham/exa/issues/765
[installfonts]: https://techviewleo.com/install-nerd-fonts-on-linux-macos/
