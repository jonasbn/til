# Install chezmoi

`[chezmoi][website]` is a dotfile manager. Meaning that I can handle of those super important dotfiles you tend to build up over time and want to share among your hosts.

I recently got a new machine to I thought it was about time to get started with a dotfile manager to save some time. I had recently heard about `chezmoi` on the Change Log podcast, so I thought I would give it a spin.

First up you have to install it on your first machine, mine was an old macOS machine (_hoarfrost_).

Next up was installing it on a second, brand new, macOS matching (_silverrocket_), following the same procedure (some OS).

And finally installing it on an Ubuntu machine in the cloud I use for various things.

## Install macOS / OSX

`chezmoi` is available via Homebrew

```bash
brew install chezmoi
```

Please see the [official install guide][install] for more details and options.

Or the [Homebrew installation guide](https://brew.sh/) if you do not have `brew` available

## Install Ubuntu

`chezmoi` can be installed via `snap`:

```bash
snap install chezmoi --classic
```

Please see the [official install guide][install] for more details and options.

Or the [snapcraft installation guide][snapcraft] if you do not have snap available

## Resources and References

1. [chezmoi installation documentation][install]
1. [Ubuntu Install via snap][snapcraft]
1. [chezmoi GitHub repository](https://github.com/twpayne/chezmoi)
1. [chezmoi website][website]

[website]: https://www.chezmoi.io/#considering-using-chezmoi
[install]: https://www.chezmoi.io/install/
[snapcraft]: https://snapcraft.io/install/chezmoi/ubuntu
