# Convert a number to a string

When you are processing data using `jq` you might run into the problem that some numbers are acually numbers and not strings, so when you want to print them, you get an error.

This is how you convert a number to string for out.

```shell
jq -r '.[] | [ .string, .number|tostring ] | join(": ")' <<< '
[{ "number": 9, "string": "nine"},
 { "number": 4, "string": "four"}]
'
nine: 9
four: 4
```

Or this example:

```shell
jq '.[] | .string + ": " + (.number|tostring)' <<< '
[{ "number": 9, "string": "nine"},
 { "number": 4, "string": "four"}]
'
```

As noted in the resource mentioned below, the parenthesis is important.

## Resources and References

- [StackOverflow: "How do I use jq to convert number to string?"](https://stackoverflow.com/questions/35365769/how-do-i-use-jq-to-convert-number-to-string)
