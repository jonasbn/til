# Query Dash from the CLI

**Dash** the documentation browser for MacOS and iOS is a nifty tool.

It can integrate with a lot of tools like editors etc. but you can also integrate with the CLI (MacOS-only, not iOS).

This example is for **Bash**, where I have added the following function to my `.bash_profile`

```bash
function dash {
    open "dash://$1"
}
```

This lets me do:

```bash
$ dash «query»
```

Which open the **Dash** application and lists the results.

```bash
$ dash chmod
```

Lists all pages mentioning `chmod`

![Ruby result for chmod](dash-chmod.png)

You can even use the configurable search profiles to limit your results set, like so:

```bash
$ dash ruby:chmod
```

Lists all the **Ruby** pages mentioning `chmod`, well pages a part of the **Ruby** search profile, but you get the picture.

![Ruby result for chmod](dash-ruby-chmod.png)

## References

- [Dash Website](https://kapeli.com/dash)
