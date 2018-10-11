# Scheduling Timed Jobs

Since `cron` is no longer supported on **MacOS** you have to use the provided **Launch Agent** instead `launchd`.

This is done by adding configuration file in plist format (XML) to a directory in your library structure, e.g. `~/Library/LaunchAgents/`.

The following example updates my local CPAN::Mini mirror every day at 12:00 AM.

Filename: `com.jonasbn.minicpan.plist`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
          http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.jonasbn.minicpan</string>
    <key>Program</key>
    <string>/Users/jonasbn/bin/minicpan.sh</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>12</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
</dict>
</plist>
```

## Sleep and Power

All launchd jobs are skipped when the computer is turned off or asleep; they will not run until the next designated time occurs, if the computer is turned on or not asleep.

## References

- [Alvin Alexanders blog](https://alvinalexander.com/mac-os-x/mac-osx-startup-crontab-launchd-jobs)
- [Apple Documentation](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/ScheduledJobs.html#//apple_ref/doc/uid/10000172i-CH1-SW2)
