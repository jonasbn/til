# Hooks

I am just getting to learn hooks for Claude.

[The official documentation](https://code.claude.com/docs/en/hooks#hooks-reference) is okay.

I often found that I did not notice when Claude Code was finished or wanted my attention. I fell over this repository with a nifty set up.

- [GitHub: adslaton/claude-notification-hooks](https://github.com/adslaton/claude-notification-hooks)

Instead of installing all of that I ended up creating an MCP server for handling notifications guided by Claude. However after down configuring it, since I found out it was _too noisy_ with all my hooks, I down graded to plan use of hooks, lifted from `/.claude/settings.json`

```json
  "hooks": {
    "PermissionRequest": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "say",
            "args": ["Permission requested"]
          }
        ]
      }
    ],
    "StopFailure": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "say",
            "args": ["Stopping, failure occurred"]
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "say",
            "args": ["You have the con"]
          }
        ]
      }
    ]
  },
```

A funny thing about the MCP server solution, was that when I used **Claude** over `remote-control`, the MCP events would queue up on my laptop, so when I came back I would receive all the notifications at once, sounding like industrial techno.

The audible:

> you have the con
>

Seems to be sufficient for me for now, unfortunately it only works at the laptop, not the _remote controlling_ device.
