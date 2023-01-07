# Hardening on SSH server

1. Use public key authentication over passwords: `PasswordAuthentication no`
2. Disable login attempts with empty passwords: `PermitEmptyPasswords no`
3. Disable root login: `PermitRootLogin no`
4. Disable SSHv1 and use SSHv2: `Protocol 2`
5. Disable X11 Forwarding: `X11Forwarding no`

## Resources and References

- ["SSH server hardening" from IT Tavern](https://ittavern.com/ssh-server-hardening/)
- ["sshd_config - How to Configure the OpenSSH Server?"](https://www.ssh.com/academy/ssh/sshd_config)
- ["How to set preferred authentication method for SSH"](https://www.simplified.guide/ssh/specify-authentication-method)
