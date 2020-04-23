# Use shell for layer

If you have a build that somehow fails you can with luck log in and inspect the file system of the last known working layer:

```bash
$ docker run --rm -it <id_last_working_layer> bash -il
```

This can also help to see what and where components are actually staged, by the docker build proces.

You can access containers using `bash`, do remember that your container should offer the shell specified.

For a already running container:

```bash
$ docker exec -it <containername> /bin/bash
```

If you want to run it yourself (a variation of the first tip)

```bash
$ docker run -it --entrypoint /bin/bash <imagename>
```

Do read the rest of the referenced **StackOverflow** entry, it holds a lot of good information.

## References

- [StackOverflow](http://stackoverflow.com/questions/26220957/how-can-i-inspect-the-file-system-of-a-failed-docker-build)
