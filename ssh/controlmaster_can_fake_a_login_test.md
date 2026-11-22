# ControlMaster can fake a "login still works" test

`ControlMaster`/`ControlPersist` in `~/.ssh/config` reuse one SSH connection for many commands, which makes a string
of small diagnostic commands fast:

```text
Host myhost
    ControlMaster auto
    ControlPath ~/.ssh/cm-%r@%h:%p
    ControlPersist 5m
```

The trap: if you change something that affects authentication (hardening `sshd_config`, rotating a key, touching
`authorized_keys`) and then "test" that login still works by running another SSH command against the same alias,
you may just be reusing the already-open, already-authenticated connection. No new authentication happens, so the
test proves nothing — it can pass even if a fresh login would now fail. The command's own output can look entirely
normal, sometimes with a line like `Shared connection to <host> closed` as the only hint that nothing new occurred.

This happened twice in practice while hardening two small hosts: an earlier "it still works" check was later
corrected because it had silently reused a multiplexed connection instead of authenticating again.

## How to test for real

Either force a fresh connection first:

```bash
ssh -O stop myhost      # tears down the multiplexed master
ssh myhost 'id'         # this one has to authenticate from scratch
```

Or check the server's own evidence instead of trusting the client:

```bash
sudo tail -f /var/log/auth.log   # or: journalctl -u ssh -f
```

and confirm a new `Accepted publickey for ...` line appears at the time you expect, not an old one from before the
change.

## Resources and References

- [ssh_config(5) — ControlMaster, ControlPersist](https://man.openbsd.org/ssh_config)
- [Hardening on SSH server](hardening_ssh_server.md)
