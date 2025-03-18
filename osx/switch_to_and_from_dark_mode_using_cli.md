# Switch to and from Dark Mode Using Command Line

I got a new place to sit at work and sometimes the sun light is too much.

Luckily I found [a brief blog post][SIMONE] on how to switch to and from dark mode from the command line.

```shell
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'
```

The setting is a boolean so it works both ways, as a light switch practically.

This is one those small things, where open menus a click around and when you finally get around to doing something about, you do not understand why you did not do it earlier - the dishwasher acquisition syndrome.

## Resources and References

- [Simonewebdesign blog: "How to enable Dark Mode on macOS with the command line"][SIMONE]

[SIMONE]: https://simonewebdesign.it/how-to-enable-dark-mode-macos-command-line/
