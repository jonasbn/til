# Working with local Packages

use `replace` in `go.mod`

You can even use relative paths, which is pretty _nifty_ when you want to patch something or create a PR.

```text
module example.com/mymodule

go 1.14

require (
    example.com/othermodule v1.2.3
    example.com/thismodule v1.2.3
    example.com/thatmodule v1.2.3
)

replace example.com/thatmodule => ../thatmodule
exclude example.com/thismodule v1.3.0
```

## Resources and References

- [gomod-ref](https://go.dev/doc/modules/gomod-ref)
