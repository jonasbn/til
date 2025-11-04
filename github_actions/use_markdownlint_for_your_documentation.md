# Use Markdownlint for your documentation

**Markdownlint-CLI** is one of those all-round tools, which are always within grasp when you need them.

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

Next step is configuring the action, so I add the following file to the directory: `.github/workflows/markdownlint.yml`, I do this so all of the warnings and recommendations that Markdownlint I do not see, gets captured as part of the continuous integration on GitHub.

The file contents looks something along the lines of:

```yaml
name: Markdownlint Action
on:
  push:
    paths:
      - '**/*.md'
      - '.markdownlintignore'
      - '.markdown.json'
  pull_request:
    paths:
      - '**/*.md'
      - '.markdownlintignore'
      - '.markdown.json'

permissions: read-all

jobs:
  build:
    name: Markdownlint
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@08c6903cd8c0fde910a37f88322edcfb5dd907a8 # v5.0.0
      - name: Markdownlint
        uses: nosborn/github-action-markdown-cli@508d6cefd8f0cc99eab5d2d4685b1d5f470042c1 # v3.5.0
        continue-on-error: true
        with:
          files: .
          config_file: ".markdownlint.json"
```

The action uses `nosborn/github-action-markdown-cli` can be found on the [GitHub marketplace][MARKETPLACE] and since it is based on **markdownlint-cli** I have no challenges with the configuration outlined above since it is the same configuration used for the CLI tool: `markdownlint` and additionally **VScode**.

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

## Decluttering Your Repository Root Directory

As your toolbox grow and your repository adopt more and more tooling, you might experience that your repository root directory clutters with all sort of repository specific configurations.

Luckily the action can be configured to point to an alternative path for the configuration file.

> [!WARNING]
> This below is not compatible with the intuitive and out of the box solution of having the `.markdownlint.json` in the root directory for easy detection by the CLI tool or VScode.

```yaml
with:
    files: .
    config_file: ".markdownlint.json"
```

You can move the file into a sub-directory, for example `.github/`.

```yaml
with:
    files: .
    config_file: ".github/markdownlint.json"
```

## Avoiding Markdownlint Conflicts

Sometimes you adopt Markdown files from other projects and these might not adhere to your specific Markdown linting rule set and hence they will get reported as items for your attention.

Examples of these files can be:

- License descriptions
- Code of Conduct Policy

Luckily **Markdownlint-CLI** supports adding an ignore file as you know it from Git ignore files.

An example for a `markdownlintignore` file:

```
LICENCE.md
CODE_OF_CONDUCT.md
```

Next step is telling the action about the location of the ignore file:

```yaml
with:
    files: .
    config_file: ".github/markdownlint.json"
    ignore_path: ".github/markdownlintignore"
```

This does mean that you might have some challenges in regards to the additional tooling, like VScode and the command line tool.

AFAICT the VScode extension does not allow for configuring the path to the ignore file.

The CLI tool has the following options: `-p/--ignore-path`, but these take path arguments and not the path to an ignore file, so some cluttering will occur.

## Resources and References

- [GitHub Marketplace: Markdownlint-CLI][MARKETPLACE]

[MARKETPLACE]: https://github.com/marketplace/actions/markdownlint-cli
