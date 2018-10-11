# Debugging a b0rken Docker build step

`docker` is great! - but if your build will not work it can be a pain.

This nifty little trick can be used to inspect an image where a layer is not playing nicely, it does you have access to some sort of shell in the container.

I am emulating this with the shell builtin command `false`, but it could any build step, where the integrity of your container is relying on build steps to succeed

```Dockerfile
# Dockerfile
FROM       alpine:latest

LABEL      maintainer="jonasbn"
RUN        echo "hello world" > /tmp/hello_world ; false
ENTRYPOINT ["cat", "/tmp/hello_world"]
```

Build it

```bash
$ docker build -t smelly_container .
```

So in order to get past the bad step you append: `; exit 0` to the _difficult_ `RUN` step and will build not matter the return value of the previous shell command

```Dockerfile
# Dockerfile
FROM       alpine:latest

LABEL      maintainer="jonasbn"
RUN        echo "hello world" > /tmp/hello_world ; false; exit 0
ENTRYPOINT ["cat", "/tmp/hello_world"]
```

Now you can inspect the container

```sh
$ docker run -it --entrypoint /bin/sh smelly_container
/ # cat /tmp/hello_world
hello world
```

And you can of course run it, your mileage might vary depending on the severity of the _b0rkedness_ of your _difficult_ build step, which we chose to ignore

```bash
$ docker run -it  smelly_container
hello world
```

## References

- [StackOverflow](https://stackoverflow.com/questions/30716937/dockerfile-build-possible-to-ignore-error)
