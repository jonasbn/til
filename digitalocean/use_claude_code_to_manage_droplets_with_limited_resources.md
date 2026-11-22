# Use Claude Code to manage droplets with limited resources

I run a small fleet of DigitalOcean droplets (1 vCPU, at most 1 GB RAM, no swap) and wanted an AI assistant to help with
diagnosis, maintenance and change work on them. The catch: these hosts are too small and too important to just hand over
admin access, and Claude Code itself is far too heavy to install on them. The motivation was to get the benefit of an
assistant for ops work, without trusting the assistant with the keys — the servers, not the assistant, had to decide what
is actually allowed to happen.

The answer was to keep Claude Code entirely on my Mac, talking to the droplets only over SSH as a deliberately
unprivileged user, with the servers enforcing the boundary rather than Claude's own good behaviour.

## Setup

1. **A dedicated, read-only SSH user on each droplet** (`claude-ro`): no password, no sudo, just the `adm` and
   `systemd-journal` groups so it can read logs and the journal. A separate SSH key on the Mac, used only for this
   login, with `IdentitiesOnly yes` in `~/.ssh/config` so it can never offer my admin key by accident.
2. **An optional, narrowly-scoped operator user** (`claude-ops`), added only where a specific root-level action keeps
   recurring (reloading a reverse proxy, in my case). Its sudo rights are limited, in `/etc/sudoers.d/`, to a short list
   of exact commands run through wrapper scripts that validate input before acting — no wildcards, no shells, no
   editors, and it cannot edit configuration.
3. **Permission rules in Claude Code's own `.claude/settings.json`**, as a second, weaker layer: the read-only alias is
   pre-approved, the admin and operator aliases always prompt, and reading `~/.ssh`, `.env` files and key material is
   denied outright.
4. **A written process**, checked into the repo Claude works from: diagnose first, plan every change with evidence and
   a rollback before touching anything, snapshot before risky operations, verify from more than one vantage point, and
   log what happened.

Three layers, in decreasing order of strength: what the server itself allows the account to do, what Claude Code's
permission rules allow it to attempt, and the documented process guiding what it should attempt in the first place. A
wrong command, or a log line that tries to look like an instruction, still can't change anything, because the account
running it has no privilege to change anything.

## Benefits

- Read-only diagnosis (load, memory, disk, failed units, listening sockets, pending updates) with one command, against
  documented thresholds, with no privileged access needed at all.
- Drift detection between a live config and a version-controlled copy.
- A repeatable change procedure: plan, snapshot, apply by hand, verify from independent angles, write it down.
- A handful of safe, audited actions without ever handing over admin rights (validate and reload a service, report its
  status).
- A decision trail that survives the session: a change log, issues for anything parked, and per-host notes on what is
  actually true right now.

## Limitations

- It only works while the Mac is online, the SSH keys are loaded and a human is present — there is no scheduling or
  alerting, and nothing watches the servers between sessions.
- It cannot touch DigitalOcean itself: no snapshots, no resizing, nothing in the control panel. It can only confirm a
  snapshot exists, read-only, via `doctl`.
- Anything that needs root is applied by a human, by hand, one change at a time. The narrowly-scoped operator account
  exists only for a few validate/reload actions and deliberately cannot install or edit configuration.
- The read-only account can't see root-only files, `ufw`/`iptables` state, or anything holding a secret — that has to be
  pasted in by a human instead.
- The mirrored config is a manual, partial copy for diagnosis and drift-checking, not infrastructure as code: it isn't
  continuously enforced and doesn't cover secrets or ownership/permission bits.
- On a host this small, memory is the constraint: a service reload, a Python-based tool, or a whole-log scan all have to
  be weighed rather than run freely.
- `ControlMaster`/`ControlPersist` reusing an SSH connection can make a "does a fresh login still work" test pass
  silently without actually testing anything — worth remembering before trusting that kind of verification.

## Resources and References

- [Claude Code](https://claude.com/claude-code)
- [doctl](https://docs.digitalocean.com/reference/doctl/) — DigitalOcean's CLI, used here strictly read-only
- [Use doctl](use_doctl.md)
