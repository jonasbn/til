# TMUX Kiosk

I often have quite a few terminal windows open, where I monitor various things.

- `codeburn`
- `abtop`
- [wtfutil](../wtf/play_around_with_wtf.md)

Since I am not watching these constantly but they take up a lot of Desktop space, I needed something for rotating them in a single terminal.

So using Claude code I developed, [tmux-kiosk][GITHUBTMUXKIOSK], it can be enabled for a single session and it will rotate over the windows in the sessions.

Enabling it is a single keybinding: `prefix + W` toggles auto-switching on and off in the current session. A status bar indicator (`@kiosk-status-active`, default `⟳`) shows when it is active, but only if you reference it in your `status-right`:

```tmux
set -g status-right "#{@kiosk-status-active} | %H:%M"
```

## Gotcha: a theme plugin can hide the status indicator

If you use a theme plugin (e.g. `nord-tmux`) alongside TPM, plugin scripts are sourced in declaration order when `run '~/.config/tmux/plugins/tpm/tpm'` executes, at the very end of `tmux.conf`. If a theme plugin declared earlier sets its own `status-right` inside that script, it silently overwrites whatever `status-right` you set further up the file, even though yours parsed "after" the plugin's `set -g @plugin` line. tmux-kiosk itself keeps running in the background (confirm with `tmux show -t <session> '@kiosk-status-active'`), only the on-screen icon disappears.

The fix is to re-assert `status-right` _after_ the `run tpm` line, merging in the theme's own format string:

```tmux
run '~/.config/tmux/plugins/tpm/tpm'

set -g status-right "#{@kiosk-status-active} #{prefix_highlight}#[fg=brightblack,bg=black,nobold,noitalics,nounderscore]#[fg=white,bg=brightblack] %Y-%m-%d #[fg=white,bg=brightblack,nobold,noitalics,nounderscore]#[fg=white,bg=brightblack] %H:%M #[fg=cyan,bg=brightblack,nobold,noitalics,nounderscore]#[fg=black,bg=cyan,bold] #H "
```

## Resource and References

- [GitHub: jonasbn/tmux-kiosk][GITHUBTMUXKIOSK]

[GITHUBTMUXKIOSK]: https://github.com/jonasbn/tmux-kiosk
