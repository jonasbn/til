# npm Version Specification

When you want to specify a version of a package to install, you can use the `npm` version specification. This allows you to specify a version range, a specific version, or a tag.

To specify acceptable version ranges up to `1.0.4`, use the following syntax:

Patch releases: `1.0` or `1.0.x` or `~1.0.4`
Minor releases: `1` or `1.x` or `^1.0.4`
Major releases: `*` or `x`

## npm version symbols

| Symbol   | Rule                                                           | Example                                   |
| -------- | -------------------------------------------------------------- | ----------------------------------------- |
| `^`      | accept updates to minor and patch releases only.               | `^0.13.0`: `0.13.1`, `0.14.0`             |
| `~`      | accept updates to patch releases only.                         | `~0.13.0`: `0.13.1` (not `0.14.0`)        |
| `>`      | accept updates to any version greater than the one specified.  | `>0.13.0`: `0.13.1`, `0.14.1`, `1.1.1`    |
| `<`      | accept updates to any version less than the one specified.     | `<3.0.0`: `2.0.0`, `2.9.0`                |
| `>=`     | accept any version greater than or equal to the one specified. | `>=3.0.0`: `3.0.0`, `4.1.0`               |
| `<=`     | accept any version less than or equal to the one specified.    | `<=3.0.0`: `3.0.0`, `4.1.0`               |
| `=`      | accept only the exact specified version.                       | `=3.0.0`: `3.0.0`, (not `3.0.1`)          |
| `-`      | accept a range of versions.                                    | `1.0.0 - 1.10.10`: `1.5.0` (not `1.11.0`) |
| `\|\|`   | accept a combination of versions.                              | `<2.1.0 \|\| >2.6.0`: `2.0.1`, `3.1.0`    |
| `x.x.x`  | accept only the specified version (no symbol).                 | `=3.0.0`: `3.0.0`, (not `3.0.1`)          |
| `latest` | always get latest version available.                           | -                                         |

## Resources and References

- [About semantic versioning](https://docs.npmjs.com/about-semantic-versioning)
- [Gist: npm version cheatsheet](https://gist.github.com/jonlabelle/706b28d50ba75bf81d40782aa3c84b3e)
