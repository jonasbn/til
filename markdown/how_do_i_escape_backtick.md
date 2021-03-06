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

## References

- [StackExchange: How do I escape a backtick ` in Markdown?](https://meta.stackexchange.com/questions/82718/how-do-i-escape-a-backtick-in-markdown)
