# Use Ghostty

**Ghostty** terminal emulator is awesome, I have just recently starting using it.

Anyway I found [this Gist](https://gist.github.com/trashhalo/2fc177d74c1d6791f1874a3c59865660) with and overview of default keyboard shortcuts.

## Ghostty Keyboard Shortcuts

Default keyboard shortcuts for Ghostty terminal emulator. Platform-specific differences are noted where applicable.

## Window Management

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| New window | Ctrl+Shift+N | Cmd+N |
| Close window | Alt+F4 | Cmd+Shift+W |
| Close all windows | - | Cmd+Shift+Option+W |
| Toggle fullscreen | Ctrl+Enter | Cmd+Enter or Cmd+Ctrl+F |
| Quit application | Ctrl+Shift+Q | Cmd+Q |

## Tab Management

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| New tab | Ctrl+Shift+T | Cmd+T |
| Close tab/surface | Ctrl+Shift+W | Cmd+W |
| Previous tab | Ctrl+Shift+Tab, Ctrl+Shift+Left, Ctrl+Page Up | Cmd+Shift+[ |
| Next tab | Ctrl+Tab, Ctrl+Shift+Right, Ctrl+Page Down | Cmd+Shift+] |
| Go to tab 1-8 | Alt+[1-8] | Cmd+[1-8] |
| Go to last tab | Alt+9 | Cmd+9 |
| Move tab | - | - |

## Split Management

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| New split (right) | Ctrl+Shift+O | Cmd+D |
| New split (down) | Ctrl+Shift+E | Cmd+Shift+D |
| Focus previous split | Ctrl+Super+[ | Cmd+[ |
| Focus next split | Ctrl+Super+] | Cmd+] |
| Focus split up | Ctrl+Alt+Up | Cmd+Option+Up |
| Focus split down | Ctrl+Alt+Down | Cmd+Option+Down |
| Focus split left | Ctrl+Alt+Left | Cmd+Option+Left |
| Focus split right | Ctrl+Alt+Right | Cmd+Option+Right |
| Toggle split zoom | Ctrl+Shift+Enter | Cmd+Shift+Enter |
| Resize split up | Ctrl+Super+Shift+Up | Cmd+Ctrl+Up |
| Resize split down | Ctrl+Super+Shift+Down | Cmd+Ctrl+Down |
| Resize split left | Ctrl+Super+Shift+Left | Cmd+Ctrl+Left |
| Resize split right | Ctrl+Super+Shift+Right | Cmd+Ctrl+Right |
| Equalize splits | Ctrl+Super+Shift+= | Cmd+Ctrl+= |

## Copy & Paste

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Copy | Ctrl+Shift+C | Cmd+C |
| Paste | Ctrl+Shift+V | Cmd+V |
| Paste from selection | Shift+Insert | - |

## Text Navigation

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Scroll to top | Shift+Home | Cmd+Home |
| Scroll to bottom | Shift+End | Cmd+End |
| Scroll page up | Shift+Page Up | Cmd+Page Up |
| Scroll page down | Shift+Page Down | Cmd+Page Down |
| Jump to previous prompt | Ctrl+Shift+Page Up | Cmd+Up |
| Jump to next prompt | Ctrl+Shift+Page Down | Cmd+Down |
| Clear screen | - | Cmd+K |

## Font Size

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Increase font size | Ctrl++/Ctrl+= | Cmd++/Cmd+= |
| Decrease font size | Ctrl+- | Cmd+- |
| Reset font size | Ctrl+0 | Cmd+0 |

## Configuration

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Open config | Ctrl+, | Cmd+, |
| Reload config | Ctrl+Shift+, | Cmd+Shift+, |

## Inspector

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Toggle inspector | Ctrl+Shift+I | Cmd+Option+I |

## Scrollback

| Action | Windows/Linux | macOS |
|--------|--------------|-------|
| Write scrollback to file (paste) | Ctrl+Shift+J | Cmd+Shift+J |
| Write scrollback to file (open) | Ctrl+Shift+Alt+J | Cmd+Shift+Option+J |

Note: These are the default keybindings. All keybindings can be customized through the configuration file using the `keybind` option.

Since this list can be outdated or changed, you can always get the list from **Ghostty** itself.

```shell
ghostty +list-keybinds
super + alt   + shift + j       write_screen_file:open
super + alt   + shift + w       close_all_windows
super + alt   + i               inspector:toggle
super + alt   + w               close_tab
super + alt   + up              goto_split:up
super + alt   + down            goto_split:down
super + alt   + right           goto_split:right
super + alt   + left            goto_split:left
super + ctrl  + f               toggle_fullscreen
super + ctrl  + equal           equalize_splits
super + ctrl  + up              resize_split:up,10
super + ctrl  + down            resize_split:down,10
super + ctrl  + right           resize_split:right,10
super + ctrl  + left            resize_split:left,10
super + shift + d               new_split:down
super + shift + j               write_screen_file:paste
super + shift + t               toggle_quick_terminal
super + shift + v               paste_from_selection
super + shift + w               close_window
super + shift + comma           reload_config
super + shift + left_bracket    previous_tab
super + shift + right_bracket   next_tab
super + shift + up              jump_to_prompt:-1
super + shift + down            jump_to_prompt:1
super + shift + enter           toggle_split_zoom
ctrl  + shift + tab             previous_tab
super + a                       select_all
super + c                       copy_to_clipboard
super + d                       new_split:right
super + k                       clear_screen
super + n                       new_window
super + q                       quit
super + t                       new_tab
super + v                       paste_from_clipboard
super + w                       close_surface
super + zero                    reset_font_size
super + physical:one            goto_tab:1
super + physical:two            goto_tab:2
super + physical:three          goto_tab:3
super + physical:four           goto_tab:4
super + physical:five           goto_tab:5
super + physical:six            goto_tab:6
super + physical:seven          goto_tab:7
super + physical:eight          goto_tab:8
super + physical:nine           last_tab
super + comma                   open_config
super + minus                   decrease_font_size:1
super + plus                    increase_font_size:1
super + equal                   increase_font_size:1
super + left_bracket            goto_split:previous
super + right_bracket           goto_split:next
super + up                      jump_to_prompt:-1
super + down                    jump_to_prompt:1
super + right                   text:\x05
super + left                    text:\x01
super + home                    scroll_to_top
super + end                     scroll_to_bottom
super + page_up                 scroll_page_up
super + page_down               scroll_page_down
super + enter                   toggle_fullscreen
super + backspace               text:\x15
alt   + right                   esc:f
alt   + left                    esc:b
ctrl  + tab                     next_tab
shift + up                      adjust_selection:up
shift + down                    adjust_selection:down
shift + right                   adjust_selection:right
shift + left                    adjust_selection:left
shift + home                    adjust_selection:home
shift + end                     adjust_selection:end
shift + page_up                 adjust_selection:page_up
shift + page_down               adjust_selection:page_down
```

It even includes your own, like my custom keybinding:

```text
super + shift + t               toggle_quick_terminal
```

As specified in: `~/.config/ghostty/config`

```text
keybind = global:cmd+shift+t=toggle_quick_terminal
```
