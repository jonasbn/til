# Change password on Window 7 Using Kali Linux

Over time my family has accumulated a heap of old computers, so in order to clean these in order to get them handed over to recycling, I need to clean them. Some of them are so old nobody can remember the credentials, so I was looking into _hacking_ them to get access so I could backup valuable data prior to resetting the machines.

I found out that a **Kali Linux** live USB is a great tool.

I followed [this guide][GUIDE], it is however a tad _crappy_ since it is drowning in ads and the original blog post referenced is _gone_.

Here follows my write-up with own notes.

Boot with the **Kali Linux** USB, open a terminal/console.

Mount the Window hard drive.

```zsh
mount /dev/sda3 /mnt
```

I had to try a few times before finding the right drive, I tried `/dev/sda1` and `/dev/sda2` before succeeding with `/dev/sda3`.

Then go to the `config/` directory:

```zsh
cd /mnt/Windows//System32/config/
```

You can list the entries in the PAM file, using the tool [`chntpw`][chntpw]. [`samdump2`][samdump2] is another interesting tool for inspecting SAM files.

```
chntpw -l SAM
```

Decide on what user you want to reset the password for:

```
chntpw -u Administrator SAM
```

Use the dialog and reset the password.

Reboot and log in as the designated user.

## Resources and References

1. [Blog post][GUIDE]
2. [chntpw][chntpw]
3. [samdump2][samdump2]

[GUIDE]: https://null-byte.wonderhowto.com/forum/crack-window-password-with-kali-live-usb-0170855/
[chntpw]: https://www.kali.org/tools/chntpw/
[samdump2]: https://www.kali.org/tools/samdump2/
