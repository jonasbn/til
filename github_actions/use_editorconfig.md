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
    - uses: actions/checkout@master
    - uses: editorconfig-checker/action-editorconfig-checker@v1
      name: Testing using editorconfig-checker
```

## Resources and References

- [GitHub Marketplace: editorconfig-checker-action](https://github.com/marketplace/actions/editorconfig-checker-action)
- [GitHub: action-editorconfig-checker repository](https://github.com/editorconfig-checker/action-editorconfig-checker)
- [GitHub: editorconfig-checker (ec) repository](https://github.com/editorconfig-checker/editorconfig-checker)
