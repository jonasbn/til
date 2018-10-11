# Automatically Clean up after Docker Daily

The command we are going to be executing is `docker system prune -f` it removes all stopped containers, all unused networks, dangling images and empties build caches.

On **MacOS** create a file in: `~/Library/LaunchAgents` named `com.jonasbn.dockersystemprune.plist` exchange the `jonasbn` for your own username.

Insert the following contents:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
          http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>DockerSystemPrue</string>
    <key>Program</key>
    <string>/usr/local/bin/docker system prune -f</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>3</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
</dict>
</plist>
```

Now install the timed job:

```bash
$ launchctl load -w ~/Library/LaunchAgents/com.jonasbn.dockersystemprune.plist
```

You can always uninstall it again using:

```bash
$ launchctl unload ~/Library/LaunchAgents/com.jonasbn.dockersystemprune.plist
```

## References

- [Docker Tip 32](https://nickjanetakis.com/blog/docker-tip-32-automatically-clean-up-after-docker-daily)
