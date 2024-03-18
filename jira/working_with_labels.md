# Working with labels

In Jira you can add labels to issues. Labels are a great way to organize your issues and to find them later on. You can add as many labels as you want to an issue.

I use these for organising issues handles by different teams. The labels are using a consistent and uniform format, so that it is easy to find issues that are handled by a specific team.

- `team_<team_name>` - for issues handled by a specific team.

This mean I can easily get and overview of all issues handled by a specific team, by searching for `team_<team_name>`.

At the same time a have a filter subscription, which notifies me when issues have not yet been assigned a team.

```jql
labels not in (team_backend) AND labels not in (team_frontend) AND labels not in (team_app) AND labels not in (team_po) AND labels not in (team_design) AND type not in (Subtask, Sub-task, Epic) and statusCategory not in (done)
```

However I have observed a problem when our number of teams exceeded 5.
