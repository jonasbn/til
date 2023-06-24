# Use cpanfile

The `cpanfile` is a file that contains a list of dependencies for a given Perl project. It is placed in the root and it can used by tools like `cpanm`, `carton`, `dzil` to install the dependencies.

| Description | Format | Example |
|---|---|---|
| Specified version | == _version_ | `== 0.03` |
| Specified version or greater | >= _version_ | `>= 0.03` |
| Specified version or below  | <= _version_  | `<= 0.03` |
| Greater than specified version | > _version_ | `> 0.03` |
| Below specified version | < _version_ | `< 0.03` |

## Resources and References

- [Dev.to: "cpanm - Installation of Perl Modules on User Directories 2022"](https://dev.to/yukikimoto/cpanm-installation-of-perl-modules-on-user-directories-2022-2f60) by Yuki Kimoto
