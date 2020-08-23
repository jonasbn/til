# Resolve conflicting values in Debian package

When building packages you sometime run into issues, like the one below

```text
dpkg-gencontrol: error: source package has two conflicting values - foo and bar
```

One problem could be conflict between package name and the directory of the package.

```text
Why do you call the directory bar if the source package is foo?

Ideally, these three should match:

   - The name of the directory
   - The name of the source package in the control file
   - The name of the source package in the debian changelog
```

## References

- [Debian mailinglist](https://lists.debian.org/debian-mentors/1998/09/msg00052.html)
