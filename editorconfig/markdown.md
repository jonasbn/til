# EditorConfig for Markdown

I am using the basic **EditorConfig** configuration for **Markdown** files.

```INI
[*.{md,mkdn}]
trim_trailing_whitespace = true
indent_style = space
```

I trim trailing whitespace to adhere to [**Markdownlint**](https://github.com/markdownlint/markdownlint) recommendations for "Trailing spaces" ([MD009](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md#md009---trailing-spaces)). Do note that this conflicts with the [Markdown specification](https://daringfireball.net/projects/markdown/syntax#block) for inserting a line break, by ending a line with two consecutive spaces, so of you need this particular Markdown feature, you should disable: `trim_trailing_whitespace`:

```INI
[*.{md,mkdn}]
trim_trailing_whitespace = false
```

Currently I do this in my global file (`$HOME/.editorconfig`) so I do not have any surprises, when just editing Markdown and then on a project or repository basis I enable it where the Markdownlint rules makes more sense.

I use indentation style based on spaces, to adhere to [**Markdownlint**](https://github.com/markdownlint/markdownlint) recommendations for "Unordered list indentation" ([MD007](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md#md007---unordered-list-indentation)).

## References

- [EditorConfig.org](https://editorconfig.org/)
- [Markdownlint](https://github.com/markdownlint/markdownlint)
- [Markdownlint Rules](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md)
- [Markdown Specification](https://daringfireball.net/projects/markdown/syntax)
