# Use dependabot

dependabot is a bot, which monitors your dependencies. It automatically creates PRs with a given interval, if the dependencies are updated.

Please consult the documentation to see if your language is supported.

I first saw it _in action_ for a Rust based [repository](https://github.com/ufoscout/docker-compose-wait). Check the [PRs](https://github.com/ufoscout/docker-compose-wait/pulls?q=is%3Apr) marked `dependencies`.

I have enabled the `Dockerfile` support for two of my repositories, first one being `[ebirah](https://github.com/jonasbn/ebirah)`. The [second one](https://github.com/rojopolis/spellcheck-github-actions) has support for `pip`(Python) enabled as well.

Too bad there is no Perl support :-(

The setup is pretty basic:

`Dockerfile` example:

```yaml
# Basic dependabot.yml file with
# minimum configuration for single package manager

version: 2
updates:
  # Enable version updates for Docker
  - package-ecosystem: "docker"
    # Look for a `Dockerfile` in the `root` directory
    directory: "/"
    # Check for updates once a week
    schedule:
      interval: "weekly"
```

And example with two configurations:

```yaml
# Basic dependabot.yml file with
# minimum configuration for two package managers

version: 2
updates:
  # Enable version updates for pip (Python)
  - package-ecosystem: "pip"
    directory: "/"
    schedule:
      interval: "weekly"
    # Only allow updates to the lockfile for pip and
    # ignore any version updates that affect the manifest
    versioning-strategy: lockfile-only

  # Enable version updates for Docker
  - package-ecosystem: "docker"
    # Look for a `Dockerfile` in the `root` directory
    directory: "/"
    # Check for updates once a week
    schedule:
      interval: "weekly"
```

In addition I can recommend, the configuration for GitHub Actions:

```yaml
  # Enable version updates for Actions
  - package-ecosystem: "github-actions"
    # Look for `.github/workflows` in the `root` directory
    directory: "/"
    # Check for updates once a week
    schedule:
      interval: "weekly"
```

The `dependabot.yml` file should be saved in the `.github/` directory, please consult the documentation.

When that is set up and you start to receive PRs from Dependabot you want to familiarize yourself with the Dependabot commands, commands that can be issues via comments on PRs.

```text
@dependabot rebase will rebase this PR
@dependabot recreate will recreate this PR, overwriting any edits that have been made to it
@dependabot merge will merge this PR after your CI passes on it
@dependabot squash and merge will squash and merge this PR after your CI passes on it
@dependabot cancel merge will cancel a previously requested merge and block automerging
@dependabot reopen will reopen this PR if it is closed
@dependabot close will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
@dependabot show <dependency name> ignore conditions will show all of the ignore conditions of the specified dependency
@dependabot ignore this major version will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
@dependabot ignore this minor version will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
@dependabot ignore this dependency will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
```

My go to is:

```text
@dependabot merge
```

Which I use when I review PRs and accept them, then Dependabot takes care of the following steps of merging etc.

## Resources and References

- [GitHub Documentation: Dependabot](https://help.github.com/en/github/administering-a-repository/keeping-your-dependencies-updated-automatically)
- [GitHub Documentation: Dependabot alerts for vulnerable dependencies](https://docs.github.com/en/code-security/supply-chain-security/managing-vulnerabilities-in-your-projects-dependencies/about-alerts-for-vulnerable-dependencies)
- [GitHub Documentation: Automating Dependabot with GitHub Actions](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/automating-dependabot-with-github-actions#enable-auto-merge-on-a-pull-request)
