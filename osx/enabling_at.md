# Enabling at

The `at` command and related commands is not enabled by default on OSX (High Sierra), the `atrun` manual page. Provides the following information.

```bash
$ sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist
```

Source [atrun 8 manual page](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/atrun.8.html)
