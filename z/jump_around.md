# Jumping Around Using z

Navigating a large file system can be cumbersome and often you go to the same directories, so you need `z`

Install `z`

> After a short learning phase, z will take you to the most 'frecent' directory that matches ALL of the regexes given on the command line, in order.

Now you can _jump around_ - if I want to go to my TIL repository, which I do quite often, I can just do:

```bash
z til
```

You can list your jumping points:

```text
-l     list only
```

And you can remove a directory:

```text
-x     remove the current directory from the datafile
```

## Resources and References

- [GitHub repository](https://github.com/rupa/z)
