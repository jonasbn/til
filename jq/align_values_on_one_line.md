# Align values on one line

Use string interpolation:

```shell
jq '.users[] | "\(.first) \(.last)"'
```

## Resources and References

- [StackOverflow: "Using jq to parse and display multiple fields in a json serially"](https://stackoverflow.com/questions/28164849/using-jq-to-parse-and-display-multiple-fields-in-a-json-serially)
- [jq manual: String Interpolation](http://stedolan.github.io/jq/manual/#Stringinterpolation-%5C%28foo%29)
