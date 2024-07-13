# Use Tmux Plugin Manager

**Tmux Plugin Manager** extends your `tmux` capabilities

Installation is via GitHub:

```bash
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Add the following to your `tmux` config (`$XDG_CONFIG_HOME/tmux/tmux.conf` or `~/.tmux.conf`):

```text
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

Source your newly updated configuration

```bash
$ tmux source ~/.tmux.conf
```

As mentioned the above might very depending on the location of your configuration file, `$XDG_CONFIG_HOME/tmux/tmux.conf` or `~/.tmux.conf`. Using: `$XDG_CONFIG_HOME` does declutter your `$HOME` directory.

To install, in `tmux` you do:

`prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin, this also refreshes the `tmux` environment

And later to update from `tmux` do:

`prefix` + <kbd>U</kbd>

Of noticable [plugins] I can mention:

- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect) or [my til](use_tmux_resurrect.md)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
- [arcticicestudio/nord-tmux](https://github.com/nordtheme/tmux)

Or check this [repository of plugins][plugins]

## Resources and References

1. [GitHub repository for tpm][tpm]
1. [GitHub plugin repository][plugins]

[tpm]: https://github.com/tmux-plugins/tpm
[plugins]: https://github.com/tmux-plugins
