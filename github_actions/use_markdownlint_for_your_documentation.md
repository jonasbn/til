# Use Markdownlint for your documentation

**Markdownlint-CLI** is one of those allround tools, which are always within grasp when you need them.

- I lint my markdown on the command line
- I lint my markdown my editor of choice VScode
- I lint my markdown as a GitHub Action as part of my CI pipeline

So lets go over the GitHub Action part.

When I set up a repository on GitHub, which going to hold a significant amount of Markdown, I add a Markdownlint configuration:

In the root of the repository I add the file: `.markdownlint.json`

```json
{
    "default": true
}
```

The moment I have done that, I can use the command line tool and my editor let's me know I entered bad Markdown.

Next step is configuring the action, so I add the following file to the directory: `.github/workflows/markdownlint.yml`, I do this so all of the warnings and recommendations that Markdownlint I do not see, get's captured as part of the continuous integration on GitHub.

The file contents looks something along the lines of:

```yaml
name: Markdownlint Action
on: push

jobs:
  build:
    name: Markdownlint
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - uses: nosborn/github-action-markdown-cli@v3.3.0
      name: Markdownlint
      with:
        files: .
        config_file: ".markdownlint.json"
```

The action used `nosborn/github-action-markdown-cli` can be found on the [GitHub marketplace][MARKETPLACE] and since it is based on **markdownlint-cli** I have no challenges with the configuration outlined above since it is the same configuration used for the CLI tool and additionally VScode.

As I add more and more Markdown the warnings/recommendations start to appear and I adjust the configuration. For this repository is looks like this at the time of writing.

```json
{
    "default": true,
    "ul-style": { "style": "dash" },
    "html": false,
    "line-length": false,
    "fenced-code-language": false,
    "no-hard-tabs": true,
    "blanks-around-headings": false,
    "ul-indent": false,
    "commands-show-output": false,
    "no-bare-urls": false,
    "ol-prefix": false,
    "no-trailing-punctuation": false,
    "no-space-in-links": false,
    "no-space-in-emphasis": false,
    "emphasis-style": { "style": "underscore" },
    "strong-style": { "style": "asterisk" }
}
```

## Resources and References

- [GitHub Marketplace: Markdownlint-CLI][MARKETPLACE]

[MARKETPLACE]: https://github.com/marketplace/actions/markdownlint-cli
