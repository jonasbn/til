# Wipe a Hard Drive Using Kali Linux

`shred` is not listed in the **Kali Linux** [tools listing](https://www.kali.org/tools/), but it is available, when doing live boot.

This great tool can be used to reset a hard drive and do continuous overwrites so it cannot be restored.

You do not even have to mount the device you want to wipe.

```zsh
sudo shred -vfz -n 10 /dev/sda
```

- `-v` means verbose, showing progress
- `-f` means change permissions to allow writing if necessary
- `-z` add a final overwrite with zeros to hide shredding
- `-n` overwrite `N` times instead of the default (`3`)

My example overwrites the Windows partitions 10 times.

Alternatively you can [do it from Windows][microsoft], but doing from **Kali Linux** surely feels good.

## Resources and References

1. [Computerhope: shred](https://www.computerhope.com/unix/shred.htm)
1. [Howtoforge: How to Securely Destroy/Wipe Data on Hard Drives with shred on Linux](https://www.howtoforge.com/how-to-securely-destroy-wipe-data-on-hard-drives-with-shred)
2. [Microsoft: how can i wipe out a hard drive in windows 7?][microsoft]

[microsoft]: https://answers.microsoft.com/en-us/windows/forum/all/how-can-i-wipe-out-a-hard-drive-in-windows-7/d52af648-92c5-4ceb-873b-542e7d6bf02d