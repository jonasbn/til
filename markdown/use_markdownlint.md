# Use Markdownlint

**Markdown** has become my preferred way to write documentation. I use it for the documentation for open source projects, like READMEs, Change Logs etc. In additional to that I use if for longer technical specifications, since it is so simple to work with and **Markdown** is so easy to use it lets me focus on the content I want to write.

Writing to many different documents and with the focus on content I sometimes make mistakes in my **Markdown**, but since **Markdown** is well formatted, it is actually possible to parse it and say something about the formatting - and here **Markdown** linters can help you.

I am unclear on the story behind the **Markdown** linters I have found, but it seems as if the first implementation was in **Ruby**, the project is [markdownlint/markdownlint][markdownlint_ruby] and offers the executable `mdl`.

A newer alternative is the **Markdown** linter implemented in **Node**, this project is  [DavidAnson/markdownlint][markdownlint_node]. The **Node** implementation does not hold it's own executable, there you have to use the executable `markdownlint` implemented in [igorshubovych/markdownlint-cli][markdownlint_cli].

Both implementations implement a set of rules [Ruby implementation][markdownlint_rules_ruby] and [Node implementation][markdownlint_rules_node] respectively.

This documentation is nice to have close at hand when you get started.

On getting started, the

## References

- [EditorConfig.org](https://editorconfig.org/)
- [Markdownlint (Ruby)](markdownlint_ruby)
- [Markdownlint Rules (Ruby)](markdownlint_rules_ruby)
- [Markdownlint (Node)](markdownlint_node)
- [Markdownlint Rules (Node)](markdownlint_rules_node)
- [Markdownlint CLI (Node)](markdownlint_cli)

[markdownlint_rules_ruby]: https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

[markdownlint_cli]: https://github.com/igorshubovych/markdownlint-cli

[markdownlint_rules_node]: https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md

[markdownlint_node]: https://github.com/DavidAnson/markdownlint

[markdownlint_ruby]: https://github.com/markdownlint/markdownlint
