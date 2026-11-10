# Use EditorConfig

There are several implementations I currently use: **editorconfig-checker/action-editorconfig-checker**

The GitHub Action uses `ec` (**editorconfig-checker**) an alternative to `eclint`, it is currently actively maintained, whereas `eclint` has been archived and is not longer actively maintained, it is probably still very usefull, but at some point an actively developed project might be of more value.

My used configuration:

```yaml
name: EditorConfig Action
on: push

jobs:
  build:
    name: EditorConfig lint
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1 # v7.0.1
    - uses: editorconfig-checker/action-editorconfig-checker@51f63319f592f97930c73d9c46184d20bd206393 # v3.0.0
      name: Testing using editorconfig-checker
      with:
        version: v4.0.1
```

The actions are pinned to the commit SHA of a release, see [pin your action dependencies](pin_your_action_dependencies.md).

## Pin the version of editorconfig-checker

The action downloads the `ec` binary from the **editorconfig-checker** releases, the `version` input defaults to `latest`.

With `latest` the workflow can break, without anything changing in your repository. This happened when **editorconfig-checker** v4 renamed its release assets and version 2.2.0 of the action failed with:

```text
Error: The binary 'ec-linux-amd64*' not found
```

Version 2.3.0 of the action works around this by pinning the core to v3.11.3, the last release using the old binary name, but version 3.0.0 of the action supports the new asset names, so use that and pin `version` explicitly, so upgrading **editorconfig-checker** is a deliberate step you can review, rather than a surprise.

## Resources and References

- [GitHub Marketplace: editorconfig-checker-action](https://github.com/marketplace/actions/editorconfig-checker-action)
- [GitHub: action-editorconfig-checker repository](https://github.com/editorconfig-checker/action-editorconfig-checker)
- [GitHub: editorconfig-checker (ec) repository](https://github.com/editorconfig-checker/editorconfig-checker)
