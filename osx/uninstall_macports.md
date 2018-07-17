# Uninstall MacPorts

This is the quick guide to delete MacPorts:

```bash
sudo port -fp uninstall installed
```

```bash
$ sudo rm -rf \
        /opt/local \
        /Applications/DarwinPorts \
        /Applications/MacPorts \
        /Library/LaunchDaemons/org.macports.* \
        /Library/Receipts/DarwinPorts*.pkg \
        /Library/Receipts/MacPorts*.pkg \
        /Library/StartupItems/DarwinPortsStartup \
        /Library/Tcl/darwinports1.0 \
        /Library/Tcl/macports1.0 \
        ~/.macports
```

And finally you have to remove the **MacPorts** user (`macports`) and group if present.

Check for presence of `macports` user

```bash
$  dscl . list /Users | grep -v '^_'
```

Delete the user

```bash
$ sudo /usr/bin/dscl . -delete "/Users/macports"
```

Check for the presence of the `macports` group group

```bash
$ sudo dscl . -delete "/Groups/macports"
```

Source: [MacPorts](https://guide.macports.org/chunked/installing.macports.uninstalling.html)

Source: [StackExchange](https://apple.stackexchange.com/questions/317576/how-to-delete-macports-user-after-using-the-migration-assistant)
