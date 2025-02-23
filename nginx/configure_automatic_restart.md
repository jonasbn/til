# Configure Automatic Restart

Yesterday I experienced downtime on my NginX setup. I did [a write up](https://dev.to/jonasbn/downtime-5gn7) of the trouble shooting process, but one of the things I learned, which was also was actionable was configuring `systemd` to automatically restart my NginX in case of an incident like this.

The configuration file:

- `/etc/systemd/system/nginx.service`

Can under the `[Service]` section have the following added:

```shell
Restart=always
RestartSec=5s
```

I have no idea on how to test this at this time and I am still researching the root cause of the incident, but this was ready a nice extension to my configuration, which is just the default, since everything else is done it the site configuration for NginX.
