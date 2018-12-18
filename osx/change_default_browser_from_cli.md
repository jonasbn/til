# Set Default Browser From the Command Line

This can be done using the tool: `defaultbrowser`

Works like a charm.

With no arguments lists your browsers and marks the one being the default.

```bash
$ defaultbrowser
  iterm2
* chrome
  firefoxdeveloperedition
  safari
  vlc
  evernote
  netnewswire
```

Setting it is simply by providing an argument, matching the list

```
$ defaultbrowser chrome
```

Do note that this [displays a GUI dialog](https://github.com/kerma/defaultbrowser/issues/3), currently there is no fix for this minor inexpediency, the dialog can be expedites with a swift `⇥` (tab) followed by a `␣` (space).

## References

- [StackOverflow: Set default web browser via command line?](https://stackoverflow.com/questions/17528688/set-default-web-browser-via-command-line)
- [GitHub: kerma/defaultbrowser](https://github.com/kerma/defaultbrowser)
