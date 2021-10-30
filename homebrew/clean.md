# Cleaning your homebrew cellar

At some point a lot of _cruft_ will have accumulated in your homebrew cellar, by _cruft_ I mean old versions of packages you use.

Luckily this can easily be addressed.

```bash
$ brew cleanup
```

The Medium article listed below presents a Bash script to a bit more, I have added my own version here:

```bash
#!/bin/bash

brew update
brew upgrade
brew cleanup -s
brew cask cleanup
brew doctor
brew missing
```

## Resources and References

1. [StackOverflow](http://stackoverflow.com/questions/27508590/homebrew-size-of-cellar)
1. [Medium: "Keeping macOS clean: this is my osx/brew/[…update CLI command"](https://waxzce.medium.com/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731)
