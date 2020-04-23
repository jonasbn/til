# Use shell for layer

If you have a build that somehow fails you can with luck log in and inspect the file system of the last known working layer:

```bash
$ docker run --rm -it <id_last_working_layer> bash -il
```

This can also help to see what and where components are actually staged, by the docker build proces.

The last built layer it the youngest (topmost) in the list if your do:

```bash
$ docker images
REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
<none>                     <none>              87099e24ccce        2 minutes ago      125MB
```

The interesting part is the `IMAGE ID`, in this example: `87099e24ccce`

You can access containers using `bash`, do remember that your container should offer the shell specified.

For a already running container:

```bash
$ docker exec -it <containername> /bin/bash
```

If you want to run it yourself (a variation of the first tip)

```bash
$ docker run -it --entrypoint /bin/bash <imagename>
```

We can even combine the two, if we have an issue requiring two shells, we can do stuff, while inspecting stuff.

In our first terminal start a container from from a layer:

```bash
$ docker run --rm -it 87099e24ccce bash -il
```

In another terminal, get our `CONTAINER ID` (our first container was started from a layer)

```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
d3f02140326a        87099e24ccce        "bash -il"          9 seconds ago       Up 4 seconds                            eloquent_stonebraker
```

And we can read the `CONTAINER ID` as `d3f02140326a`

In our second terminal connect to the newly started container:

```bash
$ docker exec -it d3f02140326a /bin/bash
```

And you have to terminals on the same container, making things much easier, if you want to `tail` logs etc.

Do read the rest of the referenced **StackOverflow** entry, it holds a lot of good information.

## References

- [StackOverflow](http://stackoverflow.com/questions/26220957/how-can-i-inspect-the-file-system-of-a-failed-docker-build)
