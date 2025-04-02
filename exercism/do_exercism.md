# Do Exercism

[Exercism] is a marvellous learning tool for learning to code - and it is **free**.

Sometimes time goes by where I do not get to do any exercises, probably because my time is spent on physical exercise - so I have a small utility command line to give me a hint on what I was _possibly_ working on last time I did an exercise.

```bash
find . -depth 1 -type d -exec bash -c "cd '{}' && pwd && ls -rlt|tail -n 2" \;
```

In addition I have another small utility, which supports me setting up new exercises.

```bash
#!/usr/bin/env bash

git init && \
git add . && \
git commit -m "Initial exercise from Exercism.io downloaded and checked in local Git repo"

if [ -e "$1" ] && [ "$1" == "js" ]; then
    mkdir node_modules && \
    xattr -w com.dropbox.ignored 1 node_modules && \
    npm install
fi

if [ -e "$1" ] && [ "$1" == "go" ]; then
    PROJECT="$(basename "$PWD")"
    go mod init "example.com/jonasbn/$PROJECT" && \
    go mod tidy
fi
```

## Resources and References

- [Exercism]

[Exercism]: https://exercism.org
