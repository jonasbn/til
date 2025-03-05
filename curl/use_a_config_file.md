# Use a Config File

I was last week days old when I discovered that `curl` can use configuration files.

So for now I have created a basic one. Placed in a default place for consumption on all uses.

- `$XDG_CONFIG_HOME/.curlrc`

```
# Documentation:
# - https://everything.curl.dev/cmdline/configfile.html
#

# Follow redirects
--location

# Suppress progress meter, set to off to disable, it conflicts with jq processing
# which I do a lot, I do not download a lot a do not need a progress meter
--no-progress-meter

# verbose output also conflicts with jq
--silent
```

Now you can and will get into a situation where you do not want to use your regular configuration, then you need to add all of the flags on the command line or add  another config file, perhaps local to your project.

To get around my configuration I need to do:

- `--no-location`
- `--progress-meter`

Unforunately **curl** does not seem to have an option to ignore the config files and it seems to stack the options.

## Resources and References

- [Everything curl: Config file](https://everything.curl.dev/cmdline/configfile.html)
