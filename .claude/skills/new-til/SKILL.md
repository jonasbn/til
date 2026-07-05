---
name: new-til
description: Create a new TIL entry — file, README link, and wordlist check
disable-model-invocation: true
---

Given a topic (e.g. "python decorators"):

1. Determine the correct subdirectory (create it if it is a new topic).
2. Create `<category>/<slug>.md` with: a title heading, explanation, practical code example, and a `## Resources and References` section at the end.
3. Follow the style rules from `.markdownlint.json`: dashes for unordered lists, underscores for emphasis (`_text_`), asterisks for bold (`**text**`).
4. Add a link to `README.md` under the matching section, keeping entries alphabetical within the section.
5. Identify any non-dictionary technical words that appear outside code blocks and suggest additions to `.wordlist.txt`.
6. Run `markdownlint --config .markdownlint.json <new-file>` and fix any issues before finishing.
