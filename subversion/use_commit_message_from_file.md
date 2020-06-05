# Use commit message from file

In the process of cleaning and migrating a large set of SVN repositories I would put a file in the root  of a repository to indicate the status of the repository. These files would either be called:

- MIGRATED
- DECOMMISSIONED
- DEPRECATED

Indicating the state of the code in the repository.

The file would contain a brief message, with an explanation and with a link to the new repository if migrated.

Often I would find myself echoing the same information into the log message, until it struck me that there had to be a better (faster) way of doing this and it appears that **SVN** supports this

```bash
$ svn add MIGRATED
$ svn commit --force-log -F MIGRATED MIGRATED
```

Please note the `--force-log`, which has to be used because the file is under revision control.

## References

- http://svnbook.red-bean.com/en/1.7/svn.ref.svn.c.commit.html
