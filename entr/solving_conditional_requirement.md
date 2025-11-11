# Solving Conditional Requirement

`entr` cannot handle conditionals natively, but you can just use a shell script.

I did this quick test of Go.

```bash
#!/usr/bin/env bash

echo "Building in ${PWD}"

go build

if [ $? -ne 0 ]; then
  echo "Build failed ❌"
  exit 1
else
  echo "Build succeeded ✅"
  exit 0
fi
```

You can use it like this, `go_build` being the script above:

```shell
ls *.go | entr -cp go_build
```

For `entr` CLI flags used:

> -c      Clear the screen before invoking the utility specified on the command line.  Specify twice to erase the scrollback buffer.
>

> -p      Postpone the first execution of the utility until a file is modified.
>

## Resources and References

- [manpages.org: entr](https://manpages.org/entr)
