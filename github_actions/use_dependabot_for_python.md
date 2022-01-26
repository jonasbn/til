# Use dependabot for Python

You can get Dependabot to help you with keeping your Python dependencies up to date, if it is based on `pip`.

```yaml
# Basic dependabot.yml file
# REF: https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot

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
```

## Resources and References

- [GitHub Documentation, supported eco-systems](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/configuration-options-for-dependency-updates#package-ecosystem)
- [GitHub Documentation: "Keeping your actions up to date with Dependabot"](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot)
