# Repeating an executable continuously

This is a quick replacement for setting up a cronjob or implementing a daemon while doing development of some kind is really nifty for when you want that particular behaviour where something runs repeatedly, but lack the time to implement the rest, since it is the repeated execution you need here and now.

The example is lifted from [StackOverflow](http://stackoverflow.com/questions/13593771/linux-repeat-command-automatically).

```bash
$ while true; do ls -l; sleep .5; done
```

I use is for development/test environments at work, which are not completely set up, but I want to mimic the behaviour in the production environment.

[Source: StackOverflow](http://stackoverflow.com/questions/13593771/linux-repeat-command-automatically)
