# Auto-assign

This GitHub automation is really nice if you want to have reviews and issues auto-assigned.

```yaml
# Set to true to add reviewers to pull requests
addReviewers: true

# Set to true to add assignees to pull requests
addAssignees: true

# A list of reviewers to be added to pull requests (GitHub user name)
reviewers:
  - jonasbn

# A list of keywords to be skipped the process that add reviewers if pull requests include it
#skipKeywords:
#  - wip

# A number of reviewers added to the pull request
# Set 0 to add all the reviewers (default: 0)
numberOfReviewers: 0

# A list of assignees, overrides reviewers if set
assignees:
  - jonasbn

# A number of assignees to add to the pull request
# Set to 0 to add all of the assignees.
# Uses numberOfReviewers if unset.
# numberOfAssignees: 2
```

I have always used **auto-assign-bot**, another option was Dependabot reviewer settings. However this this has been changed to use `CODEOWNERS`, see [the announcement](https://github.blog/changelog/2025-04-29-dependabot-reviewers-configuration-option-being-replaced-by-code-owners/).

Since **auto-assign-bot** currently has [some issues](https://github.com/kentaro-m/auto-assign/issues/276), `CODEOWNERS` configuration can be a help, alternatively there is [an action](https://github.com/kentaro-m/auto-assign-action) that can be used.

## Resources and References

- [Probot Website](https://probot.github.io/apps/auto-assign/)
- [GitHub Repository](https://github.com/kentaro-m/auto-assign)
- [auto-assign GitHub Action](https://github.com/kentaro-m/auto-assign-action)
