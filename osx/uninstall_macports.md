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

Source: [MacPorts](https://guide.macports.org/chunked/installing.macports.uninstalling.html)
