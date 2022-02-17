# Diagram With Mermaid

**Mermaid** is a JavaScript utility to create beautiful diagrams from text. I have read about it before, but it had been parked on the _check out - eventually_ list.

On February 14th. GitHub [announced][ANNOUNCE] support for **Mermaid** in GitHub Markdown. I decided to check it out right away, so I went to the **Mermaid** [website][WEBSITE], I found the [online editor][EDITOR]- which is truly _awesome_ and started thinking about what to diagram.

I am writing up some [notes][TIL] on **chezmoi** and decided to see if I could replicate the diagram from the **chezmoi** [documentation][CHEZMOI].

All I can say it that you very very fast can get something that looks really good.

I ran into an issues with replicating the order of the elements. Luckily the **Mermaid** documentation is pretty good and adding `participant` elements provided in the order I wanted.

You can compare the two versions:

- [TIL on chezmoi using Mermaid][TIL]
- [chezmoi documentation][CHEZMOI]

And this is the **Mermaid** code:

```
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

When fetching the version from **chezmoi** I found out it was also **Mermaid** well I just needed a reference diagram for my experiment.

But I ran into another problem. **Mermaid** is supported for Markdown on GitHub, which is marvelous, but it does not seem to be supported for pages, you can compare, these two versions:

- [GitHub][TIL]
- [jonasbn.github.io][PAGES]

I am investigating whether I can add **Mermaid** to the Pages rendering, but it requires that I can control the HTML, so I would prefer for GitHub to support this out of the box.

## Resources and References

1. [GitHub Announcement on Mermaid in Markdown][ANNOUNCE]
1. [Mermaid website][WEBSITE]
1. [Mermaid online editor][EDITOR]
1. [TIL on chezmoi (GitHub)][TIL]
1. [TIL on chezmoi (GitHub Pages)][PAGES]
1. [chezmoi documentation][CHEZMOI]

[ANNOUNCE]: https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/
[WEBSITE]: https://mermaid-js.github.io/mermaid/#/
[EDITOR]: https://mermaid.live/
[TIL]: https://github.com/jonasbn/til/blob/master/chezmoi/use_chezmoi.md
[CHEZMOI]: https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine
[PAGES]: http://jonasbn.github.io/til/chezmoi/use_chezmoi.html
