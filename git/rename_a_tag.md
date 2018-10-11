# How to rename a tag

First you need to make an alias of the old tag

```bash
$ git tag new_tag_name old_tag_name
```

Then you need to delete the old tag locally

```bash
$ git tag -d old_tag_name
```

Then delete the tag on you remote location - do note there might be several

```bash
# Check your remote sources:
$ git remote -v

# The argument (3rd) is your remote location,
# the one you can see with `git remote`. In this example: `origin`
$ git push origin :refs/tags/old_tag_name
```

And finally you need to add your new and shiny tag to the remote location.

```bash
$ git push origin --tags
```

Repeat this for every remote location.

## References

- [StackOverflow](https://stackoverflow.com/questions/1028649/how-do-you-rename-a-git-tag)
