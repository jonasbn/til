# Debugging Issues with Dynamic Libraries

If you are doing development on **OSX** in programming languages like **PHP**, **Python**, **Ruby** or **Perl** you often come in the situation of using dynamic libraries like **OpenSSL** og **XMLLib2**.

Due to changes in **OSX** this is not always as easy as it used to be, the operation system distribution has changed and the included tool-chain has changed.

In the continuous proces of keeping you tool-chain working and keeping up with changes from Apple you will run into different issues:

`dyld: Library not loaded … Reason: Image not loaded`

```bash
$ otool -L dynamic library.so dynamic library.dylib dynamic library.bundle
```

This will tell you version and libraries used.

```bash
$ otool -L local/lib/perl5/darwin-thread-multi-2level/auto/DBD/Oracle/Oracle.bundle
```

Outputs:

```
local/lib/perl5/darwin-thread-multi-2level/auto/DBD/Oracle/Oracle.bundle:
    libclntsh.dylib.11.1 (compatibility version 0.0.0, current version 0.0.0)
    /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1226.10.1)
```

## References

- [StackOverflow](http://stackoverflow.com/questions/17703510/dyld-library-not-loaded-reason-image-not-loaded)
