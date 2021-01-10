# use git-delta

**git-delta** primarily known as **delta** (not to be confused with the other **delta**, [a tool to inspect files with code][tigris]), is alternative _diff pager_ for **Git** (`git`), like the popular **diff-so-fancy**.

I discovered `delta` from [a dev.to post by Mahmoud Ashraf][dev.to], entitled "My terminal became more Rusty 🦀".

**Rust**  utilities are generally very fast so I though I would give it a _spin_, but I go so much more than speed and `delta` can do quite a bit:

- language syntax highlighting
- within-line insertion/deletion detection
- multiple insertion/deletions detected per line
- matching of unequal numbers of changed lines
- independently stylable elements
- line numbering
- side-by-side view

The above list is copied from the [delta documentation][github].

I `.gitconfig` has been updated to use `delta`, it can be found in my [dotfiles repository][dotfiles].

## Resources and References

1. [GitHub: delta][github]
1. [delta][tigris]
1. [dev.to: "My terminal became more Rusty 🦀" by Mahmoud Ashraf][dev.to]

[tigris]: https://web.archive.org/web/20170805142100/delta.tigris.org/
[github]: https://github.com/dandavison/delta
[dev.to]: https://dev.to/22mahmoud/my-terminal-became-more-rusty-4g8l
[dotfiles]: https://github.com/jonasbn/dotfiles
