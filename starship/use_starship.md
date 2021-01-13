# Use Starship

A cool prompt for your shell.

## Use

### Install

```bash
$ brew install starship
```

### Bash

Add the following to the end of ~/.bashrc:

```
# ~/.bashrc

eval "$(starship init bash)"
```

### Configuration

You can configure A WHOLE LOT, this is my current configuration (`~/.config/starship.toml`):

```toml
# REF: https://starship.rs/

# REF: https://starship.rs/config/
[package]
disabled = true

# REF: https://starship.rs/config/#status
[status]
disabled = false

# REF: https://starship.rs/config/#git-status
[git_status]
conflicted = "👿"
ahead = "🏎💨"
behind = "😰"
diverged = "😵"
untracked = "🤷‍"
stashed = "📦"
modified = "📝"
staged = '[++\($count\)](green)'
deleted = "🗑"
```

## Resources and References

1. [Website: Starship](https://starship.rs/)
