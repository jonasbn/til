# Mount a shared folder

You can mount folders from your host operation system (OSX). This is useful if **Fusion** is used in your development proces.

```bash
sudo apt-get install open-vm-tools
sudo mkdir /mnt/hgfs
sudo mount -t vmhgfs .host:/ /mnt/hgfs
```

Requires VMware Tools, see also [my til on installation](install_vmware_tools.md).

[Source: SuperUser](http://superuser.com/questions/588304/no-mnt-hgfs-in-ubuntu-guest-under-vmware-fusion)
