# Tmux Cheat Sheet & Quick Reference

## Sessions

- `tmux`  
- `tmux new`  
- `tmux new-session`  
- `new` — start a new session  
- `tmux new-session -A -s mysession` — start or attach to a session named `mysession`  
- `tmux new -s mysession` — start a new session named `mysession`  
- `: kill-session` — kill/delete the current session  
- `tmux kill-ses -t mysession` / `tmux kill-session -t mysession` — kill session `mysession`  
- `tmux kill-session -a` — kill all sessions but the current  
- `tmux kill-session -a -t mysession` — kill all sessions except `mysession`  
- `Ctrl + b $` — rename session  
- `Ctrl + b d` — detach from session  
- `: attach -d` — detach other clients on the session  
- `tmux ls` / `tmux list-sessions`  
- `Ctrl + b s` — show all sessions  
- `tmux a` / `tmux at` / `tmux attach` / `tmux attach-session` — attach to the last session  
- `tmux a -t mysession` / `tmux attach -t mysession` — attach to `mysession`  
- `Ctrl + b w` — session and window preview  
- `Ctrl + b (` — move to previous session  
- `Ctrl + b )` — move to next session  

## Windows

- `tmux new -s mysession -n mywindow` — start session `mysession` with window `mywindow`  
- `Ctrl + b c` — create a new window  
- `Ctrl + b ,` — rename current window  
- `Ctrl + b &` — close current window  
- `Ctrl + b w` — list windows  
- `Ctrl + b p` — go to previous window  
- `Ctrl + b n` — go to next window  
- `Ctrl + b 0` … `Ctrl + b 9` — switch/select window by number  
- `Ctrl + b l` — toggle last active window  
- `: swap-window -s 2 -t 1` — reorder windows (swap 2 with 1)  
- `: swap-window -t -1` — move current window left by one  
- `: move-window -s src_ses:src_win -t target_ses:target_win` — move a window across sessions  
- `: movew -s foo:0 -t bar:9` / `: movew -s 0:0 -t 1:9` — reposition window  
- `: move-window -r` / `: movew -r` — renumber windows to close gaps  

## Panes

- `Ctrl + b ;` — toggle last active pane  
- `: split-window -h`  
- `Ctrl + b %` — split the current pane with vertical line (i.e. vertical split)  
- `: split-window -v`  
- `Ctrl + b "` — split current pane horizontally  
- `: join-pane -s 2 -t 1` — join two windows as panes  
- `: join-pane -s 2.1 -t 1.0` — move a pane between windows  
- `Ctrl + b {` — move current pane left  
- `Ctrl + b }` — move current pane right  
- `Ctrl + b +` (or other arrow key combinations) — resize current pane (width/height)  
- `Ctrl + b o` — switch to next pane  
- `Ctrl + b q` — show pane numbers  
- `Ctrl + b q` + `0` … `9` — switch to a pane by number  
- `Ctrl + b z` — toggle pane zoom  
- `Ctrl + b !` — convert a pane into its own window  
- `Ctrl + b Ctrl + …` — resize current pane (alternate method)  
- `Ctrl + b x` — close current pane  

## Copy Mode

- `: setw -g mode-keys vi` — use vi keys in copy mode  
- `Ctrl + b [` — enter copy mode  
- `Ctrl + b PgUp` — enter copy mode and scroll one page up  
- `q` — quit copy mode  
- `g` — go to top line  
- `G` — go to bottom line  
- `h` / `j` / `k` / `l` — move left, down, up, right  
- `w` / `b` — move forward / backward one word  
- `/` — search forward  
- `?` — search backward  
- `n` / `N` — next / previous search occurrence  
- `Spacebar` — start selection  
- `Esc` — clear selection  
- `Enter` — copy selection  
- `Ctrl + b ]` — paste contents of buffer_0  
- `: show-buffer` — display buffer_0 contents  
- `: capture-pane` — copy visible pane contents to buffer  
- `: list-buffers` — show all buffers  
- `: choose-buffer` — show buffers and paste selected  
- `: save-buffer buf.txt` — save buffer to file  
- `: delete-buffer -b 1` — delete buffer 1  

## Misc

- `Ctrl + b :` — enter command mode  
- `: set -g OPTION` — set global option  
- `: setw -g OPTION` — set window-level option  
- `: set mouse on` — enable mouse support  

## Help & Info

- `tmux list-keys` / `: list-keys` — list all key bindings  
- `Ctrl + b ?` — show key bindings  
- `tmux info` — show details about all sessions, windows, panes, etc  

---

_This cheat sheet is adapted from [tmuxcheatsheet.com](https://tmuxcheatsheet.com/)._
