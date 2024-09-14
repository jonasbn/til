# Use Markdownlint

**Markdown** has become my preferred way to write documentation. I use it for the documentation for open source projects, like READMEs, Change Logs etc. In additional to that I use if for longer technical specifications, since it is so simple to work with and **Markdown** is so easy to use it lets me focus on the content I want to write.

Writing to many different documents and with the focus on content I sometimes make mistakes in my **Markdown**, but since **Markdown** is well formatted, it is actually possible to parse it and say something about the formatting - and here **Markdown** linters can help you.

I am unclear on the story behind the **Markdown** linters I have found, but it seems as if the first implementation was in **Ruby**, the project is [markdownlint/markdownlint][markdownlint_ruby] and offers the executable `mdl`.

A newer alternative is the **Markdown** linter implemented in **Node**, this project is  [DavidAnson/markdownlint][markdownlint_node]. The **Node** implementation does not hold it's own executable, there you have to use the executable `markdownlint` implemented in [igorshubovych/markdownlint-cli][markdownlint_cli].

Both implementations implement a set of rules [Ruby implementation][markdownlint_rules_ruby] and [Node implementation][markdownlint_rules_node] respectively.

This documentation is nice to have close at hand when you get started.

I wrote up [a blog post][devtojonasbn] where I compare the rulesets of the two.

## Let go over some rules

As mentioned above I am primarily using [DavidAnson/markdownlint][markdownlint_node], so the below set of rules are based on that implementation.

### `"ul-style": { "style": "dash" }`

This rule has the label/name: `MD004`, do see [the documentation][MD004].

I prefer to have my lists using the `-` for indicating elements. Consistent formatting makes it easier to read and understand documentation. Markdown does allow for a variation of styles, for example: `*` (asterisk).

Example:

```markdown
- item1
- item2
- item3
```

### `"emphasis-style": { "style": "underscore" }`

This rule has the label/name: `MD049`, do see [the documentation][MD049].

I prefer to use `_` for emphasis, again Markdown allow for varies characters for indicating emphasis, for example: `*` (asterisk). Sticking to one, makes it easier for me, when editing and this rule makes it easier to be consisten in writing style.

Example:

```markdown
_this is emphasized, but is cursive and does not stand out in the same manner as bold IMHO_
```

### `"strong-style": { "style": "asterisk" }`

This rule has the label/name: `MD050`, do the [the documentation][MD050].

I use `*` to indicate importance (bold), I know this should be called emphasis, but the emphasis, which is _cursive_, I use for that quotes and terms that are special, where some people would use quotes.

```markdown
**this is emphasized as strong/bold**
```

Markdown again allows for a variety of characters, like `_` (underscore).

## Resources and References

- [EditorConfig.org](https://editorconfig.org/)
- [Markdownlint (Ruby)][markdownlint_ruby]
- [Markdownlint Rules (Ruby)][markdownlint_rules_ruby]
- [Markdownlint (Node)][markdownlint_node]
- [Markdownlint Rules (Node)][markdownlint_rules_node]
- [Markdownlint CLI (Node)][markdownlint_cli]
- [Blog post: "Markdownlint"][devtojonasbn]

[markdownlint_rules_ruby]: https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md
[markdownlint_cli]: https://github.com/igorshubovych/markdownlint-cli
[markdownlint_rules_node]: https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md
[markdownlint_node]: https://github.com/DavidAnson/markdownlint
[markdownlint_ruby]: https://github.com/markdownlint/markdownlint
[devtojonasbn]: https://dev.to/jonasbn/blog-post-markdownlint-24ig
[MD004]: https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md004---unordered-list-style
[MD049]: https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md049---emphasis-style
[MD050]: https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md050---strong-style
