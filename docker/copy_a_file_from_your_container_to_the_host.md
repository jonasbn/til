# Copy a file from your container to the host operating system

It is possible to copy files from your **Docker** container onto your host operating system, this is quite useful for `cpanfile.snapshot` files etc. generated in the container

```bash
$ docker cp <containerId>:/file/path/within/container /host/path/target
```

Example:

```bash
$ docker cp myapp:/usr/src/app/cpanfile.snapshot ./cpanfile.snapshot
```

Or the other way around:

```bash
$ docker cp /host/path/target <containerId>:/file/path/within/container
```

Example:

```bash
$ docker cp myapp.conf myapp:/usr/src/app/myapp.conf
```

## References

- [StackOverflow](https://stackoverflow.com/questions/22049212/docker-copy-file-from-container-to-host)
