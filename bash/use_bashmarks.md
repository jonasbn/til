# Use Bashmarks

**Bashmarks** a nifty too for cool shortcuts for directories you often use.

Firstly you can save bookmarks, you probably has some Shell aliases or symbolic links for accomplishing the same thing.

```bash
$ cd develop
$ s dev
```

You can list your bookmarks.

```bash
$ l
dev    /Users/jonasbn/develop
```

Now when you want go to your bookmark, you simply type `g` followed by your bookmark name

```bash
$ g dev
$ pwd
/Users/jonasbn/develop
```

This is the official manual lifted from the [GitHub page][github]

```
s <bookmark_name> - Saves the current directory as "bookmark_name"
g <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"
p <bookmark_name> - Prints the directory associated with "bookmark_name"
d <bookmark_name> - Deletes the bookmark
l                 - Lists all available bookmarks
```

> All of your directory bookmarks are saved in a file called ".sdirs" in your HOME directory.

```bash
$ bat ~/.sdirs
───────┬───────────────────────────────────────────────────────────────────────────────────────
       │ File: /Users/jonasbn/.sdirs
───────┼───────────────────────────────────────────────────────────────────────────────────────
   1   │ export DIR_dev="$HOME/develop"
```

An alternative is `z`, check [my til on `z`](http://jonasbn.github.io/til/bash/use_z.html)

## Resources and References

- [GitHub: Bashmarks][github]

[github]: https://github.com/huyng/bashmarks
