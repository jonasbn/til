# How to set up UFW Firewall

UFW or `ufw` is a magnificent little firewall.

Start by checking current status:

```bash
sudo ufw status
Status: inactive
```

Allow for outgoing connections, the default recommendation.

```bash
sudo ufw default allow outgoing
```

Deny for incoming connections, the default recommendation.

```bash
sudo ufw default deny incoming
```

Allow for SSH connections.

```bash
sudo ufw allow ssh
```

Enable UFW.

```bash
sudo ufw enable
```

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

The above example has IPv6 enabled, see my [separate TIL](disable_or_enable_ipv6.md) on that.

There is so much more you can do, I am barely scratching the surface here, but what I want to demonstrate is how easy it is to get started. I have seen UFW referred to as
the "Uncomplicated Firewall", and I think that is a very suitable name.

## Resources and References

- [FAQ](https://www.cyberciti.biz/faq/how-to-configure-firewall-with-ufw-on-ubuntu-20-04-lts/)
