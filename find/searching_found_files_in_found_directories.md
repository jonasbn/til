# Searching Found Files in Found Directories

I am sure there is a _smarter way_ and shorter way to accomplish this, but this worked for me.

The problem is I need to see all cron configurations specified for GitHub actions. It could be a problem demonstrating the same characteristics:

- I need to inspect the contents of a file
- It is not uniformly named
- It is however located in a directory named uniformly
- The contents are need to inspect are also uniformly represented

This was what I came up with:

```bash
find . -d -name "workflows" -exec find "{}" -type f  \; |xargs ag cron
```

1. First I find all the directories named: `workflows`
2. Then I find all the files in these directories
3. The files are the piped to `ag` which search the files for the contents I need
