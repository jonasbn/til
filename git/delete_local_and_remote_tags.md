# Delete local and remote tags

Sometimes you accidentally create a _bAd_ tag

```bash
# local
$ git tag -d <tagname>

# remote
$ git push --delete origin <tagname>
```

I have created a little utility in my path with the above code. Available as [a Gist](https://gist.github.com/jonasbn/467e9e52b248c957b66f910cfa07256d).

## References

- [DuckDuckGo](https://duckduckgo.com/?q=git+delete+tags&iax=1&ia=qa#)
