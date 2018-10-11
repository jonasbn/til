# Installing VMware Tools

Installing VMware native tools are the recommended way to get VMware tools installed.

Add the following line to the `/etc/apt/sources.list` file.

`deb http://ftp.debian.org/debian/ wheezy main contrib`

Run the commands:

```bash
$ sudo apt-get update
$ sudo apt-get install open-vm-tools
```

## References

- [VMware](http://partnerweb.vmware.com/GOSIG/Debian_7.html)