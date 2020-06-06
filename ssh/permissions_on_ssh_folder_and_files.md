# Permission on SSH files and folders

SSH configuration data and related is _pertty_ sensitive, so it is important to set the right permissions.

Some SSH clients like the OpenSSH client, might assist you and you can observe warnings emitted by the client like the following:

```
ssh returns “Bad owner or permissions on ~/.ssh/config”
```

Permissions on folder and files should read:

- `.ssh/` directory: `700` (`drwx------`)
- public key (`.pub` file): `644` (`-rw-r--r--`)
- private key (`id_rsa`): `600` (`-rw-------`)
- Your home directory should not be writeable by the group or others: `755` (`drwxr-xr-x`).
- Configuration file: `.ssh/config`: `600` (`-rw-------`)

## Resources

- [SuperUser: Permissions on private key in .ssh folder?](https://superuser.com/questions/215504/permissions-on-private-key-in-ssh-folder)
- [ServerFault: ssh returns “Bad owner or permissions on ~/.ssh/config”](https://serverfault.com/questions/253313/ssh-returns-bad-owner-or-permissions-on-ssh-config)
