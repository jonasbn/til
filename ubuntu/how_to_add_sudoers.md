# How to add sudoers

Since we should not run as `root` we need `sudo` and to add our user to the `sudoers` group. This is how you do it.

The prerequisite is that you have `sudo` installed and you are logged in as `root`.

```bash
$ usermod -aG sudo username
```

Example:

```bash
usermod -aG sudo pfalken
```

To verify issue the command: `groups username` and you should see `sudo` in the list.

```bash
groups pfalken
pfalken, sudo
```

## Resources and References

- [Linuxize: https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/](https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/)
