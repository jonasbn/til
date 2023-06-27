# Specify Colours

You can specify the colours used by `jq -C` by setting the `JQ_COLORS` environment variable. This works for the values not the keys etc.

Example:

```shell
export JQ_COLORS="5;36:0;39:0;39:1;37:5;33:1;39:1;50"; http https://jsonplaceholder.typicode.com/posts/1/comments | jq -C
```

The default settings are: `JQ_COLORS=1;30:0;39:0;39:0;39:0;32:1;39:1;39`

The positions in the list are as follows:

1. color for `null`
1. color for `false`
1. color for `true`
1. color for numbers
1. color for strings
1. color for arrays
1. color for objects

The first value of the set:

- `1` (bright)
- `2` (dim)
- `4` (underscore)
- `5` (blink)
- `7` (reverse)
- `8` (hidden)

And the second:

- `30` (black)
- `31` (red)
- `32` (green)
- `33` (yellow)
- `34` (blue)
- `35` (magenta)
- `36` (cyan)
- `37` (white)

All of the above information is lifted from [StackOverflow: "How do I customize the colors used by 'jq -C'?"](https://stackoverflow.com/questions/51338701/how-do-i-customize-the-colors-used-by-jq-c?)

## Resources and References

- [JSONPlaceholder](https://jsonplaceholder.typicode.com/)
- [jq](https://stedolan.github.io/jq/)
- [httpie](https://httpie.org/)
- [StackOverflow: "How do I customize the colors used by 'jq -C'?"](https://stackoverflow.com/questions/51338701/how-do-i-customize-the-colors-used-by-jq-c?)
