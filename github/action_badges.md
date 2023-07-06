# GitHub Action Badges

If you want to show the GitHub Actions status badge for one of your workflow, be aware that the URL has to reflect the action.

An GitHub action configuration file located in:

- `.github/workflow/markdownlint.yml`

Could be reflected in a badge with the URL:

- `![example workflow](https://github.com/jonasbn/til/actions/workflows/markdownlint.yml/badge.svg)`

Like for example this badge for one of my repositories:

![Markdownlint status badge](https://github.com/jonasbn/til/actions/workflows/markdownlint.yml/badge.svg)

1. The URL points to GitHub: `https://github.com`
2. My account: `jonasbn`
3. The relevant (this) repository: `til`
4. The workflows directory: `workflows` and this is the `workflows` directory located in the directory `.github`, you do however have to add `actions` before the `workflows`
5. Then add action configuration file: `markdownlint.yml`
6. And finally add the filename: `badge.svg`

Complete example:

- `![example workflow](https://github.com/jonasbn/til/actions/workflows/markdownlint.yml/badge.svg)`

Do yourself the favor of testing the URL before making commits containing it, it took me several attempts to get right.

Thanks to the friendly supporter from GitHub who helped me out.

## References

- [GitHub: "Adding a workflow status badge"](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge)
- [GitHub: "Setting up continuous integration using GitHub Actions"][github_actions]
- [GitHub: "Adding a workflow status badge to your repository"][github_badges]
- [Dev.to: "Blog post: Getting to Know GitHub Actions with Markdownlint"](https://dev.to/jonasbn/blog-post-getting-to-know-github-actions-3m61)

[github_actions]: https://help.github.com/en/github/automating-your-workflow-with-github-actions/setting-up-continuous-integration-using-github-actions
[github_badges]: https://help.github.com/en/github/automating-your-workflow-with-github-actions/configuring-a-workflow#adding-a-workflow-status-badge-to-your-repository
