# Pass flags to arguments to exec

If you want to have extended and verbose from a command like `prove` you could pass the verbose `-v` flag.

```bash
$ prove -v
```

If you however run this command under `carton exec`

```bash
$ carton exec prove -v 
```

You get the version string from `carton`.

```
carton v1.0.22
```

So you have to utilize the `--`  to terminate command-line argument passing for `carton` like so:

```bash
$ carton exec -- prove -v 
```

And your test output will be as verbose as you are used too.

[Source: Github](https://github.com/perl-carton/carton/issues/151)
