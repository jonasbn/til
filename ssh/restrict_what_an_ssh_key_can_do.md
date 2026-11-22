# Restrict what an SSH key can do

An SSH key doesn't have to be all-or-nothing. `authorized_keys` options let you hand out a key that can only do the
one thing it's meant for, which matters most for service accounts or automation that shouldn't get a full,
unrestricted shell.

## `restrict`: strip everything by default

Prefix the key's line in `authorized_keys` with `restrict` to disable pty allocation, port/agent/X11 forwarding and
`authorized_keys` environment processing in one go, then re-enable only what's actually needed:

```text
restrict,pty ssh-ed25519 AAAA... service-account@example
```

This is the right default for an unprivileged account used only to run commands or read logs — there's no forwarding
or interactive shell to abuse if the key ever leaks.

## `permitopen`: scope a key to one destination

For a key whose only job is forwarding through a jump host, combine `restrict` with `port-forwarding` and
`permitopen` so the key can tunnel to exactly one address and port, and nowhere else:

```text
restrict,port-forwarding,permitopen="10.0.0.5:22" ssh-ed25519 AAAA... jump-only@example
```

Even if this key is used to reach the jump host, it cannot be used to pivot anywhere except the one destination
listed. Multiple `permitopen` entries (comma-separated) are allowed if the key legitimately needs more than one
target.

## `IdentitiesOnly yes`: don't let the wrong key get offered

When `~/.ssh/config` has several `Host` entries with different, purpose-specific keys, add `IdentitiesOnly yes` to
each one so the client only ever offers the key configured for that alias, not every key loaded in the agent:

```text
Host jump-only
    HostName 10.0.0.1
    User jump-only
    IdentityFile ~/.ssh/jump_only_key
    IdentitiesOnly yes
```

Without it, an SSH agent holding multiple keys will try them all, which both leaks which keys exist to the server
and risks a more privileged key being offered to a host that should only ever see the restricted one.

## Resources and References

- [sshd(8) — AUTHORIZED_KEYS FILE FORMAT](https://man.openbsd.org/sshd#AUTHORIZED_KEYS_FILE_FORMAT)
- [ssh_config(5) — IdentitiesOnly](https://man.openbsd.org/ssh_config)
- [Hardening on SSH server](hardening_ssh_server.md)
