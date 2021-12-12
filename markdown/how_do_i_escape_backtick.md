# How do I escape backtick

If you need to escape ` (backtick) in Markdown, in a code example

```
`code example`
```

You simply add additional backticks to your markup.

```
``this is a backtick: ` ``
```

## How do I escape a complete fenced codeblock

You can do this by indenting with spaces and fence it with a code fence with Markdown as language.

```markdown

    ```markdown

        ```perl

        CODE

        ```

    ```

```

The above should render:

```markdown

    ```perl

    CODE

    ```

```

I am not sure the Markdown indicator is needed. This works for GitHub flavoured Markdown it seems.

You can also escape code fences with 3 sequential tildes

`~~~`

Or four backticks:

` ```` `

```markdown

    ````
    ```perl

    CODE

    ```
    ````

```

The above should render:

````
```perl

CODE

```
````

## Resources and References

1. [StackExchange: "How do I escape a backtick ` in Markdown?"](https://meta.stackexchange.com/questions/82718/how-do-i-escape-a-backtick-in-markdown)
1. [Markdown Monster Documentation: "Escape Markdown Fenced Code Blocks"](https://markdownmonster.west-wind.com/docs/_5eg1brc0z.htm)
