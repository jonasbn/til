# Use dependabot for GitHub Actions

You can get Dependabot to help you with keeping your GitHub Actions workflows up to date

```yaml
# Basic dependabot.yml file 
# REF: https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot

version: 2
updates:
  # Enable version updates for GitHub Actions
  - package-ecosystem: "github-actions"
    # Look for `.github/workflows` in the `root` directory
    directory: "/"
    # Check for updates once a week
    schedule:
      interval: "weekly"
```

## Resources and References

- [GitHub Documentation, supported eco-systems](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/configuration-options-for-dependency-updates#package-ecosystem)
- [GitHub Documentation: "Keeping your actions up to date with Dependabot"](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot)
