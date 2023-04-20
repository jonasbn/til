# Listen on both IPv4 and IPv6

This is kind of the universal Nginx configuration. It will listen on both IPv4 and IPv6.

```nginx
server {
    listen 80;
    listen [::]:80;
    server_name example.com;
    root /var/www/example.com;
}
```

I ended up with the following configuration for my [pxy.fi](https://pxy.fi) site.

```nginx
server {
    listen 80 default_server;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name pxy.fi;

    # Other stuff going on here
}
```

First I redirect all HTTP requests to HTTPS. And I listen on both IPv4 and IPv6.

There is some discussion about this on [ServerFault](https://serverfault.com/questions/638367/do-you-need-separate-ipv4-and-ipv6-listen-directives-in-nginx), but I went with the separation of the two directives since it is easier to read.

## Resources and References

- [ServerFault: "Do you need separate IPv4 and IPv6 listen directives in Nginx?"](https://serverfault.com/questions/638367/do-you-need-separate-ipv4-and-ipv6-listen-directives-in-nginx)
