# Use dependabot for Ruby

You can get Dependabot to help you with keeping your Ruby dependencies up to date, if it is based on **Bundler**

```yaml
# Basic dependabot.yml file 
# REF: https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot

version: 2
updates:
  # Maintain dependencies for Bundler (Ruby)
  - package-ecosystem: "bundler"
    directory: "/"
    schedule:
      interval: "weekly"

## Resources and References

- [Blog post](https://remarkablemark.org/blog/2021/01/10/dependabot-github-bundler/)
- [GitHub Documentation, supported eco-systems](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/configuration-options-for-dependency-updates#package-ecosystem)
- [GitHub Documentation: "Keeping your actions up to date with Dependabot"](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-actions-up-to-date-with-dependabot)
