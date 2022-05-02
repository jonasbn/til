# Schedule Runs

GitHub Actions can be scheduled to run at a given time or interval. To express this the action should be configured using `crontab` notation.

So when you have a workflow, you can add a schedule to the `on` hook like so:

```yaml
on:
  schedule:
  - cron: "0 0 * * *"
```

For more information, do see the introductory [blog post by Jason Etcovitch: ][BLOG], which gives a nice overview.

I have some repositories where much do not happen, so in order to make sure they still build I have added the following schedule.

```yaml
on:
  schedule:
  - cron: '0 10 */30 * *'
```

This schedules builds, tests and emits a coverage report for this particular repository every 30 days (around every month), so even though I do not commit anything, I make sure that things are still working.

Do note the hour is 10:00 UTC, so if it fails I will get a notification in the morning.

The example is lifted from my [punycode](https://github.com/jonasbn/punycode) project, see the file: [`go.yml`](https://github.com/jonasbn/punycode/blob/main/.github/workflows/go.yml).

## Resources and References

- [Blog post by Jason Etcovitch: ][BLOG]
- [crontab.guru][GURU] - your crontab scheduling wizard
- [GitHub: Action Scheduling Documentation][GITHUBDOC]

[BLOG]: https://jasonet.co/posts/scheduled-actions/
[GURU]: https://crontab.guru/
[GITHUBDOC]: https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#onschedule
