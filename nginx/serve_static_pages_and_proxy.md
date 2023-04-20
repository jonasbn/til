# Serve Static Pages and Proxy

For my [pxy.fi](https://pxy.fi) site, I want to serve static pages and proxy requests to DigitalOcean serverless functions.

I use [Nginx](https://nginx.org/en/) to serve static pages and as a reverse proxy and requests not matching static pages are sent to a serverless function hosted on DigitalOcean.

I found the following snippet in the Nginx documentation:

```nginx
server {
    location / {
        proxy_pass http://localhost:8080/;
    }

    location ~ \.(gif|jpg|png)$ {
        root /data/images;
    }
}
```

I altered in to my own needs:

```nginx
server {

    # other stuff going on here

    location / {
        limit_except GET {
            deny all;
        }
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-NginX-Proxy true;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_ssl_server_name on;
        proxy_pass https://faas-ams3-2a2df116.doserverless.co/api/v1/web/fn-a7240b26-c6c7-46df-808a-71fac192afd8/pxy/redirect/;
        proxy_ssl_session_reuse off;
        proxy_pass_header Server;
        proxy_cache_bypass $http_upgrade;
        proxy_redirect off;
    }
    location ~ /health.html {
        root /var/www/html;
    }
}
```

So now I can access a static page at [https://pxy.fi/health.html](https://pxy.fi/health.html) and a proxy other requests at [https://pxy.fi/](https://pxy.fi/), which is the main feature of this site.

The URL: `health.html` is used for monitoring. See this [article from Better Stack][betterstack] on the topic.

This way I can monitor that my site is up and running and that the reverse proxy is up.

## Resources and References

- [Nginx: "Setting Up a Simple Proxy Server"](http://nginx.org/en/docs/beginners_guide.html#static)
- [Better Stack: "Get Started with Server Health Checks"][betterstack]

[betterstack]: https://betterstack.com/community/guides/monitoring/health-checks/
