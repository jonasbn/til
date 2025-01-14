# Git Status Shell Prompt

I am using Powerlevel10K these days. It has a nifty prompt for getting current Git status.

The tool for this is:

- [romkatv/gitstatus][gitstatus]

The other day I wanted to wrap my head around reading and understanding it entirely and I found this answer on StackOverflow:

- [StackOverflow: "How do you read the git section in the powerlevel10k prompt?"](https://stackoverflow.com/questions/66140097/how-do-you-read-the-git-section-in-the-powerlevel10k-prompt)

The answer was lifted from the documentation of: [romkatv/gitstatus][gitstatus].

| segment     |  meaning                                              |
|-------------|-------------------------------------------------------|
| `master`    | current branch                                        |
| `#v1`       | HEAD is tagged with `v1`; not shown when on a branch  |
| `@5fc6fca4` | current commit; not shown when on a branch or tag     |
| `⇣1`        | local branch is behind the remote by 1 commit         |
| `⇡2`        | local branch is ahead of the remote by 2 commits      |
| `⇠3`        | local branch is behind the push remote by 3 commits   |
| `⇢4`        | local branch is ahead of the push remote by 4 commits |
| `*5`        | there are 5 stashes                                   |
| `merge`     | merge is in progress (could be some other action)     |
| `~6`        | there are 6 merge conflicts                           |
| `+7`        | there are 7 staged changes                            |
| `!8`        | there are 8 unstaged changes                          |
| `?9`        | there are 9 untracked files                           |

## Resources and References

- [romkatv/gitstatus][gitstatus]

[gitstatus]: https://github.com/romkatv/gitstatus
