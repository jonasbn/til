# Use zoxide

An alternative to `cd` and `z` do not be confused that zoxide also often is referred to as `z` but it is a different tool.

zoxide is a command-line tool that helps you navigate your filesystem more efficiently by keeping track of the directories you visit and allowing you to quickly jump to them using a simple syntax - _fast travel_ for directories.

You can specify file patterns to ignore using an environment variable:

```shell
export _ZO_EXCLUDE_PATHS=".git"
```

You can exclude directories using another variable:

```shell
export _ZO_EXCLUDE_DIRS="/tmp:/var:/node_modules"
```

And you can specify a custom database location:

```shell
export _ZO_DATA_DIR="$HOME/.local/share/zoxide"
```

This can be convenient as the default on macOS is: `$HOME/Library/Application Support/zoxide`

## Flushing the database

Flush the database can be done by deleting it:

```shell
rm $HOME/Library/Application Support/zoxide/db.zo`
```

## Adding the current directory

```shell
zoxide add $(pwd)
```

## Resources and References

- [GitHub repository](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file) - The official repository for zoxide, where you can find the source code, documentation, and installation instructions.
- [zoxide.org/](https://zoxide.org/) - An independent, community-driven documentation project and is not affiliated with, endorsed by, or connected to Ajeet D'Souza or the official Zoxide project._
- [DeepWiki: zoxide](https://deepwiki.com/zoxide) - A comprehensive guide to using zoxide, including installation, configuration, and usage tips.
