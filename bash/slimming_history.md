# Slimming history

If you want to have history from your shell with some more value ignoring all of the basic commands have a look at setting the environment variable: `HISTIGNORE`.

This is based on the example by Kenneth Geisshirt from [his slidedeck](http://www.slideshare.net/geisshirt/unleash-your-inner-console-cowboy-47244006) available at SlideShare, with my own addition.

```bash
$ export HISTIGNORE="pwd:ls:ls -l:cd:clear"
```

## Resources and References

1. [SlideShare](http://www.slideshare.net/geisshirt/unleash-your-inner-console-cowboy-47244006)
1. [Bash History Facilities](https://www.gnu.org/software/bash/manual/html_node/Bash-History-Facilities.html)
