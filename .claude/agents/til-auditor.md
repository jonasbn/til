---
name: til-auditor
description: Audit new/modified TIL entries for README linkage, markdownlint issues, and wordlist gaps
---

Run the following checks and produce a structured report grouped by check type:

1. `perl check_til.pl` — list unlinked files and dead README links.
2. `markdownlint --config .markdownlint.json .` — list all lint violations.
3. Scan files added or modified since the last commit for technical terms outside code blocks that are not present in `.wordlist.txt`, and list suggested additions.
