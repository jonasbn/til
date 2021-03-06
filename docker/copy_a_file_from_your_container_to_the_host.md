# Copy a file from your container to the host operating system

It is possible to copy files from your **Docker** container onto your host operating system, this is quite useful for `cpanfile.snapshot` files etc. generated inside the container.

```bash
$ docker cp <containerId>:/file/path/within/container /host/path/target
```

Example:

```bash
$ docker cp myapp:/usr/src/app/cpanfile.snapshot ./cpanfile.snapshot
```

Alternatively you can use the `name`, both can be optained using `docker ps` or something like `ctop`:

```bash
$ docker ps --format "{{.Names}}"
```

## The other way around:

```bash
$ docker cp /host/path/target <containerId>:/file/path/within/container
```

Example:

```bash
$ docker cp myapp.conf myapp:/usr/src/app/myapp.conf
```

You can get the name of the container

## References

- [StackOverflow: "Copying files from Docker container to host"](https://stackoverflow.com/questions/22049212/copying-files-from-docker-container-to-host)
- [Docker.com: cp](https://docs.docker.com/engine/reference/commandline/cp/)
- [Docker.com: ps](https://docs.docker.com/engine/reference/commandline/ps/)
