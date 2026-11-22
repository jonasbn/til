# Hardening on SSH server

1. Use public key authentication over passwords: `PasswordAuthentication no`
2. Disable login attempts with empty passwords: `PermitEmptyPasswords no`
3. Disable root login: `PermitRootLogin no`
4. Disable SSHv1 and use SSHv2: `Protocol 2`
5. Disable X11 Forwarding: `X11Forwarding no`

## Apply changes through a drop-in, not `sshd_config` directly

Put a directive like `PermitRootLogin no` in a numbered file under `/etc/ssh/sshd_config.d/`, for example
`40-no-root-login.conf`, instead of editing `/etc/ssh/sshd_config` itself:

```text
PermitRootLogin no
```

`sshd` reads drop-ins in lexical order, and reads all of them _before_ the main `sshd_config` file, using the first
value it sees for any given directive. A low number such as `40-` therefore wins over a higher one (a common trap:
cloud-init often ships its own `50-cloud-init.conf`) and over whatever the distribution's default file sets. This
also keeps the change isolated and easy to revert (`rm` the file) without touching the rest of the configuration.

## Validate before reloading, every time

```bash
sudo sshd -t                                  # syntax check only
sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication)'   # the *effective* config, after drop-ins
sudo systemctl reload ssh
```

`sshd -t` only checks syntax; `sshd -T` dumps the configuration `sshd` would actually use once drop-in order and
defaults are resolved, so it is the only way to be sure a change took effect as intended. Keep a second, already
authenticated session open while you reload, in case the change locks you out, and confirm with a genuinely new
login afterwards — see [ControlMaster can fake a "login still works" test](controlmaster_can_fake_a_login_test.md)
for why a login test can otherwise lie to you.

## Resources and References

- ["SSH server hardening" from IT Tavern](https://ittavern.com/ssh-server-hardening/)
- ["sshd_config - How to Configure the OpenSSH Server?"](https://www.ssh.com/academy/ssh/sshd_config)
- ["How to set preferred authentication method for SSH"](https://www.simplified.guide/ssh/specify-authentication-method)
- [sshd_config(5)](https://man.openbsd.org/sshd_config)
