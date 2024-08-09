# Use checkout

This is a simple action that allows you to checkout your repository. It is a very common action and is used in many workflows. The action is maintained by GitHub and is available at [actions/checkout][checkout].

To use the action, you can add the following step to your workflow file:

```yaml

steps:
  - name: Checkout
    uses: actions/checkout@v4
```

You can use the `v4` tag to get the latest version of the action. If you want to use a specific version, you can specify the version number like this:

```yaml
steps:
  - name: Checkout
    uses: actions/checkout@v4.1.1
```

The recommendation these days however seem to be to pin the version of the action, so you may need to update the SHA checksums in your workflow file. The SHA checksums are used to ensure that the action is not tampered with and that the action is the same version that you expect.

```yaml
    steps:
    - name: Checkout
      uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # v4.1.1
```

In order to resolve the SHA checksums do see my TIL on that [How do I resolve the SHA checksum](../github_actions/how_do_I_resolve_the_sha_checksum.md).

The action has a lot of options that you can use to customize the behavior. You can find more information about the action in the [GitHub Marketplace][checkout].

## Resources and References

- [GitHub Action: checkout][checkout]

[checkout]: https://github.com/marketplace/actions/checkout
