# Copy a file from your container to the host operating system

It is possible to copy files from your **Docker** container onto your host operating system, this is quite useful for `cpanfile.snapshot` files generated in the container etc.

```bash
$ docker cp <containerId>:/file/path/within/container /host/path/target
```

[Source: StackOverflow](https://stackoverflow.com/questions/22049212/docker-copy-file-from-container-to-host)
