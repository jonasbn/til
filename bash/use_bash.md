# Use bash

## Find Substrings in Bash

https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/
https://www.baeldung.com/linux/string-contains-substring

## Quotes

https://www.grymoire.com/Unix/Quote.html

## error `conditional binary operator expected` in compound branch

https://unix.stackexchange.com/questions/435193/error-conditional-binary-operator-expected-in-compound-branch

## Split Strings

https://www.delftstack.com/howto/linux/split-string-in-bash/#using-ifs-to-split-a-string-in-bash

## Use Booleans

How can I declare and use Boolean variables in a shell script?

## Bash if, then, else

https://linuxize.com/post/bash-if-else-statement/

## Handle empty element in array

https://stackoverflow.com/questions/41893336/replace-empty-element-in-bash-array

## Syntax error: redirection unexpected

If you observe the following error

```text
Syntax error: redirection unexpected
```

It is due to your Bash script is being executing by a non-bash interpreter, e.g. `sh` or similar.

You might have specified the shebang line in your shell script file:

```bash
#!/bin/bash
```

But if it is executed as:

```shell
sh myscript.sh
```

The shebang line is overridden by the interpreter specified on the command line.

I observed this issue in a `Dockerfile`, where the entrypoint was specified as:

```Dockerfile
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
```

So when I introduced more Bash in my `entrypoint.sh` I was _doomed_. Changing the interpreter in the `Dockerfile` fixed the issue.

```Dockerfile
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
```

Answer lifted from [StackOverflow][UNEXPECTEDREDIRECTION] example lifted from [rojopolis/spellcheck-github-actions](https://github.com/rojopolis/spellcheck-github-actions/pull/90/commits/8ca7b25b91365f1bc1eb572cdd6b11e429d6edd4). Do also see the reference [Docker documentation][DOCKER]

[UNEXPECTEDREDIRECTION]: https://stackoverflow.com/questions/2462317/bash-syntax-error-redirection-unexpected
[DOCKER]: https://docs.docker.com/engine/reference/builder/#entrypoint