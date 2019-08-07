# Permission on SSH files and folders

Permissions should read:

- `.ssh/` directory: `700` (`drwx------`)
- public key (`.pub` file): `644` (`-rw-r--r--`)
- private key (`id_rsa`): `600` (`-rw-------`)
- Your home directory should not be writeable by the group or others: `755` (`drwxr-xr-x`).

## Resources

- [SuperUsers](https://superuser.com/questions/215504/permissions-on-private-key-in-ssh-folder)
