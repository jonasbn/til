# How to rename a tag

First you need to make an alias of the old tag

```bash
git tag --force new_tag_name old_tag_name
```

Or short form:

```bash
git tag -f new_tag_name old_tag_name
```

Do note that the `-f` flag is for force, and it is needed to overwrite the old tag.

From the Git documentation:

> Unless -f is given, the named tag must not yet exist.

Also from the Git documentation:

> `-f` / `--force` Replace an existing tag with the given name (instead of failing)

Then you need to delete the old tag locally:

```bash
git tag --delete old_tag_name
```

Or short form:

```bash
git tag -d old_tag_name
```

Then delete the tag on you remote location - do note there might be several

```bash
# Check your remote sources:
git remote -v
```

```bash
# The argument (3rd) is your remote location,
# the one you can see with `git remote`. In this example: `origin`
git push origin :refs/tags/old_tag_name
```

And finally you need to add your new and shiny tag to the remote location.

```bash
git push origin --tags
```

Repeat this for every remote location.

## References

- [StackOverflow](https://stackoverflow.com/questions/1028649/how-do-you-rename-a-git-tag)
- [Git Documentation: tag](https://git-scm.com/docs/git-tag)
