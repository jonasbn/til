# How do I resolve the SHA checksums?

Since the recommendation is to pin the version of the action, you may need to update the SHA checksums in your workflow file. The SHA checksums are used to ensure that the action is not tampered with and that the action is the same version that you expect.

To resolve the SHA checksums, you can use the following steps:

- Open the GitHub repository where the action is located.
- Find the release page
- Switch to tags
- Locate the tag you are interested in
- The is just beneath the tag name

Example from the most widely used action: checkout

- `https://github.com/actions/checkout/tags`
- For release `v4.1.1` we should end up with something along the lines of:

```yaml
    steps:
      -
        name: Checkout
        uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # v4.1.1
```

- Copy the SHA256 checksum (actually a URL):

```text
https://github.com/actions/checkout/commit/b4ffde65f46336ab88eb53be808477a3936bae11
```

The last part is what we need: `b4ffde65f46336ab88eb53be808477a3936bae11` and we are good to go.

Do note Dependabot should be able to handle these and AFAIK see from resolved issues, it will annotate with the tag used, so you get a little bit of a hint for human consumption.

Meaning that:

```yaml
uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # v4.1.1
```

Also has the annotation updated, do check out Dependabot-core issue  [#4691](https://github.com/dependabot/dependabot-core/issues/4691).

## Resources and References

- [GitHub Action: checkout](https://github.com/actions/checkout/tags)
