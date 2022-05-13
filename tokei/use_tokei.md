# Use tokei

`tokei` is a _blazing fast_ source code line counter. It supports a lot of different languages.

If I did a count in my TIL repository it would output the following:

```bash
$ tokei
-------------------------------------------------------------------------------
 Language            Files        Lines         Code     Comments       Blanks
-------------------------------------------------------------------------------
 C                       4          142          109            1           32
 Dockerfile              1           16            8            4            4
 Go                      1           22           17            1            4
 JavaScript              1           40           31            0            9
 Markdown              303         7783         7783            0            0
 Plain Text              2          316          316            0            0
 YAML                    1            1            1            0            0
-------------------------------------------------------------------------------
 Total                 313         8320         8265            6           49
-------------------------------------------------------------------------------
```

And to underline the _blazing fast_ part:

```bash
$ time tokei
-------------------------------------------------------------------------------
 Language            Files        Lines         Code     Comments       Blanks
-------------------------------------------------------------------------------
 C                       4          142          109            1           32
 Dockerfile              1           16            8            4            4
 Go                      1           22           17            1            4
 JavaScript              1           40           31            0            9
 Markdown              303         7802         7802            0            0
 Plain Text              2          316          316            0            0
 YAML                    1            1            1            0            0
-------------------------------------------------------------------------------
 Total                 313         8339         8284            6           49
-------------------------------------------------------------------------------

real    0m0.014s
user    0m0.011s
sys     0m0.021s
```

## Resources and References

- [GitHub: tokei](https://github.com/XAMPPRocky/tokei)
