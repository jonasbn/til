# Pin Your Action Dependencies

When you write a GitHub Actions workflow, you can use actions from the GitHub Marketplace or from a public repository. It is [recommended to pin the version of the action][[GITHUBDOCS] you are using to ensure that your workflow is stable and does not break or expose your repository due to changes in the action.

> You can help mitigate this risk by following these good practices:
> Pin actions to a full length commit SHA
>
> Audit the source code of the action
>
> Pin actions to a tag only if you trust the creator

REF: [GitHub Actions documentation: "Using third-party actions"][GITHUBDOCS]

You can observe a variation of usage patterns, these examples are based on the `checkout` action:

- Use the `v4.1.7` tag to get a specific version of the action
  - `actions/checkout@v4.1.7`
- Use the `v4` tag to get the latest major version of the action
  - `actions/checkout@v4`

From a security perspective it is recommended to pin to the SHA checksum of the action. This ensures that the action is not tampered with and that the action is the same version that you expect. Both examples above can be tampered with since the version number is just a reference, which would be made to point elsewhere.

The recommended use is:

- `actions/checkout@692973e3d937129bcbf40652eb9f2f61becf3332`

So for my workflow I would write something along the lines of:

```yaml
    steps:
      -
        name: Checkout
        uses: actions/checkout@692973e3d937129bcbf40652eb9f2f61becf3332 # v4.1.7
        with:
          fetch-depth: 0
```

Do note Dependabot should be able to handle these and AFAIK see from resolved issues, it will annotate with the tag used, so you get a little bit of a hint for human consumption.

Meaning that:

```yaml
uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # v4.1.1
```

When bumped to `v4.1.7` would be annotated as part of the PR, so you can see what was updated:

```yaml
uses: actions/checkout@692973e3d937129bcbf40652eb9f2f61becf3332 # v4.1.7
```

I did a separate TIL on [How do I resolve the SHA checksum](../github_actions/how_do_I_resolve_the_sha_checksum.md) if you are interested in how to get the SHA checksum.

## Resources and References

- [GitHub Actions documentation: "Using third-party actions"][GITHUBDOCS]

[GITHUBDOCS]: https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions#using-third-party-actions
