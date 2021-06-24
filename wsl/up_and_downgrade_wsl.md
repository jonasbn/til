# Up and Downgrade

Since two versions of WSL exist, it is possible to up and downgrade.

You can downgrade single images from WSL2 to WSL1 and _vice-verse_.

To see what WSL versions your images have:

```text
C:\Users\jonasbn>wsl -l -v
  NAME                   STATE           VERSION
* Ubuntu-18.04           Running         2
  docker-desktop         Running         2
  docker-desktop-data    Running         2
  kali-linux             Stopped         2
```

You can set the WSL version for an image:

```shell
C:\Users\jonasbn>wsl --set-version kali-linux 1
Conversion in progress, this may take a few minutes...
```

```text
C:\Users\jonasbn>wsl -l -v
  NAME                   STATE           VERSION
* Ubuntu-18.04           Running         2
  docker-desktop         Running         2
  docker-desktop-data    Running         2
  kali-linux             Stopped         2
```

And when you list afterwards, you can observe that the version of the WSL for the image has changed.

```
C:\Users\jonasbn>wsl -l -v
  NAME                   STATE           VERSION
* Ubuntu-18.04           Running         2
  docker-desktop         Running         2
  docker-desktop-data    Running         2
  kali-linux             Stopped         1
```

## Resources and References

1. [dev.to: "Upgrading from WSL1 to WSL2" by Aditya Kanekar](https://dev.to/adityakanekar/upgrading-from-wsl1-to-wsl2-1fl9)
1. [Microsoft: "Windows Subsystem for Linux Installation Guide for Windows 10"](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
