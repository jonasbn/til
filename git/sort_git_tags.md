# Sort Git Tags

When you list tags in Git, they are sorted in [lexicographical order](https://en.wikipedia.org/wiki/Lexicographic_order), which is not always the most useful order. For example, if you have tags for versions of your software, you might want to see them in version order.

Example of listing tags:

```bash
╰─ git tag
0.1.0
0.2.0
0.3.0
0.3.1
0.4.0
0.5.0
0.6.0
0.6.1
v0.10.0
v0.11.0
v0.12.0
v0.13.0
v0.13.1
v0.7.0
v0.8.0
v0.9.0
```

You can sort tags by version number using the following command, which uses the `sort` command to sort the tags from the GNU Core Utils (for example on macOS, look further down).

```bash
╰─ git tag | gsort --reverse --version-sort
v0.13.1
v0.13.0
v0.12.0
v0.11.0
v0.10.0
v0.9.0
v0.8.0
v0.7.0
0.6.1
0.6.0
0.5.0
0.4.0
0.3.1
0.3.0
0.2.0
0.1.0
```

The `sort` command is used to sort the output of `git tag`. The `-r` flag sorts the tags in reverse order, so the newest tags are listed first. The `--version-sort` flag sorts the tags by version number, so they are listed in version order.

You can create an alias for this command by adding the following line to your `.gitconfig` file:

```bash
[alias]
    tags = !git tag | sort -r --version-sort
```

Do note this is the GNU `sort` command, so it might not work on all systems. If you are on macOS, you can install the GNU Core Utils using Homebrew:

```bash
brew install coreutils
```

Then you can use the `gsort` command instead of `sort`:

```bash
git tag | gsort -r --version-sort
```

Before I new all this I had created a basic Perl script to do it, available as [a Gist](https://dev.to/jonasbn/gist-sorting-semantic-versioned-git-tags-191e) AND then I learned a tonnes about the `sort` command and the `--version-sort` option from a comment - just awesome.
