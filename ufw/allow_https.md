# Allow HTTPS through your UFW firewall

Allowing HTTPS through your UFW firewall is easy.

```bash
sudo ufw allow https
```

If you have IPv6 enabled, you will also handle that.

So you status could look something along the lines of:

```bash
sudo ufw status verbose
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), disabled (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
80/tcp (Nginx HTTP)        ALLOW IN    Anywhere
22/tcp                     ALLOW IN    Anywhere
443                        ALLOW IN    Anywhere
80/tcp (Nginx HTTP (v6))   ALLOW IN    Anywhere (v6)
22/tcp (v6)                ALLOW IN    Anywhere (v6)
443 (v6)                   ALLOW IN    Anywhere (v6)
```

The above example has both HTTP and HTTPS enabled, in addition to SSH and all for both IPv4 and IPv6.

## Resources and References

- [Hashrocket](https://til.hashrocket.com/posts/llqy66w55a-allow-https-through-your-ufw-firewall)
