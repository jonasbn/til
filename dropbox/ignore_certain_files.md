# Ignore Certain Files

Not long ago I decided to move all of my Exercism exercises onto Dropbox for easier access.

I have have been making progress in the JavaScript, Rust and Go tracks.

Is synchronized everything **but** it took a _very long time_.

Today I fell over [this Tweet](https://twitter.com/brianwisti/status/1538042211165782018?s=20&t=tN0fZY2jJwPlvlJpuOUlMQ) from [@brianwisti](https://twitter.com/brianwisti)

> First remove node_modules. ＊Then＊ `cp -Rv` the project folder.

It struck me that I had all of the `node_modules` directory structures, which was completely unnecessary, since I just wanted the code.

Luckily I found out via StackOverflow that I was not the only one with [that problem](- https://stackoverflow.com/questions/69655522/how-to-ignore-node-modules-recursively-in-dropbox-on-a-mac) and it was actually possible to possible to ignore files in Dropbox using extended attributes.

So in order to ignore the `node_modules` I need to do the following:

```shell
xattr -w com.dropbox.ignored 1 node_modules
```

I can then list the attributes:

```shell
xattr -l node_modules
com.dropbox.ignored: 1
```

I can remove the ignore flag again:

```shell
xattr -d com.dropbox.ignored node_modules
```

And no attributes are set or at least not my `com.dropbox.ignored` extended attribute

```shell
xattr -l node_modules
```

## Resources and References

- [Dropbox: "How to set a Dropbox file or folder to be ignored"](https://help.dropbox.com/files-folders/restore-delete/ignored-files)
- [Dropbox: "What extended attributes does Dropbox support?"](https://help.dropbox.com/installs-integrations/sync-uploads/extended-attributes)
