# Using OSX FileMerge as diff tool

You can with success specify the **FileMerge** application bundled with **Xcode** as diff tool on the command line, this does require that you use the command line wrapper tools specified on the FileMerge page.

TODO: clarify resources

```bash
% svn diff --diff-cmd fmdiff <some file>
```
