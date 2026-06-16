# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a **Today I Learned (TIL)** repository — a collection of short Markdown notes organized by topic/tool into subdirectories. There is no build system or application code. All content is Markdown documentation.

Structure: each topic has its own subdirectory (e.g., `git/`, `python/`, `docker/`), containing individual `.md` files per tip. `README.md` at the root serves as the master index linking to all entries.

## CI / Linting

Two GitHub Actions run on every push:

- **Markdownlint** — uses `.markdownlint.json` for rules; files in `.markdownlintignore` are excluded
- **Spellcheck** — uses `.spellcheck.yaml` with aspell (English); custom words go in `.wordlist.txt`; code blocks are excluded from spell checking

To run linting locally (requires `markdownlint-cli`):

```sh
markdownlint --config .markdownlint.json .
```

`markdownlint` is available at `/opt/homebrew/bin/markdownlint`.

To audit `README.md` links vs actual files (unlinked files, dead links):

```sh
perl check_til.pl
```

## Markdownlint Rules (`.markdownlint.json`)

Key active rules:

- Unordered lists must use **dashes** (`-`), not asterisks or plus signs
- No hard tabs
- Emphasis uses **underscores** (`_text_`), strong uses **asterisks** (`**text**`)
- HTML inline is disabled
- Line length is not enforced

## Writing New TIL Entries

1. Create a new `.md` file in the appropriate subdirectory (or create a new subdirectory for a new topic).
2. Add an entry to the relevant section in `README.md` following the existing link format: `- [Title](category/filename.md)`.
3. All new words not in the standard English dictionary that appear outside code blocks should be added to `.wordlist.txt`.

### Note Style (from `agent.documentation-writer.prompt.md`)

- Direct, helpful voice
- Links should be collected in a **"Resources and References"** section at the end of each note, even if also mentioned in the body
- Code examples should be practical and correct; file paths and commands should be properly formatted
- Extend with good examples and links to relevant resources where appropriate

## Ignored Paths

- `_site/` — generated output, excluded from linting

## Claude Code Automations (`.claude/`)

- **Hooks**: markdownlint runs automatically after every file edit; `check_til.pl` runs after `README.md` edits
- **`/new-til <topic>`** — creates a new TIL entry (file, README link, wordlist check)
- **`/til-review <file>`** — reviews a TIL entry for style, lint, README linkage, and wordlist gaps
- **`til-auditor` subagent** — batch audit across all files for linkage, lint, and wordlist issues
