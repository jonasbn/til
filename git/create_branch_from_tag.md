# Create branch from tag

Sometime you need to inspect the code behind a tag (and in theory patch/hotfix)

```bash
$ git checkout tags/<tag_name> -b <branch_name>
```

Example:

```bash
$ git checkout tags/2.0.0 -b 2.0.1-hotfix
```

Or just for inspection

```bash
$ git checkout tags/<tag_name>
```

The latter can always be branched, if need be.

## References

- [StackOverflow](http://stackoverflow.com/questions/791959/download-a-specific-tag-with-git)
