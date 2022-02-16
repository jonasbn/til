# Use chezmoi

With the new ability to add [Mermaid](https://mermaid-js.github.io/mermaid/#/) diagrams to [GitHub Markdown](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/), I just needed to try this out.

This is an embedded version of the official sequence diagram from the `chezmoi` [website](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine).

```mermaid
sequenceDiagram
    participant $HOME
    participant working copy
    participant local repo
    participant remote repo
    $HOME->>local repo: chezmoi init
    $HOME->>working copy: chezmoi add <file>
    working copy->>working copy: chezmoi edit <file>
    working copy-->>$HOME: chezmoi diff
    working copy->>$HOME: chezmoi apply
    $HOME-->>working copy: chezmoi cd
    working copy->>local repo: git add
    working copy->>local repo: git commit
    local repo->>remote repo: git push
    local repo-->>$HOME: exit
```
