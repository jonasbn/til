# Hide the config

Oftentimes you see you root of you repository becoming cluttered with configuration files for various tools and services.

I have started to move these files into a `.github` directory, which is a convention for GitHub.

Renovate also supports this, so you can move your configuration file into `.github/renovate.json`.

This is a nice way to hide the configuration file, but it also makes it easier to locate, since you know where to look.

You can store your Renovate configuration file in one of these locations:

1. `renovate.json`
1. `renovate.json5`
1. `.github/renovate.json`
1. `.github/renovate.json5`
1. `.gitlab/renovate.json`
1. `.gitlab/renovate.json5`
1. `.renovaterc`
1. `.renovaterc.json`
1. `.renovaterc.json5`
1. `package.json` (within a "renovate" section, this is however deprecated)

So for GitHub I prefer and recommend option 3.

- `.github/renovate.json`

## Resources and References

- [Renovate: Configuration Options](https://docs.renovatebot.com/configuration-options/)
