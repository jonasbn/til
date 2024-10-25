# Installing Nginx on Ubuntu, combined with UFW

Installing Nginx on a newer Ubuntu is easy. Just follow the steps below. The guide indicates version 20.04. I used it on 22.10.

If you are not aware on your exact version of Ubuntu, see my TIL: [How to enquire Ubuntu version](../ubuntu/how_to_enquire_version.md).

```bash
sudo apt update
sudo apt install nginx
```

```bash
sudo ufw app list
Available applications:
  Nginx Full
  Nginx HTTP
  Nginx HTTPS
  OpenSSH
```

> Nginx Full: This profile opens both port 80 (normal, unencrypted web traffic) and port 443 (TLS/SSL encrypted traffic)
>
> Nginx HTTP: This profile opens only port 80 (normal, unencrypted web traffic)
>
> Nginx HTTPS: This profile opens only port 443 (TLS/SSL encrypted traffic)

```bash
sudo ufw allow 'Nginx Full'
```

```bash
sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
Nginx HTTP                 ALLOW       Anywhere
443                        ALLOW       Anywhere
Nginx HTTP (v6)            ALLOW       Anywhere (v6)
443 (v6)                   ALLOW       Anywhere (v6)
```

```bash
sudo systemctl status nginx
...
```

Get your public IPv4 address from [icanhazip.com](https://icanhazip.com/).

```bash
curl -4 icanhazip.com

```bash
curl -6 icanhazip.com
```

Open the URL in your browser. You should see the default Nginx page.

```bash
curl http://<your-public-ipv4-address>
```

## Resources and References

- [DigitalOcean Tutorial: "How To Install Nginx on Ubuntu 20.04"](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04)
- [Canonical: "Install and configure Nginx](https://ubuntu.com/tutorials/install-and-configure-nginx)
