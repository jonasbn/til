# Install XML::LibXML on MacOS

This assumes that you have `libxml2` installed via **Homebrew**

```bash
$ brew install libxml2
```

Add the following to your `~/.bash_profile`

```bash
# PATH
PATH="/usr/local/opt/libxml2/bin:$PATH"

export PATH
```

This makes sure the correct `xml2-config` is executed.

## References

- [Wiki of Alex Schroeder](https://alexschroeder.ch/wiki/2017-11-03_libxml2_and_Homebrew_and_Perl)
