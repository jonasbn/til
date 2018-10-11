# Getting time in another timezone

Sometimes you need the time in another timezone, to open a browser and _google_ or you grab your iPhone and open the clock app or you install one of the timezone applications on your Mac.

Well there is absolutely no need to, since you have the `date` command.

```shell
$ TZ=America/New_York date
TZ=America/New_York date

2017-10-29 13:24:50
```

So when you are eagerly awaiting you favorite Twitch live-stream to start you can do the following:

```bash
$ while true; do clear; echo -n "New York; "; TZ=America/New_York date; echo -n "Copenhagen: "; date; sleep 60; done
```

```
New York; 2017-10-29 13:24:50
Copenhagen: 2017-10-29 18:24:50
```

## References

- [Man-page for date](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/date.1.html)
