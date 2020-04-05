# GitHub Action Badges

If you want to show the GitHub Actions badge on your repository, be aware that the URL has to reflect the name of a given action.

Do note [GitHub actions are still in beta](https://github.com/features/actions).

Like for example this badge for one of my repositories:

![GitHub Workflow build status badge](https://github.com/jonasbn/til/workflows/Markdownlint%20Workflow/badge.svg)

1. The URL points to GitHub: `https://github.com`
2. My account: `jonasbn`
3. The relevant (this) repository: `til`
4. The workflows directory: `workflows` and this is the `workflows` directory located in the directory `.github`
5. Now the most _tricky_ part - the `name` fields from the `main.yml` file from the above directory (`github/workflows/`):

```yml
name: Markdownlint Workflow
on: push

jobs:
  build:
    name: Markdownlint
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: ./github-action-markdownlint
```

This value:

`name: Markdownlint Workflow`

Okay, but since the specified name contains spaces, the have to be explicitly described using [URI-encoding][uri_encoding] (or percent-encoding), meaning space is encoded `%20`

6. Last but not least the hard-coded value: `badge.svg`

So the complete URL for the badge displayes look as follows:

`https://github.com/jonasbn/til/workflows/Markdownlint%20Workflow/badge.svg`

Do yourself the favor of testing the URL before making commits containing it, it took me several attempts to get right.

Thanks to the nice supporter from GitHub who helped me out.

## References

- [Wikipedia: URI-encoding][uri_encoding]
- [GitHub: "Setting up continuous integration using GitHub Actions"][github_actions]
- [GitHub: "Adding a workflow status badge to your repository"][github_badges]
- [Dev.to: "Blog post: Getting to Know GitHub Actions with Markdownlint"](https://dev.to/jonasbn/blog-post-getting-to-know-github-actions-3m61)

[uri_encoding]: https://en.wikipedia.org/wiki/Percent-encoding
[github_actions]: https://help.github.com/en/github/automating-your-workflow-with-github-actions/setting-up-continuous-integration-using-github-actions
[github_badges]: https://help.github.com/en/github/automating-your-workflow-with-github-actions/configuring-a-workflow#adding-a-workflow-status-badge-to-your-repository
