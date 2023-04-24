# Enable or Disable IPv6 in UFW Firewall

You have to edit: `/etc/default/ufw` and set `IPV6=yes` or `IPV6=no`. The first to enable IPv6, the latter to disable it.

Changing the value with a running instance, will require that you disable and reenable.

```bash
sudo ufw disable
sudo ufw enable
```

Inspect the status and settings.

```bash
Check the current status:

```bash
sudo ufw status verbose
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), disabled (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere
22/tcp (v6)                ALLOW IN    Anywhere (v6)
```

## Resources and References

- ["How To Setup A Firewall with UFW on Ubuntu & Debian"](https://tecadmin.net/setup-ufw-for-firewall-on-ubuntu-and-debian/)
