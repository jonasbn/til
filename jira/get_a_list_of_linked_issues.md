# Get a List of Linked Issues

When you are trying to interconnect and assemble a set of issues (_bugs, tasks, stories_) it can be hard to gather them for bulk operations, like assigning them to the same _EPIC_ or similar.

Well in **Jira's** issue search field you can provide the following query:

```
issue in linkedIssues(issueKey)
```

This will give you a result listing all of the issues linked to the `ìssueKey` you provide.

In addition you can, do the following to refine the query, by providing an additional `linkType`, like so:

```
issue in linkedIssues(issueKey,linkType)
```

Ref: [Atlassian Community](https://community.atlassian.com/t5/Jira-questions/Get-list-of-linked-issues-how-to/qaq-p/95753)
